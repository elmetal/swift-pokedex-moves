import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はっぱカッター in Japanese.
    ///
    /// The localized name of this move is `"Razor Leaf"` in English and
    /// `"はっぱカッター"` in Japanese.
    ///
    /// The move's raw value is `"razor-leaf"`.
    static let razorLeaf = RazorLeafMove.move
}

enum RazorLeafMove {
    static let move = PokemonMove(rawValue: "razor-leaf")
    static let parameters1 = PokemonMove.Parameters(
        type: .grass,
        pp: 25,
        power: .fixed(55),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .grass,
        pp: 25,
        power: .fixed(55),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
        target: .allOpposingPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: [
                    .redBlue,
                    .yellow,
                    .goldSilver,
                    .crystal,
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                ],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Razor Leaf",
            .japanese: "はっぱカッター",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let razorLeaf = RazorLeafMove.definition
}
