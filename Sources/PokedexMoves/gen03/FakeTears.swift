import Foundation

public extension PokemonMove {
    /// The Pokemon move known as うそなき in Japanese.
    ///
    /// The localized name of this move is `"Fake Tears"` in English and
    /// `"うそなき"` in Japanese.
    ///
    /// The move's raw value is `"fake-tears"`.
    static let fakeTears = FakeTearsMove.move
}

enum FakeTearsMove {
    static let move = PokemonMove(rawValue: "fake-tears")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 20,
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
            .english: "Fake Tears",
            .japanese: "うそなき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fakeTears = FakeTearsMove.definition
}
