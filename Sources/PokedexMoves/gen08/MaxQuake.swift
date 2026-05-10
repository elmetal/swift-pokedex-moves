import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイアース in Japanese.
    ///
    /// The localized name of this move is `"Max Quake"` in English and
    /// `"ダイアース"` in Japanese.
    ///
    /// The move's raw value is `"max-quake"`.
    static let maxQuake = MaxQuakeMove.move
}

enum MaxQuakeMove {
    static let move = PokemonMove(rawValue: "max-quake")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .physical,
        target: .target
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
            .english: "Max Quake",
            .japanese: "ダイアース",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxQuake = MaxQuakeMove.definition
}
