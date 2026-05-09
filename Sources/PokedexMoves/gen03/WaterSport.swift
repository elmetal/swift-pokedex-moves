import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みずあそび in Japanese.
    ///
    /// The localized name of this move is `"Water Sport"` in English and
    /// `"みずあそび"` in Japanese.
    ///
    /// The move's raw value is `"water-sport"`.
    static let waterSport = WaterSportMove.move
}

enum WaterSportMove {
    static let move = PokemonMove(rawValue: "water-sport")
    static let parameters = PokemonMove.Parameters(
        type: .water,
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
            .english: "Water Sport",
            .japanese: "みずあそび",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let waterSport = WaterSportMove.definition
}
