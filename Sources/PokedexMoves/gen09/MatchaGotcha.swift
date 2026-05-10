import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シャカシャカほう in Japanese.
    ///
    /// The localized name of this move is `"Matcha Gotcha"` in English and
    /// `"シャカシャカほう"` in Japanese.
    ///
    /// The move's raw value is `"matcha-gotcha"`.
    static let matchaGotcha = MatchaGotchaMove.move
}

enum MatchaGotchaMove {
    static let move = PokemonMove(rawValue: "matcha-gotcha")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Matcha Gotcha",
            .japanese: "シャカシャカほう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let matchaGotcha = MatchaGotchaMove.definition
}
