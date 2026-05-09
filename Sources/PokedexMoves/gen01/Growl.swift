import Foundation

public extension PokemonMove {
    /// The Pokemon move known as なきごえ in Japanese.
    ///
    /// The localized name of this move is `"Growl"` in English and
    /// `"なきごえ"` in Japanese.
    ///
    /// The move's raw value is `"growl"`.
    static let growl = Growl.move
}

enum Growl {
    static let move = PokemonMove(rawValue: "growl")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
        power: .none,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .allOpposingPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Growl",
            .japanese: "なきごえ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let growl = Growl.definition
}

