import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ギアチェンジ in Japanese.
    ///
    /// The localized name of this move is `"Shift Gear"` in English and
    /// `"ギアチェンジ"` in Japanese.
    ///
    /// The move's raw value is `"shift-gear"`.
    static let shiftGear = ShiftGearMove.move
}

enum ShiftGearMove {
    static let move = PokemonMove(rawValue: "shift-gear")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [
                    .blackWhite,
                    .black2White2,
                    .xY,
                    .omegaRubyAlphaSapphire,
                    .sunMoon,
                    .ultraSunUltraMoon,
                    .letsGoPikachuLetsGoEevee,
                    .swordShield,
                    .brilliantDiamondShiningPearl,
                    .legendsArceus,
                    .scarletViolet,
                    .champions,
                ],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Shift Gear",
            .japanese: "ギアチェンジ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shiftGear = ShiftGearMove.definition
}
