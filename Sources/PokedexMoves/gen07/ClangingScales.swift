import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スケイルノイズ in Japanese.
    ///
    /// The localized name of this move is `"Clanging Scales"` in English and
    /// `"スケイルノイズ"` in Japanese.
    ///
    /// The move's raw value is `"clanging-scales"`.
    static let clangingScales = ClangingScalesMove.move
}

enum ClangingScalesMove {
    static let move = PokemonMove(rawValue: "clanging-scales")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 5,
        power: .fixed(110),
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
            .english: "Clanging Scales",
            .japanese: "スケイルノイズ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let clangingScales = ClangingScalesMove.definition
}
