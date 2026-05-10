import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ブルームシャインエクストラ in Japanese.
    ///
    /// The localized name of this move is `"Bloom Doom"` in English and
    /// `"ブルームシャインエクストラ"` in Japanese.
    ///
    /// The move's raw value is `"bloom-doom--physical"`.
    static let bloomDoomPhysical = BloomDoomPhysicalMove.move
}

enum BloomDoomPhysicalMove {
    static let move = PokemonMove(rawValue: "bloom-doom--physical")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
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
            .english: "Bloom Doom",
            .japanese: "ブルームシャインエクストラ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bloomDoomPhysical = BloomDoomPhysicalMove.definition
}
