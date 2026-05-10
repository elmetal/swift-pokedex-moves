import Foundation

public extension PokemonMove {
    /// The Pokemon move known as すいりゅうれんだ in Japanese.
    ///
    /// The localized name of this move is `"Surging Strikes"` in English and
    /// `"すいりゅうれんだ"` in Japanese.
    ///
    /// The move's raw value is `"surging-strikes"`.
    static let surgingStrikes = SurgingStrikesMove.move
}

enum SurgingStrikesMove {
    static let move = PokemonMove(rawValue: "surging-strikes")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 5,
        power: .fixed(25),
        hits: .fixed(3),
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
            .english: "Surging Strikes",
            .japanese: "すいりゅうれんだ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let surgingStrikes = SurgingStrikesMove.definition
}
