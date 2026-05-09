import Foundation

/// A definition for a Pokemon move.
///
/// A move definition contains the move identifier, localized names,
/// introductory generation, and parameter history.
public struct PokemonMoveDefinition: Hashable, Sendable {
    /// The move this definition describes.
    public let move: PokemonMove

    /// The generation in which the move was introduced.
    public let introducedIn: PokemonGeneration

    /// The move's parameter history.
    public let parameterHistory: [PokemonMove.ParameterSet]

    /// The latest battle parameters for the move.
    public var parameters: PokemonMove.Parameters {
        guard let parameters = parameterHistory.last?.parameters else {
            preconditionFailure("PokemonMoveDefinition requires at least one parameter set.")
        }

        return parameters
    }

    /// The localized names for the move.
    public let localizedNames: [Locale.LanguageCode: String]

    /// Creates a definition with the specified move data.
    public init(
        move: PokemonMove,
        introducedIn: PokemonGeneration,
        parameterHistory: [PokemonMove.ParameterSet],
        localizedNames: [Locale.LanguageCode: String]
    ) {
        self.move = move
        self.introducedIn = introducedIn
        self.parameterHistory = parameterHistory
        self.localizedNames = localizedNames
    }

    /// Creates a definition with a single parameter set.
    public init(
        move: PokemonMove,
        introducedIn: PokemonGeneration,
        parameters: PokemonMove.Parameters,
        localizedNames: [Locale.LanguageCode: String]
    ) {
        self.init(
            move: move,
            introducedIn: introducedIn,
            parameterHistory: [
                .init(
                    versionGroups: Set(PokemonVersionGroup.allCases),
                    parameters: parameters
                ),
            ],
            localizedNames: localizedNames
        )
    }

    /// Returns the move's name in the specified locale.
    ///
    /// If a name isn't available for the locale, this method returns the
    /// English name. If no English name is available, it returns the move's raw
    /// value.
    public func name(locale: Locale) -> String {
        localizedNames[locale.language.languageCode ?? .english]
            ?? localizedNames[.english]
            ?? move.rawValue
    }

    /// Returns the move's parameters in the specified version group.
    public func parameters(in versionGroup: PokemonVersionGroup) -> PokemonMove.Parameters? {
        parameterHistory.last { $0.versionGroups.contains(versionGroup) }?.parameters
    }

    /// Returns the move's parameters in the specified generation.
    ///
    /// This method throws an error when the generation contains multiple
    /// matching parameter values.
    public func parameters(in generation: PokemonGeneration) throws -> PokemonMove.Parameters {
        let versionGroups = Set(PokemonVersionGroup.all(in: generation))
        let matches = parameterHistory.filter {
            !$0.versionGroups.isDisjoint(with: versionGroups)
        }

        guard !matches.isEmpty else {
            throw PokemonMoveParameterLookupError.unavailableGeneration(generation)
        }

        let uniqueParameters = Set(matches.map(\.parameters))

        guard uniqueParameters.count == 1, let parameters = uniqueParameters.first else {
            let matchingVersionGroups = matches.reduce(into: Set<PokemonVersionGroup>()) {
                $0.formUnion($1.versionGroups.intersection(versionGroups))
            }

            throw PokemonMoveParameterLookupError.ambiguousParameters(
                generation,
                versionGroups: matchingVersionGroups
            )
        }

        return parameters
    }

    func matchesName(_ value: String, locale: Locale) -> Bool {
        let input = value.trimmingCharacters(in: .whitespacesAndNewlines)

        return name(locale: locale).localizedStandardCompare(input) == .orderedSame
            || move.rawValue.localizedStandardCompare(input) == .orderedSame
    }
}

/// A namespace for standard move definitions.
public enum PokemonMoveDefinitions {
    /// All standard move definitions.
    public static let all = gen01 + gen02 + gen03 + gen08

    /// The standard move definitions introduced in Generation I.
    public static let gen01: [PokemonMoveDefinition] = [
        pound,
        karateChop,
        doubleSlap,
        cometPunch,
        megaPunch,
        payDay,
        firePunch,
        icePunch,
        thunderPunch,
        scratch,
        viceGrip,
        guillotine,
        razorWind,
        swordsDance,
        cut,
        gust,
        wingAttack,
        whirlwind,
        fly,
        bind,
        slam,
        vineWhip,
        stomp,
        doubleKick,
        megaKick,
        jumpKick,
        rollingKick,
        sandAttack,
        headbutt,
        hornAttack,
        furyAttack,
        hornDrill,
        tackle,
        bodySlam,
        wrap,
        takeDown,
        thrash,
        doubleEdge,
        tailWhip,
        poisonSting,
        twineedle,
        pinMissile,
        leer,
        bite,
        growl,
        roar,
        sing,
        supersonic,
        sonicBoom,
        disable,
        acid,
        ember,
        flamethrower,
        mist,
        waterGun,
        hydroPump,
        surf,
        iceBeam,
        blizzard,
        psybeam,
        bubbleBeam,
        auroraBeam,
        hyperBeam,
        peck,
        drillPeck,
        submission,
        lowKick,
        counter,
        seismicToss,
        strength,
        absorb,
        megaDrain,
        leechSeed,
        growth,
        razorLeaf,
        solarBeam,
        poisonPowder,
        stunSpore,
        sleepPowder,
        petalDance,
        stringShot,
        dragonRage,
        fireSpin,
        thunderShock,
        thunderbolt,
        thunderWave,
        thunder,
        rockThrow,
        earthquake,
        fissure,
        dig,
        toxic,
        confusion,
        psychic,
        hypnosis,
        meditate,
        agility,
        quickAttack,
        rage,
        teleport,
        nightShade,
        mimic,
        screech,
        doubleTeam,
        recover,
        harden,
        minimize,
        smokescreen,
        confuseRay,
        withdraw,
        defenseCurl,
        barrier,
        lightScreen,
        haze,
        reflect,
        focusEnergy,
        bide,
        metronome,
        mirrorMove,
        selfDestruct,
        eggBomb,
        lick,
        smog,
        sludge,
        boneClub,
        fireBlast,
        waterfall,
        clamp,
        swift,
        skullBash,
        spikeCannon,
        constrict,
        amnesia,
        kinesis,
        softBoiled,
        highJumpKick,
        glare,
        dreamEater,
        poisonGas,
        barrage,
        leechLife,
        lovelyKiss,
        skyAttack,
        transform,
        bubble,
        dizzyPunch,
        spore,
        flash,
        psywave,
        splash,
        acidArmor,
        crabhammer,
        explosion,
        furySwipes,
        bonemerang,
        rest,
        rockSlide,
        hyperFang,
        sharpen,
        conversion,
        triAttack,
        superFang,
        slash,
        substitute,
        struggle,
    ]

    /// The standard move definitions introduced in Generation II.
    public static let gen02: [PokemonMoveDefinition] = [
        sketch,
        tripleKick,
        thief,
        spiderWeb,
        mindReader,
        nightmare,
        flameWheel,
        snore,
        curse,
        flail,
        conversion2,
        aeroblast,
        cottonSpore,
        reversal,
        spite,
        powderSnow,
        protect,
        machPunch,
        scaryFace,
        feintAttack,
        sweetKiss,
        bellyDrum,
        sludgeBomb,
        mudSlap,
        octazooka,
        spikes,
        zapCannon,
        foresight,
        destinyBond,
        perishSong,
        icyWind,
        detect,
        boneRush,
        lockOn,
        outrage,
        sandstorm,
        gigaDrain,
        endure,
        charm,
        rollout,
        falseSwipe,
        swagger,
        milkDrink,
        spark,
        furyCutter,
        steelWing,
        meanLook,
        attract,
        sleepTalk,
        healBell,
        returnMove,
        present,
        frustration,
        safeguard,
        painSplit,
        sacredFire,
        magnitude,
        dynamicPunch,
        megahorn,
        dragonBreath,
        batonPass,
        encore,
        pursuit,
        rapidSpin,
        sweetScent,
        ironTail,
        metalClaw,
        vitalThrow,
        morningSun,
        synthesis,
        moonlight,
        hiddenPower,
        crossChop,
        twister,
        rainDance,
        sunnyDay,
        crunch,
        mirrorCoat,
        psychUp,
        extremeSpeed,
        ancientPower,
        shadowBall,
        futureSight,
        rockSmash,
        whirlpool,
        beatUp,
    ]

    /// The standard move definitions introduced in Generation III.
    public static let gen03: [PokemonMoveDefinition] = [
        fakeOut,
        uproar,
        stockpile,
        spitUp,
        swallow,
        heatWave,
        hail,
        torment,
        flatter,
        willOWisp,
        memento,
        facade,
        focusPunch,
        smellingSalts,
        followMe,
        naturePower,
        charge,
        taunt,
        helpingHand,
        trick,
        rolePlay,
        wish,
        assist,
        ingrain,
        superpower,
        magicCoat,
        recycle,
        revenge,
        brickBreak,
        yawn,
        knockOff,
        endeavor,
        eruption,
        skillSwap,
        imprison,
        refresh,
        grudge,
        snatch,
        secretPower,
        dive,
        armThrust,
        camouflage,
        tailGlow,
        lusterPurge,
        mistBall,
        featherDance,
        teeterDance,
        blazeKick,
        mudSport,
        iceBall,
        needleArm,
        slackOff,
        hyperVoice,
        poisonFang,
        crushClaw,
        blastBurn,
        hydroCannon,
        meteorMash,
        astonish,
        weatherBall,
        aromatherapy,
        fakeTears,
        airCutter,
        overheat,
        odorSleuth,
        rockTomb,
        silverWind,
        metalSound,
        grassWhistle,
        tickle,
        cosmicPower,
        waterSpout,
        signalBeam,
        shadowPunch,
        extrasensory,
        skyUppercut,
        sandTomb,
        sheerCold,
        muddyWater,
        bulletSeed,
        aerialAce,
        icicleSpear,
        ironDefense,
        block,
        howl,
        dragonClaw,
        frenzyPlant,
        bulkUp,
        bounce,
        mudShot,
        poisonTail,
        covet,
        voltTackle,
        magicalLeaf,
        waterSport,
        calmMind,
        leafBlade,
        dragonDance,
        rockBlast,
        shockWave,
        waterPulse,
        doomDesire,
        psychoBoost,
    ]

    /// The standard move definitions introduced in Generation VIII.
    public static let gen08: [PokemonMoveDefinition] = [
        tripleAxel,
    ]

    /// Returns the standard definition for the specified move.
    public static func definition(for move: PokemonMove) -> PokemonMoveDefinition? {
        all.first { $0.move == move }
    }
}
