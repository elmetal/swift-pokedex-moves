import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あられ in Japanese.
    ///
    /// The localized name of this move is `"Hail"` in English and
    /// `"あられ"` in Japanese.
    ///
    /// The move's raw value is `"hail"`.
    static let hail = HailMove.move
}

enum HailMove {
    static let move = PokemonMove(rawValue: "hail")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
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
            .english: "Hail",
            .japanese: "あられ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hail = HailMove.definition
}
