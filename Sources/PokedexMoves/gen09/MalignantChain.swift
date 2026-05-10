import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じゃどくのくさり in Japanese.
    ///
    /// The localized name of this move is `"Malignant Chain"` in English and
    /// `"じゃどくのくさり"` in Japanese.
    ///
    /// The move's raw value is `"malignant-chain"`.
    static let malignantChain = MalignantChainMove.move
}

enum MalignantChainMove {
    static let move = PokemonMove(rawValue: "malignant-chain")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
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
            .english: "Malignant Chain",
            .japanese: "じゃどくのくさり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let malignantChain = MalignantChainMove.definition
}
