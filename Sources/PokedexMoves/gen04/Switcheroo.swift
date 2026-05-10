import Foundation

public extension PokemonMove {
    /// The Pokemon move known as すりかえ in Japanese.
    ///
    /// The localized name of this move is `"Switcheroo"` in English and
    /// `"すりかえ"` in Japanese.
    ///
    /// The move's raw value is `"switcheroo"`.
    static let switcheroo = SwitcherooMove.move
}

enum SwitcherooMove {
    static let move = PokemonMove(rawValue: "switcheroo")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
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
            .english: "Switcheroo",
            .japanese: "すりかえ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let switcheroo = SwitcherooMove.definition
}
