import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あんこくきょうだ in Japanese.
    ///
    /// The localized name of this move is `"Wicked Blow"` in English and
    /// `"あんこくきょうだ"` in Japanese.
    ///
    /// The move's raw value is `"wicked-blow"`.
    static let wickedBlow = WickedBlowMove.move
}

enum WickedBlowMove {
    static let move = PokemonMove(rawValue: "wicked-blow")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 5,
        power: .fixed(75),
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
            .english: "Wicked Blow",
            .japanese: "あんこくきょうだ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let wickedBlow = WickedBlowMove.definition
}
