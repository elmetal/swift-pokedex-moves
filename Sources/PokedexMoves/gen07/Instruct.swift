import Foundation

public extension PokemonMove {
    /// The Pokemon move known as さいはい in Japanese.
    ///
    /// The localized name of this move is `"Instruct"` in English and
    /// `"さいはい"` in Japanese.
    ///
    /// The move's raw value is `"instruct"`.
    static let instruct = InstructMove.move
}

enum InstructMove {
    static let move = PokemonMove(rawValue: "instruct")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
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
            .english: "Instruct",
            .japanese: "さいはい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let instruct = InstructMove.definition
}
