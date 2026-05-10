import Foundation

public extension PokemonMove {
    /// The Pokemon move known as びりびりエレキ in Japanese.
    ///
    /// The localized name of this move is `"Buzzy Buzz"` in English and
    /// `"びりびりエレキ"` in Japanese.
    ///
    /// The move's raw value is `"buzzy-buzz"`.
    static let buzzyBuzz = BuzzyBuzzMove.move
}

enum BuzzyBuzzMove {
    static let move = PokemonMove(rawValue: "buzzy-buzz")
    static let parameters1 = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .electric,
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
            .english: "Buzzy Buzz",
            .japanese: "びりびりエレキ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let buzzyBuzz = BuzzyBuzzMove.definition
}
