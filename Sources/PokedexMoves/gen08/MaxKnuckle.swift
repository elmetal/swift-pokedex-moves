import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイナックル in Japanese.
    ///
    /// The localized name of this move is `"Max Knuckle"` in English and
    /// `"ダイナックル"` in Japanese.
    ///
    /// The move's raw value is `"max-knuckle"`.
    static let maxKnuckle = MaxKnuckleMove.move
}

enum MaxKnuckleMove {
    static let move = PokemonMove(rawValue: "max-knuckle")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
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
            .english: "Max Knuckle",
            .japanese: "ダイナックル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxKnuckle = MaxKnuckleMove.definition
}
