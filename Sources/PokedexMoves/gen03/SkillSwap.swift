import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スキルスワップ in Japanese.
    ///
    /// The localized name of this move is `"Skill Swap"` in English and
    /// `"スキルスワップ"` in Japanese.
    ///
    /// The move's raw value is `"skill-swap"`.
    static let skillSwap = SkillSwapMove.move
}

enum SkillSwapMove {
    static let move = PokemonMove(rawValue: "skill-swap")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Skill Swap",
            .japanese: "スキルスワップ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let skillSwap = SkillSwapMove.definition
}
