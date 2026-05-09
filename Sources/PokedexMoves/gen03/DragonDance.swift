import Foundation

public extension PokemonMove {
    /// The Pokemon move known as りゅうのまい in Japanese.
    ///
    /// The localized name of this move is `"Dragon Dance"` in English and
    /// `"りゅうのまい"` in Japanese.
    ///
    /// The move's raw value is `"dragon-dance"`.
    static let dragonDance = DragonDanceMove.move
}

enum DragonDanceMove {
    static let move = PokemonMove(rawValue: "dragon-dance")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 20,
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
            .english: "Dragon Dance",
            .japanese: "りゅうのまい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dragonDance = DragonDanceMove.definition
}
