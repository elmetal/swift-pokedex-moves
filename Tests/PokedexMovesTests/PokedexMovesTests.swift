import Foundation
import Testing
@testable import PokedexMoves

@Test func definesTackleMove() {
    #expect(PokemonMove.tackle.rawValue == "tackle")
}

@Test func includesTackleMoveDefinition() {
    #expect(PokemonMoveDefinitions.all.count == 919)
    #expect(PokemonMoveDefinitions.gen01.count == 165)
    #expect(PokemonMoveDefinitions.gen02.count == 86)
    #expect(PokemonMoveDefinitions.gen03.count == 103)
    #expect(PokemonMoveDefinitions.gen04.count == 113)
    #expect(PokemonMoveDefinitions.gen05.count == 92)
    #expect(PokemonMoveDefinitions.gen06.count == 62)
    #expect(PokemonMoveDefinitions.gen07.count == 121)
    #expect(PokemonMoveDefinitions.gen08.count == 108)
    #expect(PokemonMoveDefinitions.gen09.count == 69)
    #expect(PokemonMoveDefinitions.gen01.first?.move == .pound)
    #expect(PokemonMoveDefinitions.tackle.move == .tackle)
    #expect(PokemonMoveDefinitions.tackle.introducedIn == .i)
    #expect(PokemonMoveDefinitions.tackle.parameters.type == .normal)
    #expect(PokemonMoveDefinitions.tackle.parameters.pp == 35)
    #expect(PokemonMoveDefinitions.tackle.parameters.power == .fixed(40))
    #expect(PokemonMoveDefinitions.tackle.parameters.hits == .one)
    #expect(PokemonMoveDefinitions.tackle.parameters.accuracy == .percent(100))
    #expect(PokemonMoveDefinitions.tackle.parameters.priority == 0)
    #expect(PokemonMoveDefinitions.tackle.parameters.category == .physical)
    #expect(PokemonMoveDefinitions.tackle.parameters.target == .target)
    #expect(PokemonMoveDefinitions.tackle.parameterHistory.count == 2)
    #expect(PokemonMoveDefinitions.definition(for: .tackle) == PokemonMoveDefinitions.tackle)
    #expect(PokemonMove.tackle.standardDefinition == PokemonMoveDefinitions.tackle)
    #expect(PokemonMove.tackle.introducedIn == .i)
    #expect(PokemonMove.tackle.type == .normal)
    #expect(PokemonMove.tackle.pp == 35)
    #expect(PokemonMove.tackle.power == .fixed(40))
    #expect(PokemonMove.tackle.hits == .one)
    #expect(PokemonMove.tackle.accuracy == .percent(100))
    #expect(PokemonMove.tackle.priority == 0)
    #expect(PokemonMove.tackle.category == .physical)
    #expect(PokemonMove.tackle.target == .target)
    #expect(PokemonMove.tackle.parameters == PokemonMoveDefinitions.tackle.parameters)
}

@Test func includesMultiHitMoveDefinitions() {
    #expect(PokemonMove.doubleKick.type == .fighting)
    #expect(PokemonMove.doubleKick.pp == 30)
    #expect(PokemonMove.doubleKick.power == .fixed(30))
    #expect(PokemonMove.doubleKick.hits == .fixed(2))
    #expect(PokemonMove.doubleKick.accuracy == .percent(100))
    #expect(PokemonMove.doubleKick.category == .physical)

    #expect(PokemonMove.bulletSeed.type == .grass)
    #expect(PokemonMove.bulletSeed.pp == 30)
    #expect(PokemonMove.bulletSeed.power == .fixed(25))
    #expect(PokemonMove.bulletSeed.hits == .range(2...5))
    #expect(PokemonMove.bulletSeed.accuracy == .percent(100))
    #expect(PokemonMove.bulletSeed.category == .physical)
    #expect(PokemonMove.bulletSeed.parameters(in: .rubySapphire)?.power == .fixed(10))
    #expect(PokemonMove.bulletSeed.parameters(in: .blackWhite)?.power == .fixed(25))

    #expect(PokemonMove.tripleAxel.type == .ice)
    #expect(PokemonMove.tripleAxel.pp == 10)
    #expect(PokemonMove.tripleAxel.power == .perHit([20, 40, 60]))
    #expect(PokemonMove.tripleAxel.hits == .fixed(3))
    #expect(PokemonMove.tripleAxel.accuracy == .percent(90))
    #expect(PokemonMove.tripleAxel.category == .physical)
}

@Test func includesGenerationIMoveDefinitions() {
    #expect(PokemonMove.growl.pp == 40)
    #expect(PokemonMove.growl.power == .none)
    #expect(PokemonMove.growl.hits == .one)
    #expect(PokemonMove.growl.accuracy == .percent(100))
    #expect(PokemonMove.growl.category == .status)
    #expect(PokemonMove.growl.target == .allOpposingPokemon)

    #expect(PokemonMove.swift.pp == 20)
    #expect(PokemonMove.swift.power == .fixed(60))
    #expect(PokemonMove.swift.hits == .one)
    #expect(PokemonMove.swift.accuracy == .alwaysHits)
    #expect(PokemonMove.swift.category == .special)
    #expect(PokemonMove.swift.parameters(in: .redBlue)?.category == .physical)
    #expect(PokemonMove.swift.target == .allOpposingPokemon)

    #expect(PokemonMove.hypnosis.pp == 20)
    #expect(PokemonMove.hypnosis.power == .none)
    #expect(PokemonMove.hypnosis.hits == .one)
    #expect(PokemonMove.hypnosis.accuracy == .percent(60))
    #expect(PokemonMove.hypnosis.category == .status)
    #expect(PokemonMove.hypnosis.target == .target)
}

@Test func includesGenerationIIIMoveDefinitions() {
    #expect(PokemonMove.aerialAce.pp == 20)
    #expect(PokemonMove.aerialAce.power == .fixed(60))
    #expect(PokemonMove.aerialAce.hits == .one)
    #expect(PokemonMove.aerialAce.accuracy == .alwaysHits)
    #expect(PokemonMove.aerialAce.priority == 0)
    #expect(PokemonMove.aerialAce.category == .physical)
    #expect(PokemonMove.aerialAce.target == .target)

    #expect(PokemonMove.fakeOut.pp == 10)
    #expect(PokemonMove.fakeOut.power == .fixed(40))
    #expect(PokemonMove.fakeOut.hits == .one)
    #expect(PokemonMove.fakeOut.accuracy == .percent(100))
    #expect(PokemonMove.fakeOut.priority == 3)
    #expect(PokemonMove.fakeOut.category == .physical)
    #expect(PokemonMove.fakeOut.target == .target)
}

@Test func includesGenerationIVMoveDefinitions() {
    #expect(PokemonMove.auraSphere.pp == 20)
    #expect(PokemonMove.auraSphere.power == .fixed(80))
    #expect(PokemonMove.auraSphere.hits == .one)
    #expect(PokemonMove.auraSphere.accuracy == .alwaysHits)
    #expect(PokemonMove.auraSphere.category == .special)
    #expect(PokemonMove.auraSphere.parameters(in: .diamondPearl)?.power == .fixed(90))
    #expect(PokemonMove.auraSphere.parameters(in: .xY)?.power == .fixed(80))

    #expect(PokemonMove.darkVoid.accuracy == .percent(50))
    #expect(PokemonMove.darkVoid.parameters(in: .diamondPearl)?.accuracy == .percent(80))
    #expect(PokemonMove.darkVoid.parameters(in: .sunMoon)?.accuracy == .percent(50))

    #expect(PokemonMove.doubleHit.power == .fixed(35))
    #expect(PokemonMove.doubleHit.hits == .fixed(2))
    #expect(PokemonMove.doubleHit.category == .physical)
}

@Test func includesGenerationVMoveDefinitions() {
    #expect(PokemonMove.heavySlam.pp == 10)
    #expect(PokemonMove.heavySlam.power == .varies)
    #expect(PokemonMove.heavySlam.hits == .one)
    #expect(PokemonMove.heavySlam.accuracy == .percent(100))
    #expect(PokemonMove.heavySlam.category == .physical)

    #expect(PokemonMove.clearSmog.power == .fixed(50))
    #expect(PokemonMove.clearSmog.accuracy == .alwaysHits)
    #expect(PokemonMove.clearSmog.category == .special)

    #expect(PokemonMove.gearGrind.power == .fixed(50))
    #expect(PokemonMove.gearGrind.hits == .fixed(2))
    #expect(PokemonMove.gearGrind.accuracy == .percent(85))
    #expect(PokemonMove.gearGrind.category == .physical)
}

@Test func includesGenerationVIMoveDefinitions() {
    #expect(PokemonMove.disarmingVoice.type == .fairy)
    #expect(PokemonMove.disarmingVoice.power == .fixed(40))
    #expect(PokemonMove.disarmingVoice.accuracy == .alwaysHits)
    #expect(PokemonMove.disarmingVoice.target == .allOpposingPokemon)
    #expect(PokemonMove.disarmingVoice.category == .special)

    #expect(PokemonMove.flyingPress.power == .fixed(100))
    #expect(PokemonMove.flyingPress.parameters(in: .xY)?.power == .fixed(80))
    #expect(PokemonMove.flyingPress.parameters(in: .sunMoon)?.power == .fixed(100))

    #expect(PokemonMove.waterShuriken.hits == .range(2...5))
    #expect(PokemonMove.waterShuriken.priority == 1)
    #expect(PokemonMove.waterShuriken.category == .special)
    #expect(PokemonMove.waterShuriken.parameters(in: .xY)?.category == .physical)
}

@Test func includesGenerationVIIMoveDefinitions() {
    #expect(PokemonMove.breakneckBlitzPhysical.power == .varies)
    #expect(PokemonMove.breakneckBlitzPhysical.accuracy == .alwaysHits)
    #expect(PokemonMove.breakneckBlitzPhysical.category == .physical)

    #expect(PokemonMove.tenMillionVoltThunderbolt.power == .fixed(195))
    #expect(PokemonMove.tenMillionVoltThunderbolt.accuracy == .alwaysHits)
    #expect(PokemonMove.tenMillionVoltThunderbolt.category == .special)

    #expect(PokemonMove.zippyZap.power == .fixed(80))
    #expect(PokemonMove.zippyZap.pp == 10)
    #expect(PokemonMove.zippyZap.parameters(in: .letsGoPikachuLetsGoEevee)?.power == .fixed(50))
    #expect(PokemonMove.zippyZap.parameters(in: .letsGoPikachuLetsGoEevee)?.pp == 15)

    #expect(PokemonMove.doubleIronBash.power == .fixed(60))
    #expect(PokemonMove.doubleIronBash.hits == .fixed(2))
}

@Test func includesGenerationVIIIMoveDefinitions() {
    #expect(PokemonMove.maxFlare.power == .varies)
    #expect(PokemonMove.maxFlare.accuracy == .alwaysHits)
    #expect(PokemonMove.maxFlare.target == .target)

    #expect(PokemonMove.tripleAxel.power == .perHit([20, 40, 60]))
    #expect(PokemonMove.tripleAxel.hits == .fixed(3))

    #expect(PokemonMove.surgingStrikes.power == .fixed(25))
    #expect(PokemonMove.surgingStrikes.hits == .fixed(3))
    #expect(PokemonMove.surgingStrikes.category == .physical)

    #expect(PokemonMove.takeHeart.power == .none)
    #expect(PokemonMove.takeHeart.accuracy == .notApplicable)
    #expect(PokemonMove.takeHeart.target == .allies)
}

@Test func includesGenerationIXMoveDefinitions() {
    #expect(PokemonMove.revivalBlessing.power == .none)
    #expect(PokemonMove.revivalBlessing.accuracy == .notApplicable)
    #expect(PokemonMove.revivalBlessing.target == .faintedPokemon)

    #expect(PokemonMove.populationBomb.power == .fixed(20))
    #expect(PokemonMove.populationBomb.hits == .range(1...10))
    #expect(PokemonMove.populationBomb.accuracy == .percent(90))

    #expect(PokemonMove.flowerTrick.power == .fixed(70))
    #expect(PokemonMove.flowerTrick.accuracy == .alwaysHits)

    #expect(PokemonMove.tachyonCutter.power == .fixed(50))
    #expect(PokemonMove.tachyonCutter.hits == .fixed(2))
    #expect(PokemonMove.tachyonCutter.accuracy == .alwaysHits)

    #expect(PokemonMove.lastRespects.power == .varies)
}

@Test func looksUpTackleParametersByVersionGroupAndGeneration() throws {
    #expect(PokemonMove.tackle.parameters(in: .redBlue)?.power == .fixed(50))
    #expect(PokemonMove.tackle.parameters(in: .scarletViolet) == PokemonMove.tackle.parameters)
    #expect(PokemonMove.tackle.parameters(in: PokemonVersionGroup.champions) == PokemonMove.tackle.parameters)
    #expect(try PokemonMove.tackle.parameters(in: .i).power == .fixed(50))
    #expect(try PokemonMove.tackle.parameters(in: .ix) == PokemonMove.tackle.parameters)
    #expect(try PokemonMove.tackle.parameters(in: .champions) == PokemonMove.tackle.parameters)
    #expect(PokemonGeneration.latest == .champions)
    #expect(PokemonVersionGroup.latest == .champions)
    #expect(PokemonVersionGroup.champions.generation == .champions)
}

@Test func includesChampionsMoveParameterChanges() throws {
    #expect(PokemonMove.protect.parameters(in: .scarletViolet)?.pp == 10)
    #expect(PokemonMove.protect.parameters(in: .champions)?.pp == 5)
    #expect(PokemonMove.protect.pp == 5)
    #expect(try PokemonMove.protect.parameters(in: .champions).pp == 5)

    #expect(PokemonMove.suckerPunch.parameters(in: .champions)?.pp == 5)
    #expect(PokemonMove.thunderclap.parameters(in: .champions)?.pp == 5)
}

@Test func reportsAmbiguousGenerationParameters() {
    #expect(PokemonMove.hypnosis.parameters(in: .diamondPearl)?.accuracy == .percent(70))
    #expect(PokemonMove.hypnosis.parameters(in: .platinum)?.accuracy == .percent(60))
    #expect(throws: PokemonMoveParameterLookupError.ambiguousParameters(
        .iv,
        versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver]
    )) {
        try PokemonMove.hypnosis.parameters(in: .iv)
    }
}

@Test func modelsMovePowerAndAccuracy() {
    #expect(PokemonMove.Power.fixed(40) == .fixed(40))
    #expect(PokemonMove.Power.perHit([20, 40, 60]) == .perHit([20, 40, 60]))
    #expect(PokemonMove.Power.varies != .none)
    #expect(PokemonMove.Accuracy.percent(100) == .percent(100))
    #expect(PokemonMove.Accuracy.alwaysHits != .notApplicable)
}

@Test func modelsMoveHits() {
    #expect(PokemonMove.Hits.one == .one)
    #expect(PokemonMove.Hits.fixed(2) == .fixed(2))
    #expect(PokemonMove.Hits.range(2...5) == .range(2...5))
    #expect(PokemonMove.Hits.varies != .one)
}

@Test func includesMoveTargets() {
    let targets: [PokemonMove.Target] = [
        .move,
        .target,
        .ally,
        .usersSide,
        .userOrAlly,
        .opposingSide,
        .user,
        .opposingPokemon,
        .randomOpposingPokemon,
        .allOtherPokemon,
        .allOpposingPokemon,
        .battlefield,
        .userAndAllies,
        .allPokemon,
        .allies,
        .faintedPokemon,
    ]

    #expect(targets.count == 16)
}

@Test func namesTackleMoveDefinition() {
    #expect(PokemonMoveDefinitions.tackle.name(locale: Locale(languageCode: .english)) == "Tackle")
    #expect(PokemonMoveDefinitions.tackle.name(locale: Locale(languageCode: .japanese)) == "たいあたり")
    #expect(PokemonMoveDefinitions.growl.name(locale: Locale(languageCode: .english)) == "Growl")
    #expect(PokemonMoveDefinitions.growl.name(locale: Locale(languageCode: .japanese)) == "なきごえ")
    #expect(PokemonMoveDefinitions.doubleKick.name(locale: Locale(languageCode: .english)) == "Double Kick")
    #expect(PokemonMoveDefinitions.doubleKick.name(locale: Locale(languageCode: .japanese)) == "にどげり")
    #expect(PokemonMoveDefinitions.hypnosis.name(locale: Locale(languageCode: .english)) == "Hypnosis")
    #expect(PokemonMoveDefinitions.hypnosis.name(locale: Locale(languageCode: .japanese)) == "さいみんじゅつ")
    #expect(PokemonMoveDefinitions.swift.name(locale: Locale(languageCode: .english)) == "Swift")
    #expect(PokemonMoveDefinitions.swift.name(locale: Locale(languageCode: .japanese)) == "スピードスター")
    #expect(PokemonMoveDefinitions.bulletSeed.name(locale: Locale(languageCode: .english)) == "Bullet Seed")
    #expect(PokemonMoveDefinitions.bulletSeed.name(locale: Locale(languageCode: .japanese)) == "タネマシンガン")
    #expect(PokemonMoveDefinitions.tripleAxel.name(locale: Locale(languageCode: .english)) == "Triple Axel")
    #expect(PokemonMoveDefinitions.tripleAxel.name(locale: Locale(languageCode: .japanese)) == "トリプルアクセル")
}

@Test func formatsTackleMoveName() {
    #expect(PokemonMove.tackle.formatted(locale: Locale(languageCode: .english)) == "Tackle")
    #expect(PokemonMove.tackle.formatted(locale: Locale(languageCode: .japanese)) == "たいあたり")
    #expect(PokemonMove.swift.formatted(locale: Locale(languageCode: .japanese)) == "スピードスター")
}

@Test func parsesTackleMoveName() throws {
    let english = PokemonMove.ParseStrategy(locale: Locale(languageCode: .english))
    let japanese = PokemonMove.ParseStrategy(locale: Locale(languageCode: .japanese))

    #expect(try english.parse("Tackle") == .tackle)
    #expect(try english.parse("tackle") == .tackle)
    #expect(try english.parse("Swift") == .swift)
    #expect(try english.parse("hypnosis") == .hypnosis)
    #expect(try english.parse("Double Kick") == .doubleKick)
    #expect(try english.parse("bullet-seed") == .bulletSeed)
    #expect(try english.parse("Triple Axel") == .tripleAxel)
    #expect(try japanese.parse("たいあたり") == .tackle)
    #expect(try japanese.parse("なきごえ") == .growl)
    #expect(try japanese.parse("にどげり") == .doubleKick)
    #expect(try japanese.parse("さいみんじゅつ") == .hypnosis)
    #expect(try japanese.parse("スピードスター") == .swift)
    #expect(try japanese.parse("タネマシンガン") == .bulletSeed)
    #expect(try japanese.parse("トリプルアクセル") == .tripleAxel)
}

@Test func formatsMoveCategories() {
    let english = Locale(languageCode: .english)
    let japanese = Locale(languageCode: .japanese)

    #expect(PokemonMove.Category.physical.formatted(locale: english) == "Physical")
    #expect(PokemonMove.Category.special.formatted(locale: english) == "Special")
    #expect(PokemonMove.Category.status.formatted(locale: english) == "Status")
    #expect(PokemonMove.Category.physical.formatted(locale: japanese) == "物理")
    #expect(PokemonMove.Category.special.formatted(locale: japanese) == "特殊")
    #expect(PokemonMove.Category.status.formatted(locale: japanese) == "変化")
}
