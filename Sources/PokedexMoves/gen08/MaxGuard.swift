import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイウォール in Japanese.
    ///
    /// The localized name of this move is `"Max Guard"` in English and
    /// `"ダイウォール"` in Japanese.
    ///
    /// The move's raw value is `"max-guard"`.
    static let maxGuard = MaxGuardMove.move
}

enum MaxGuardMove {
    static let move = PokemonMove(rawValue: "max-guard")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 4,
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
            .english: "Max Guard",
            .japanese: "ダイウォール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxGuard = MaxGuardMove.definition
}
