import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いきいきバブル in Japanese.
    ///
    /// The localized name of this move is `"Bouncy Bubble"` in English and
    /// `"いきいきバブル"` in Japanese.
    ///
    /// The move's raw value is `"bouncy-bubble"`.
    static let bouncyBubble = BouncyBubbleMove.move
}

enum BouncyBubbleMove {
    static let move = PokemonMove(rawValue: "bouncy-bubble")
    static let parameters1 = PokemonMove.Parameters(
        type: .water,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .water,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Bouncy Bubble",
            .japanese: "いきいきバブル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bouncyBubble = BouncyBubbleMove.definition
}
