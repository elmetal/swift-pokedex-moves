import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ムーンライトブラスター in Japanese.
    ///
    /// The localized name of this move is `"Menacing Moonraze Maelstrom"` in English and
    /// `"ムーンライトブラスター"` in Japanese.
    ///
    /// The move's raw value is `"menacing-moonraze-maelstrom"`.
    static let menacingMoonrazeMaelstrom = MenacingMoonrazeMaelstromMove.move
}

enum MenacingMoonrazeMaelstromMove {
    static let move = PokemonMove(rawValue: "menacing-moonraze-maelstrom")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 1,
        power: .fixed(200),
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
            .english: "Menacing Moonraze Maelstrom",
            .japanese: "ムーンライトブラスター",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let menacingMoonrazeMaelstrom = MenacingMoonrazeMaelstromMove.definition
}
