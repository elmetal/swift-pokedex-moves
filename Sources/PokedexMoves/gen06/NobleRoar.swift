import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おたけび in Japanese.
    ///
    /// The localized name of this move is `"Noble Roar"` in English and
    /// `"おたけび"` in Japanese.
    ///
    /// The move's raw value is `"noble-roar"`.
    static let nobleRoar = NobleRoarMove.move
}

enum NobleRoarMove {
    static let move = PokemonMove(rawValue: "noble-roar")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Noble Roar",
            .japanese: "おたけび",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let nobleRoar = NobleRoarMove.definition
}
