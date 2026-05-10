import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ブルームシャインエクストラ in Japanese.
    ///
    /// The localized name of this move is `"Bloom Doom"` in English and
    /// `"ブルームシャインエクストラ"` in Japanese.
    ///
    /// The move's raw value is `"bloom-doom--special"`.
    static let bloomDoomSpecial = BloomDoomSpecialMove.move
}

enum BloomDoomSpecialMove {
    static let move = PokemonMove(rawValue: "bloom-doom--special")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
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
            .english: "Bloom Doom",
            .japanese: "ブルームシャインエクストラ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bloomDoomSpecial = BloomDoomSpecialMove.definition
}
