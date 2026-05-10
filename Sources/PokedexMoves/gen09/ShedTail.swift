import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しっぽきり in Japanese.
    ///
    /// The localized name of this move is `"Shed Tail"` in English and
    /// `"しっぽきり"` in Japanese.
    ///
    /// The move's raw value is `"shed-tail"`.
    static let shedTail = ShedTailMove.move
}

enum ShedTailMove {
    static let move = PokemonMove(rawValue: "shed-tail")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ix,
        parameterHistory: [
            .init(
                versionGroups: [.scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Shed Tail",
            .japanese: "しっぽきり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shedTail = ShedTailMove.definition
}
