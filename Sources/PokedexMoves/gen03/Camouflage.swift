import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ほごしょく in Japanese.
    ///
    /// The localized name of this move is `"Camouflage"` in English and
    /// `"ほごしょく"` in Japanese.
    ///
    /// The move's raw value is `"camouflage"`.
    static let camouflage = CamouflageMove.move
}

enum CamouflageMove {
    static let move = PokemonMove(rawValue: "camouflage")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Camouflage",
            .japanese: "ほごしょく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let camouflage = CamouflageMove.definition
}
