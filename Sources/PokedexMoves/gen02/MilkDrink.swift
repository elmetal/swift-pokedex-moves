import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ミルクのみ in Japanese.
    ///
    /// The localized name of this move is `"Milk Drink"` in English and
    /// `"ミルクのみ"` in Japanese.
    ///
    /// The move's raw value is `"milk-drink"`.
    static let milkDrink = MilkDrinkMove.move
}

enum MilkDrinkMove {
    static let move = PokemonMove(rawValue: "milk-drink")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Milk Drink",
            .japanese: "ミルクのみ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let milkDrink = MilkDrinkMove.definition
}
