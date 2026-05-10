import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サイコブレイド  in Japanese.
    ///
    /// The localized name of this move is `"Psyblade"` in English and
    /// `"サイコブレイド "` in Japanese.
    ///
    /// The move's raw value is `"psyblade"`.
    static let psyblade = PsybladeMove.move
}

enum PsybladeMove {
    static let move = PokemonMove(rawValue: "psyblade")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Psyblade",
            .japanese: "サイコブレイド ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let psyblade = PsybladeMove.definition
}
