import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つのドリル in Japanese.
    ///
    /// The localized name of this move is `"Horn Drill"` in English and
    /// `"つのドリル"` in Japanese.
    ///
    /// The move's raw value is `"horn-drill"`.
    static let hornDrill = HornDrillMove.move
}

enum HornDrillMove {
    static let move = PokemonMove(rawValue: "horn-drill")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .varies,
        hits: .one,
        accuracy: .percent(30),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Horn Drill",
            .japanese: "つのドリル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hornDrill = HornDrillMove.definition
}
