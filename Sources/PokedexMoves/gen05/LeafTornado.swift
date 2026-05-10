import Foundation

public extension PokemonMove {
    /// The Pokemon move known as グラスミキサー in Japanese.
    ///
    /// The localized name of this move is `"Leaf Tornado"` in English and
    /// `"グラスミキサー"` in Japanese.
    ///
    /// The move's raw value is `"leaf-tornado"`.
    static let leafTornado = LeafTornadoMove.move
}

enum LeafTornadoMove {
    static let move = PokemonMove(rawValue: "leaf-tornado")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
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
            .english: "Leaf Tornado",
            .japanese: "グラスミキサー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let leafTornado = LeafTornadoMove.definition
}
