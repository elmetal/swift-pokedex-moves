import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハートスタンプ in Japanese.
    ///
    /// The localized name of this move is `"Heart Stamp"` in English and
    /// `"ハートスタンプ"` in Japanese.
    ///
    /// The move's raw value is `"heart-stamp"`.
    static let heartStamp = HeartStampMove.move
}

enum HeartStampMove {
    static let move = PokemonMove(rawValue: "heart-stamp")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 25,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Heart Stamp",
            .japanese: "ハートスタンプ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let heartStamp = HeartStampMove.definition
}
