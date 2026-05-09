import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しんそく in Japanese.
    ///
    /// The localized name of this move is `"Extreme Speed"` in English and
    /// `"しんそく"` in Japanese.
    ///
    /// The move's raw value is `"extreme-speed"`.
    static let extremeSpeed = ExtremeSpeedMove.move
}

enum ExtremeSpeedMove {
    static let move = PokemonMove(rawValue: "extreme-speed")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 2,
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
            .english: "Extreme Speed",
            .japanese: "しんそく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let extremeSpeed = ExtremeSpeedMove.definition
}
