import Foundation

public extension PokemonMove {
    /// The Pokemon move known as てっぺき in Japanese.
    ///
    /// The localized name of this move is `"Iron Defense"` in English and
    /// `"てっぺき"` in Japanese.
    ///
    /// The move's raw value is `"iron-defense"`.
    static let ironDefense = IronDefenseMove.move
}

enum IronDefenseMove {
    static let move = PokemonMove(rawValue: "iron-defense")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Iron Defense",
            .japanese: "てっぺき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let ironDefense = IronDefenseMove.definition
}
