import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダークホール in Japanese.
    ///
    /// The localized name of this move is `"Dark Void"` in English and
    /// `"ダークホール"` in Japanese.
    ///
    /// The move's raw value is `"dark-void"`.
    static let darkVoid = DarkVoidMove.move
}

enum DarkVoidMove {
    static let move = PokemonMove(rawValue: "dark-void")
    static let parameters1 = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(80),
        priority: 0,
        category: .status,
        target: .allOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(50),
        priority: 0,
        category: .status,
        target: .allOpposingPokemon
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
                ],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Dark Void",
            .japanese: "ダークホール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let darkVoid = DarkVoidMove.definition
}
