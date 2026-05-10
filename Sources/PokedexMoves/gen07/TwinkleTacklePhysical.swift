import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ラブリースターインパクト in Japanese.
    ///
    /// The localized name of this move is `"Twinkle Tackle"` in English and
    /// `"ラブリースターインパクト"` in Japanese.
    ///
    /// The move's raw value is `"twinkle-tackle--physical"`.
    static let twinkleTacklePhysical = TwinkleTacklePhysicalMove.move
}

enum TwinkleTacklePhysicalMove {
    static let move = PokemonMove(rawValue: "twinkle-tackle--physical")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 1,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Twinkle Tackle",
            .japanese: "ラブリースターインパクト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let twinkleTacklePhysical = TwinkleTacklePhysicalMove.definition
}
