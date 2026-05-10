import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しねんのずつき in Japanese.
    ///
    /// The localized name of this move is `"Zen Headbutt"` in English and
    /// `"しねんのずつき"` in Japanese.
    ///
    /// The move's raw value is `"zen-headbutt"`.
    static let zenHeadbutt = ZenHeadbuttMove.move
}

enum ZenHeadbuttMove {
    static let move = PokemonMove(rawValue: "zen-headbutt")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
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
            .english: "Zen Headbutt",
            .japanese: "しねんのずつき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let zenHeadbutt = ZenHeadbuttMove.definition
}
