import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はねる in Japanese.
    ///
    /// The localized name of this move is `"Splash"` in English and
    /// `"はねる"` in Japanese.
    ///
    /// The move's raw value is `"splash"`.
    static let splash = SplashMove.move
}

enum SplashMove {
    static let move = PokemonMove(rawValue: "splash")
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
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Splash",
            .japanese: "はねる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let splash = SplashMove.definition
}
