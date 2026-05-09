import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ねこだまし in Japanese.
    ///
    /// The localized name of this move is `"Fake Out"` in English and
    /// `"ねこだまし"` in Japanese.
    ///
    /// The move's raw value is `"fake-out"`.
    static let fakeOut = FakeOutMove.move
}

enum FakeOutMove {
    static let move = PokemonMove(rawValue: "fake-out")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 3,
        category: .physical,
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
            .english: "Fake Out",
            .japanese: "ねこだまし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fakeOut = FakeOutMove.definition
}
