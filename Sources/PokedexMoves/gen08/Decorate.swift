import Foundation

public extension PokemonMove {
    /// The Pokemon move known as デコレーション in Japanese.
    ///
    /// The localized name of this move is `"Decorate"` in English and
    /// `"デコレーション"` in Japanese.
    ///
    /// The move's raw value is `"decorate"`.
    static let decorate = DecorateMove.move
}

enum DecorateMove {
    static let move = PokemonMove(rawValue: "decorate")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
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
            .english: "Decorate",
            .japanese: "デコレーション",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let decorate = DecorateMove.definition
}
