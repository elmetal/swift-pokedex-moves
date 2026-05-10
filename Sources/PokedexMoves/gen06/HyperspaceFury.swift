import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いじげんラッシュ in Japanese.
    ///
    /// The localized name of this move is `"Hyperspace Fury"` in English and
    /// `"いじげんラッシュ"` in Japanese.
    ///
    /// The move's raw value is `"hyperspace-fury"`.
    static let hyperspaceFury = HyperspaceFuryMove.move
}

enum HyperspaceFuryMove {
    static let move = PokemonMove(rawValue: "hyperspace-fury")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .physical,
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
            .english: "Hyperspace Fury",
            .japanese: "いじげんラッシュ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hyperspaceFury = HyperspaceFuryMove.definition
}
