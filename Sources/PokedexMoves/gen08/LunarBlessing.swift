import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みかづきのいのり in Japanese.
    ///
    /// The localized name of this move is `"Lunar Blessing"` in English and
    /// `"みかづきのいのり"` in Japanese.
    ///
    /// The move's raw value is `"lunar-blessing"`.
    static let lunarBlessing = LunarBlessingMove.move
}

enum LunarBlessingMove {
    static let move = PokemonMove(rawValue: "lunar-blessing")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .allies
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Lunar Blessing",
            .japanese: "みかづきのいのり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lunarBlessing = LunarBlessingMove.definition
}
