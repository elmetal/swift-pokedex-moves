import Foundation

public extension PokemonMove {
    /// The Pokemon move known as バトンタッチ in Japanese.
    ///
    /// The localized name of this move is `"Baton Pass"` in English and
    /// `"バトンタッチ"` in Japanese.
    ///
    /// The move's raw value is `"baton-pass"`.
    static let batonPass = BatonPassMove.move
}

enum BatonPassMove {
    static let move = PokemonMove(rawValue: "baton-pass")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
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
            .english: "Baton Pass",
            .japanese: "バトンタッチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let batonPass = BatonPassMove.definition
}
