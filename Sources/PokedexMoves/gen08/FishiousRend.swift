import Foundation

public extension PokemonMove {
    /// The Pokemon move known as エラがみ in Japanese.
    ///
    /// The localized name of this move is `"Fishious Rend"` in English and
    /// `"エラがみ"` in Japanese.
    ///
    /// The move's raw value is `"fishious-rend"`.
    static let fishiousRend = FishiousRendMove.move
}

enum FishiousRendMove {
    static let move = PokemonMove(rawValue: "fishious-rend")
    static let parameters = PokemonMove.Parameters(
        type: .water,
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
            .english: "Fishious Rend",
            .japanese: "エラがみ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fishiousRend = FishiousRendMove.definition
}
