import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ほおばる in Japanese.
    ///
    /// The localized name of this move is `"Stuff Cheeks"` in English and
    /// `"ほおばる"` in Japanese.
    ///
    /// The move's raw value is `"stuff-cheeks"`.
    static let stuffCheeks = StuffCheeksMove.move
}

enum StuffCheeksMove {
    static let move = PokemonMove(rawValue: "stuff-cheeks")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Stuff Cheeks",
            .japanese: "ほおばる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let stuffCheeks = StuffCheeksMove.definition
}
