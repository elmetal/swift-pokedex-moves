import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シェルブレード in Japanese.
    ///
    /// The localized name of this move is `"Razor Shell"` in English and
    /// `"シェルブレード"` in Japanese.
    ///
    /// The move's raw value is `"razor-shell"`.
    static let razorShell = RazorShellMove.move
}

enum RazorShellMove {
    static let move = PokemonMove(rawValue: "razor-shell")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(95),
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
            .english: "Razor Shell",
            .japanese: "シェルブレード",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let razorShell = RazorShellMove.definition
}
