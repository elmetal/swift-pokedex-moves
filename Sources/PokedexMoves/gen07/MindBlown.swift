import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ビックリヘッド in Japanese.
    ///
    /// The localized name of this move is `"Mind Blown"` in English and
    /// `"ビックリヘッド"` in Japanese.
    ///
    /// The move's raw value is `"mind-blown"`.
    static let mindBlown = MindBlownMove.move
}

enum MindBlownMove {
    static let move = PokemonMove(rawValue: "mind-blown")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOtherPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Mind Blown",
            .japanese: "ビックリヘッド",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mindBlown = MindBlownMove.definition
}
