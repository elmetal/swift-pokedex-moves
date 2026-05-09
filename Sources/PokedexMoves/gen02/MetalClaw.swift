import Foundation

public extension PokemonMove {
    /// The Pokemon move known as メタルクロー in Japanese.
    ///
    /// The localized name of this move is `"Metal Claw"` in English and
    /// `"メタルクロー"` in Japanese.
    ///
    /// The move's raw value is `"metal-claw"`.
    static let metalClaw = MetalClawMove.move
}

enum MetalClawMove {
    static let move = PokemonMove(rawValue: "metal-claw")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 35,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(95),
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
            .english: "Metal Claw",
            .japanese: "メタルクロー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let metalClaw = MetalClawMove.definition
}
