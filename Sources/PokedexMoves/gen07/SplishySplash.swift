import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ざぶざぶサーフ in Japanese.
    ///
    /// The localized name of this move is `"Splishy Splash"` in English and
    /// `"ざぶざぶサーフ"` in Japanese.
    ///
    /// The move's raw value is `"splishy-splash"`.
    static let splishySplash = SplishySplashMove.move
}

enum SplishySplashMove {
    static let move = PokemonMove(rawValue: "splishy-splash")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [.letsGoPikachuLetsGoEevee, .swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Splishy Splash",
            .japanese: "ざぶざぶサーフ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let splishySplash = SplishySplashMove.definition
}
