import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しぜんのちから in Japanese.
    ///
    /// The localized name of this move is `"Nature Power"` in English and
    /// `"しぜんのちから"` in Japanese.
    ///
    /// The move's raw value is `"nature-power"`.
    static let naturePower = NaturePowerMove.move
}

enum NaturePowerMove {
    static let move = PokemonMove(rawValue: "nature-power")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .target
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
            .english: "Nature Power",
            .japanese: "しぜんのちから",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let naturePower = NaturePowerMove.definition
}
