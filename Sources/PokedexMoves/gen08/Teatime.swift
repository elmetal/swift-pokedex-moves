import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おちゃかい in Japanese.
    ///
    /// The localized name of this move is `"Teatime"` in English and
    /// `"おちゃかい"` in Japanese.
    ///
    /// The move's raw value is `"teatime"`.
    static let teatime = TeatimeMove.move
}

enum TeatimeMove {
    static let move = PokemonMove(rawValue: "teatime")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .allPokemon
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
            .english: "Teatime",
            .japanese: "おちゃかい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let teatime = TeatimeMove.definition
}
