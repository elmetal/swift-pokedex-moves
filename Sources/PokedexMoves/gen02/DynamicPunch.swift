import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ばくれつパンチ in Japanese.
    ///
    /// The localized name of this move is `"Dynamic Punch"` in English and
    /// `"ばくれつパンチ"` in Japanese.
    ///
    /// The move's raw value is `"dynamic-punch"`.
    static let dynamicPunch = DynamicPunchMove.move
}

enum DynamicPunchMove {
    static let move = PokemonMove(rawValue: "dynamic-punch")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(50),
        priority: 0,
        category: .physical,
        target: .target
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
            .english: "Dynamic Punch",
            .japanese: "ばくれつパンチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dynamicPunch = DynamicPunchMove.definition
}
