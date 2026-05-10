import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ポルターガイスト in Japanese.
    ///
    /// The localized name of this move is `"Poltergeist"` in English and
    /// `"ポルターガイスト"` in Japanese.
    ///
    /// The move's raw value is `"poltergeist"`.
    static let poltergeist = PoltergeistMove.move
}

enum PoltergeistMove {
    static let move = PokemonMove(rawValue: "poltergeist")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 5,
        power: .fixed(110),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Poltergeist",
            .japanese: "ポルターガイスト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let poltergeist = PoltergeistMove.definition
}
