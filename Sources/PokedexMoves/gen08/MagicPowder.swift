import Foundation

public extension PokemonMove {
    /// The Pokemon move known as まほうのこな in Japanese.
    ///
    /// The localized name of this move is `"Magic Powder"` in English and
    /// `"まほうのこな"` in Japanese.
    ///
    /// The move's raw value is `"magic-powder"`.
    static let magicPowder = MagicPowderMove.move
}

enum MagicPowderMove {
    static let move = PokemonMove(rawValue: "magic-powder")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
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
            .english: "Magic Powder",
            .japanese: "まほうのこな",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let magicPowder = MagicPowderMove.definition
}
