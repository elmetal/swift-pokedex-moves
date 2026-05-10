import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ミストバースト in Japanese.
    ///
    /// The localized name of this move is `"Misty Explosion"` in English and
    /// `"ミストバースト"` in Japanese.
    ///
    /// The move's raw value is `"misty-explosion"`.
    static let mistyExplosion = MistyExplosionMove.move
}

enum MistyExplosionMove {
    static let move = PokemonMove(rawValue: "misty-explosion")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOtherPokemon
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
            .english: "Misty Explosion",
            .japanese: "ミストバースト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mistyExplosion = MistyExplosionMove.definition
}
