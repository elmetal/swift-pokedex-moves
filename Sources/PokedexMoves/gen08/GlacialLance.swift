import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ブリザードランス in Japanese.
    ///
    /// The localized name of this move is `"Glacial Lance"` in English and
    /// `"ブリザードランス"` in Japanese.
    ///
    /// The move's raw value is `"glacial-lance"`.
    static let glacialLance = GlacialLanceMove.move
}

enum GlacialLanceMove {
    static let move = PokemonMove(rawValue: "glacial-lance")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOpposingPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Glacial Lance",
            .japanese: "ブリザードランス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let glacialLance = GlacialLanceMove.definition
}
