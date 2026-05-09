import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フラフラダンス in Japanese.
    ///
    /// The localized name of this move is `"Teeter Dance"` in English and
    /// `"フラフラダンス"` in Japanese.
    ///
    /// The move's raw value is `"teeter-dance"`.
    static let teeterDance = TeeterDanceMove.move
}

enum TeeterDanceMove {
    static let move = PokemonMove(rawValue: "teeter-dance")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .allOtherPokemon
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
            .english: "Teeter Dance",
            .japanese: "フラフラダンス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let teeterDance = TeeterDanceMove.definition
}
