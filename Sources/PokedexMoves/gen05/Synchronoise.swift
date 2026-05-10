import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シンクロノイズ in Japanese.
    ///
    /// The localized name of this move is `"Synchronoise"` in English and
    /// `"シンクロノイズ"` in Japanese.
    ///
    /// The move's raw value is `"synchronoise"`.
    static let synchronoise = SynchronoiseMove.move
}

enum SynchronoiseMove {
    static let move = PokemonMove(rawValue: "synchronoise")
    static let parameters1 = PokemonMove.Parameters(
        type: .psychic,
        pp: 15,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOtherPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOtherPokemon
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
            .english: "Synchronoise",
            .japanese: "シンクロノイズ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let synchronoise = SynchronoiseMove.definition
}
