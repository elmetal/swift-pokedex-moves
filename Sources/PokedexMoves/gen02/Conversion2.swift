import Foundation

public extension PokemonMove {
    /// The Pokemon move known as テクスチャー２ in Japanese.
    ///
    /// The localized name of this move is `"Conversion 2"` in English and
    /// `"テクスチャー２"` in Japanese.
    ///
    /// The move's raw value is `"conversion-2"`.
    static let conversion2 = Conversion2Move.move
}

enum Conversion2Move {
    static let move = PokemonMove(rawValue: "conversion-2")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
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
            .english: "Conversion 2",
            .japanese: "テクスチャー２",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let conversion2 = Conversion2Move.definition
}
