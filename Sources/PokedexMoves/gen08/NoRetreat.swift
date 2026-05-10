import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はいすいのじん in Japanese.
    ///
    /// The localized name of this move is `"No Retreat"` in English and
    /// `"はいすいのじん"` in Japanese.
    ///
    /// The move's raw value is `"no-retreat"`.
    static let noRetreat = NoRetreatMove.move
}

enum NoRetreatMove {
    static let move = PokemonMove(rawValue: "no-retreat")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 5,
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
            .english: "No Retreat",
            .japanese: "はいすいのじん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let noRetreat = NoRetreatMove.definition
}
