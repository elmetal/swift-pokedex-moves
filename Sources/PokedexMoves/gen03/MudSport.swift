import Foundation

public extension PokemonMove {
    /// The Pokemon move known as どろあそび in Japanese.
    ///
    /// The localized name of this move is `"Mud Sport"` in English and
    /// `"どろあそび"` in Japanese.
    ///
    /// The move's raw value is `"mud-sport"`.
    static let mudSport = MudSportMove.move
}

enum MudSportMove {
    static let move = PokemonMove(rawValue: "mud-sport")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .battlefield
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Mud Sport",
            .japanese: "どろあそび",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mudSport = MudSportMove.definition
}
