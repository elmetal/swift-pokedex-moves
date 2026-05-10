import Foundation

public extension PokemonMove {
    /// The Pokemon move known as コーチング in Japanese.
    ///
    /// The localized name of this move is `"Coaching"` in English and
    /// `"コーチング"` in Japanese.
    ///
    /// The move's raw value is `"coaching"`.
    static let coaching = CoachingMove.move
}

enum CoachingMove {
    static let move = PokemonMove(rawValue: "coaching")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .userAndAllies
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
            .english: "Coaching",
            .japanese: "コーチング",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let coaching = CoachingMove.definition
}
