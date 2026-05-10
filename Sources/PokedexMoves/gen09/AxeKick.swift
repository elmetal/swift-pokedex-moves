import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かかとおとし in Japanese.
    ///
    /// The localized name of this move is `"Axe Kick"` in English and
    /// `"かかとおとし"` in Japanese.
    ///
    /// The move's raw value is `"axe-kick"`.
    static let axeKick = AxeKickMove.move
}

enum AxeKickMove {
    static let move = PokemonMove(rawValue: "axe-kick")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Axe Kick",
            .japanese: "かかとおとし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let axeKick = AxeKickMove.definition
}
