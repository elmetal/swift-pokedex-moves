import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ねっさのだいち in Japanese.
    ///
    /// The localized name of this move is `"Scorching Sands"` in English and
    /// `"ねっさのだいち"` in Japanese.
    ///
    /// The move's raw value is `"scorching-sands"`.
    static let scorchingSands = ScorchingSandsMove.move
}

enum ScorchingSandsMove {
    static let move = PokemonMove(rawValue: "scorching-sands")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Scorching Sands",
            .japanese: "ねっさのだいち",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let scorchingSands = ScorchingSandsMove.definition
}
