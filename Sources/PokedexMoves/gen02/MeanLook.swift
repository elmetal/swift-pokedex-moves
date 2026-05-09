import Foundation

public extension PokemonMove {
    /// The Pokemon move known as くろいまなざし in Japanese.
    ///
    /// The localized name of this move is `"Mean Look"` in English and
    /// `"くろいまなざし"` in Japanese.
    ///
    /// The move's raw value is `"mean-look"`.
    static let meanLook = MeanLookMove.move
}

enum MeanLookMove {
    static let move = PokemonMove(rawValue: "mean-look")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .target
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
            .english: "Mean Look",
            .japanese: "くろいまなざし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let meanLook = MeanLookMove.definition
}
