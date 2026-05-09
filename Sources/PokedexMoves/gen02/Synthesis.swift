import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こうごうせい in Japanese.
    ///
    /// The localized name of this move is `"Synthesis"` in English and
    /// `"こうごうせい"` in Japanese.
    ///
    /// The move's raw value is `"synthesis"`.
    static let synthesis = SynthesisMove.move
}

enum SynthesisMove {
    static let move = PokemonMove(rawValue: "synthesis")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Synthesis",
            .japanese: "こうごうせい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let synthesis = SynthesisMove.definition
}
