import Foundation

public extension PokemonMove {
    /// The Pokemon move known as たてこもる in Japanese.
    ///
    /// The localized name of this move is `"Shelter"` in English and
    /// `"たてこもる"` in Japanese.
    ///
    /// The move's raw value is `"shelter"`.
    static let shelter = ShelterMove.move
}

enum ShelterMove {
    static let move = PokemonMove(rawValue: "shelter")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
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
                versionGroups: [.legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Shelter",
            .japanese: "たてこもる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shelter = ShelterMove.definition
}
