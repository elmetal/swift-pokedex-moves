import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アイアンヘッド in Japanese.
    ///
    /// The localized name of this move is `"Iron Head"` in English and
    /// `"アイアンヘッド"` in Japanese.
    ///
    /// The move's raw value is `"iron-head"`.
    static let ironHead = IronHeadMove.move
}

enum IronHeadMove {
    static let move = PokemonMove(rawValue: "iron-head")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Iron Head",
            .japanese: "アイアンヘッド",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let ironHead = IronHeadMove.definition
}
