import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ほろびのうた in Japanese.
    ///
    /// The localized name of this move is `"Perish Song"` in English and
    /// `"ほろびのうた"` in Japanese.
    ///
    /// The move's raw value is `"perish-song"`.
    static let perishSong = PerishSongMove.move
}

enum PerishSongMove {
    static let move = PokemonMove(rawValue: "perish-song")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .allPokemon
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
            .english: "Perish Song",
            .japanese: "ほろびのうた",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let perishSong = PerishSongMove.definition
}
