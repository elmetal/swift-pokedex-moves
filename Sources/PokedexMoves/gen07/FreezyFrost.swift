import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こちこちフロスト in Japanese.
    ///
    /// The localized name of this move is `"Freezy Frost"` in English and
    /// `"こちこちフロスト"` in Japanese.
    ///
    /// The move's raw value is `"freezy-frost"`.
    static let freezyFrost = FreezyFrostMove.move
}

enum FreezyFrostMove {
    static let move = PokemonMove(rawValue: "freezy-frost")
    static let parameters1 = PokemonMove.Parameters(
        type: .ice,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [.letsGoPikachuLetsGoEevee],
                parameters: parameters1
            ),
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Freezy Frost",
            .japanese: "こちこちフロスト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let freezyFrost = FreezyFrostMove.definition
}
