import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ぶきみなじゅもん in Japanese.
    ///
    /// The localized name of this move is `"Eerie Spell"` in English and
    /// `"ぶきみなじゅもん"` in Japanese.
    ///
    /// The move's raw value is `"eerie-spell"`.
    static let eerieSpell = EerieSpellMove.move
}

enum EerieSpellMove {
    static let move = PokemonMove(rawValue: "eerie-spell")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 5,
        power: .fixed(80),
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
            .english: "Eerie Spell",
            .japanese: "ぶきみなじゅもん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let eerieSpell = EerieSpellMove.definition
}
