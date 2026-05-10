import Foundation

public extension PokemonMove {
    /// The Pokemon move known as もえあがるいかり in Japanese.
    ///
    /// The localized name of this move is `"Fiery Wrath"` in English and
    /// `"もえあがるいかり"` in Japanese.
    ///
    /// The move's raw value is `"fiery-wrath"`.
    static let fieryWrath = FieryWrathMove.move
}

enum FieryWrathMove {
    static let move = PokemonMove(rawValue: "fiery-wrath")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .fixed(90),
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
            .english: "Fiery Wrath",
            .japanese: "もえあがるいかり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fieryWrath = FieryWrathMove.definition
}
