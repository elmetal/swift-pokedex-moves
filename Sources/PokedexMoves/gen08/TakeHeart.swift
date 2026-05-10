import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ブレイブチャージ in Japanese.
    ///
    /// The localized name of this move is `"Take Heart"` in English and
    /// `"ブレイブチャージ"` in Japanese.
    ///
    /// The move's raw value is `"take-heart"`.
    static let takeHeart = TakeHeartMove.move
}

enum TakeHeartMove {
    static let move = PokemonMove(rawValue: "take-heart")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .allies
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Take Heart",
            .japanese: "ブレイブチャージ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let takeHeart = TakeHeartMove.definition
}
