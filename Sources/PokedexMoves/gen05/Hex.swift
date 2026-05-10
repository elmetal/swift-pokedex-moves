import Foundation

public extension PokemonMove {
    /// The Pokemon move known as たたりめ in Japanese.
    ///
    /// The localized name of this move is `"Hex"` in English and
    /// `"たたりめ"` in Japanese.
    ///
    /// The move's raw value is `"hex"`.
    static let hex = HexMove.move
}

enum HexMove {
    static let move = PokemonMove(rawValue: "hex")
    static let parameters1 = PokemonMove.Parameters(
        type: .ghost,
        pp: 10,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ghost,
        pp: 10,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [.blackWhite, .black2White2],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Hex",
            .japanese: "たたりめ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hex = HexMove.definition
}
