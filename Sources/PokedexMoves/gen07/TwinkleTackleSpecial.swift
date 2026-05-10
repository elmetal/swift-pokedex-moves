import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ラブリースターインパクト in Japanese.
    ///
    /// The localized name of this move is `"Twinkle Tackle"` in English and
    /// `"ラブリースターインパクト"` in Japanese.
    ///
    /// The move's raw value is `"twinkle-tackle--special"`.
    static let twinkleTackleSpecial = TwinkleTackleSpecialMove.move
}

enum TwinkleTackleSpecialMove {
    static let move = PokemonMove(rawValue: "twinkle-tackle--special")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 1,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
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
    static let twinkleTackleSpecial = TwinkleTackleSpecialMove.definition
}
