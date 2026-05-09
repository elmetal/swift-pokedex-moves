import Foundation

public extension PokemonMove {
    /// The Pokemon move known as てだすけ in Japanese.
    ///
    /// The localized name of this move is `"Helping Hand"` in English and
    /// `"てだすけ"` in Japanese.
    ///
    /// The move's raw value is `"helping-hand"`.
    static let helpingHand = HelpingHandMove.move
}

enum HelpingHandMove {
    static let move = PokemonMove(rawValue: "helping-hand")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 5,
        category: .status,
        target: .ally
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
            .english: "Helping Hand",
            .japanese: "てだすけ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let helpingHand = HelpingHandMove.definition
}
