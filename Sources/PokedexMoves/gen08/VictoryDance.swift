import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しょうりのまい in Japanese.
    ///
    /// The localized name of this move is `"Victory Dance"` in English and
    /// `"しょうりのまい"` in Japanese.
    ///
    /// The move's raw value is `"victory-dance"`.
    static let victoryDance = VictoryDanceMove.move
}

enum VictoryDanceMove {
    static let move = PokemonMove(rawValue: "victory-dance")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Victory Dance",
            .japanese: "しょうりのまい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let victoryDance = VictoryDanceMove.definition
}
