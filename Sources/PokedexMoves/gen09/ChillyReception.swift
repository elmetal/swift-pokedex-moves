import Foundation

public extension PokemonMove {
    /// The Pokemon move known as さむいギャグ in Japanese.
    ///
    /// The localized name of this move is `"Chilly Reception"` in English and
    /// `"さむいギャグ"` in Japanese.
    ///
    /// The move's raw value is `"chilly-reception"`.
    static let chillyReception = ChillyReceptionMove.move
}

enum ChillyReceptionMove {
    static let move = PokemonMove(rawValue: "chilly-reception")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .battlefield
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
            .english: "Chilly Reception",
            .japanese: "さむいギャグ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let chillyReception = ChillyReceptionMove.definition
}
