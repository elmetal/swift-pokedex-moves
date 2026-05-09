import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おきみやげ in Japanese.
    ///
    /// The localized name of this move is `"Memento"` in English and
    /// `"おきみやげ"` in Japanese.
    ///
    /// The move's raw value is `"memento"`.
    static let memento = MementoMove.move
}

enum MementoMove {
    static let move = PokemonMove(rawValue: "memento")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Memento",
            .japanese: "おきみやげ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let memento = MementoMove.definition
}
