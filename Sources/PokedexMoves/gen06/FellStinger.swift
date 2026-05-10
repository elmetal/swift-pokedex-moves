import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とどめばり in Japanese.
    ///
    /// The localized name of this move is `"Fell Stinger"` in English and
    /// `"とどめばり"` in Japanese.
    ///
    /// The move's raw value is `"fell-stinger"`.
    static let fellStinger = FellStingerMove.move
}

enum FellStingerMove {
    static let move = PokemonMove(rawValue: "fell-stinger")
    static let parameters1 = PokemonMove.Parameters(
        type: .bug,
        pp: 25,
        power: .fixed(30),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .bug,
        pp: 25,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [.xY, .omegaRubyAlphaSapphire],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
                    .sunMoon,
                    .ultraSunUltraMoon,
                    .letsGoPikachuLetsGoEevee,
                    .swordShield,
                    .brilliantDiamondShiningPearl,
                    .legendsArceus,
                    .scarletViolet,
                    .champions,
                ],
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Fell Stinger",
            .japanese: "とどめばり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fellStinger = FellStingerMove.definition
}
