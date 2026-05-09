import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いたみわけ in Japanese.
    ///
    /// The localized name of this move is `"Pain Split"` in English and
    /// `"いたみわけ"` in Japanese.
    ///
    /// The move's raw value is `"pain-split"`.
    static let painSplit = PainSplitMove.move
}

enum PainSplitMove {
    static let move = PokemonMove(rawValue: "pain-split")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
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
            .english: "Pain Split",
            .japanese: "いたみわけ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let painSplit = PainSplitMove.definition
}
