import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ブラッドムーン in Japanese.
    ///
    /// The localized name of this move is `"Blood Moon"` in English and
    /// `"ブラッドムーン"` in Japanese.
    ///
    /// The move's raw value is `"blood-moon"`.
    static let bloodMoon = BloodMoonMove.move
}

enum BloodMoonMove {
    static let move = PokemonMove(rawValue: "blood-moon")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(140),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ix,
        parameterHistory: [
            .init(
                versionGroups: [.scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Blood Moon",
            .japanese: "ブラッドムーン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bloodMoon = BloodMoonMove.definition
}
