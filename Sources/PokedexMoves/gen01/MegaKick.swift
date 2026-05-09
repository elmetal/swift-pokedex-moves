import Foundation

public extension PokemonMove {
    /// The Pokemon move known as メガトンキック in Japanese.
    ///
    /// The localized name of this move is `"Mega Kick"` in English and
    /// `"メガトンキック"` in Japanese.
    ///
    /// The move's raw value is `"mega-kick"`.
    static let megaKick = MegaKickMove.move
}

enum MegaKickMove {
    static let move = PokemonMove(rawValue: "mega-kick")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(75),
        priority: 0,
        category: .physical,
        target: .target
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
            .english: "Mega Kick",
            .japanese: "メガトンキック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let megaKick = MegaKickMove.definition
}
