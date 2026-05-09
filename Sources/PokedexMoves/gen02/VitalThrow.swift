import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あてみなげ in Japanese.
    ///
    /// The localized name of this move is `"Vital Throw"` in English and
    /// `"あてみなげ"` in Japanese.
    ///
    /// The move's raw value is `"vital-throw"`.
    static let vitalThrow = VitalThrowMove.move
}

enum VitalThrowMove {
    static let move = PokemonMove(rawValue: "vital-throw")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(70),
        hits: .one,
        accuracy: .notApplicable,
        priority: -1,
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
            .english: "Vital Throw",
            .japanese: "あてみなげ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let vitalThrow = VitalThrowMove.definition
}
