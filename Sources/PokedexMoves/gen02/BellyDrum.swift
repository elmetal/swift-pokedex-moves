import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はらだいこ in Japanese.
    ///
    /// The localized name of this move is `"Belly Drum"` in English and
    /// `"はらだいこ"` in Japanese.
    ///
    /// The move's raw value is `"belly-drum"`.
    static let bellyDrum = BellyDrumMove.move
}

enum BellyDrumMove {
    static let move = PokemonMove(rawValue: "belly-drum")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
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
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Belly Drum",
            .japanese: "はらだいこ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bellyDrum = BellyDrumMove.definition
}
