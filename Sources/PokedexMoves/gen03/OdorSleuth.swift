import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かぎわける in Japanese.
    ///
    /// The localized name of this move is `"Odor Sleuth"` in English and
    /// `"かぎわける"` in Japanese.
    ///
    /// The move's raw value is `"odor-sleuth"`.
    static let odorSleuth = OdorSleuthMove.move
}

enum OdorSleuthMove {
    static let move = PokemonMove(rawValue: "odor-sleuth")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
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
            .english: "Odor Sleuth",
            .japanese: "かぎわける",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let odorSleuth = OdorSleuthMove.definition
}
