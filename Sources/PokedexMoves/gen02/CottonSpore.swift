import Foundation

public extension PokemonMove {
    /// The Pokemon move known as わたほうし in Japanese.
    ///
    /// The localized name of this move is `"Cotton Spore"` in English and
    /// `"わたほうし"` in Japanese.
    ///
    /// The move's raw value is `"cotton-spore"`.
    static let cottonSpore = CottonSporeMove.move
}

enum CottonSporeMove {
    static let move = PokemonMove(rawValue: "cotton-spore")
    static let parameters1 = PokemonMove.Parameters(
        type: .grass,
        pp: 40,
        power: .none,
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .status,
        target: .allOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .grass,
        pp: 40,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .allOpposingPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .goldSilver,
                    .crystal,
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                ],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Cotton Spore",
            .japanese: "わたほうし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let cottonSpore = CottonSporeMove.definition
}
