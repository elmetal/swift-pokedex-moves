import Foundation

public extension PokemonMove {
    /// The Pokemon move known as でんげきくちばし in Japanese.
    ///
    /// The localized name of this move is `"Bolt Beak"` in English and
    /// `"でんげきくちばし"` in Japanese.
    ///
    /// The move's raw value is `"bolt-beak"`.
    static let boltBeak = BoltBeakMove.move
}

enum BoltBeakMove {
    static let move = PokemonMove(rawValue: "bolt-beak")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 10,
        power: .fixed(85),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Bolt Beak",
            .japanese: "でんげきくちばし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let boltBeak = BoltBeakMove.definition
}
