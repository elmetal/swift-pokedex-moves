import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ピヨピヨパンチ in Japanese.
    ///
    /// The localized name of this move is `"Dizzy Punch"` in English and
    /// `"ピヨピヨパンチ"` in Japanese.
    ///
    /// The move's raw value is `"dizzy-punch"`.
    static let dizzyPunch = DizzyPunchMove.move
}

enum DizzyPunchMove {
    static let move = PokemonMove(rawValue: "dizzy-punch")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Dizzy Punch",
            .japanese: "ピヨピヨパンチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dizzyPunch = DizzyPunchMove.definition
}
