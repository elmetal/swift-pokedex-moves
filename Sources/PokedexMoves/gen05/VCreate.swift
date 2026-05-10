import Foundation

public extension PokemonMove {
    /// The Pokemon move known as Ｖジェネレート in Japanese.
    ///
    /// The localized name of this move is `"V-create"` in English and
    /// `"Ｖジェネレート"` in Japanese.
    ///
    /// The move's raw value is `"v-create"`.
    static let vCreate = VCreateMove.move
}

enum VCreateMove {
    static let move = PokemonMove(rawValue: "v-create")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(180),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
        target: .target
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
            .english: "V-create",
            .japanese: "Ｖジェネレート",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let vCreate = VCreateMove.definition
}
