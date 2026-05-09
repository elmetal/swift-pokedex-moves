import Foundation

public extension PokemonMove {
    /// The Pokemon move known as やつあたり in Japanese.
    ///
    /// The localized name of this move is `"Frustration"` in English and
    /// `"やつあたり"` in Japanese.
    ///
    /// The move's raw value is `"frustration"`.
    static let frustration = FrustrationMove.move
}

enum FrustrationMove {
    static let move = PokemonMove(rawValue: "frustration")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Frustration",
            .japanese: "やつあたり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let frustration = FrustrationMove.definition
}
