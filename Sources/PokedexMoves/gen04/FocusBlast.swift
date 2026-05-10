import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きあいだま in Japanese.
    ///
    /// The localized name of this move is `"Focus Blast"` in English and
    /// `"きあいだま"` in Japanese.
    ///
    /// The move's raw value is `"focus-blast"`.
    static let focusBlast = FocusBlastMove.move
}

enum FocusBlastMove {
    static let move = PokemonMove(rawValue: "focus-blast")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .special,
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
            .english: "Focus Blast",
            .japanese: "きあいだま",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let focusBlast = FocusBlastMove.definition
}
