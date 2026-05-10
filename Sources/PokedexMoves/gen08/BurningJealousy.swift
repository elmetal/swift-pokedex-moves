import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しっとのほのお in Japanese.
    ///
    /// The localized name of this move is `"Burning Jealousy"` in English and
    /// `"しっとのほのお"` in Japanese.
    ///
    /// The move's raw value is `"burning-jealousy"`.
    static let burningJealousy = BurningJealousyMove.move
}

enum BurningJealousyMove {
    static let move = PokemonMove(rawValue: "burning-jealousy")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
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
            .english: "Burning Jealousy",
            .japanese: "しっとのほのお",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let burningJealousy = BurningJealousyMove.definition
}
