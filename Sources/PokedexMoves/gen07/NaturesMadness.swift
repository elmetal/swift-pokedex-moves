import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しぜんのいかり in Japanese.
    ///
    /// The localized name of this move is `"Nature’s Madness"` in English and
    /// `"しぜんのいかり"` in Japanese.
    ///
    /// The move's raw value is `"natures-madness"`.
    static let naturesMadness = NaturesMadnessMove.move
}

enum NaturesMadnessMove {
    static let move = PokemonMove(rawValue: "natures-madness")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 10,
        power: .varies,
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
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
            .english: "Nature’s Madness",
            .japanese: "しぜんのいかり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let naturesMadness = NaturesMadnessMove.definition
}
