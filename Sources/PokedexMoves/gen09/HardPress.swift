import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハードプレス in Japanese.
    ///
    /// The localized name of this move is `"Hard Press"` in English and
    /// `"ハードプレス"` in Japanese.
    ///
    /// The move's raw value is `"hard-press"`.
    static let hardPress = HardPressMove.move
}

enum HardPressMove {
    static let move = PokemonMove(rawValue: "hard-press")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 10,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Hard Press",
            .japanese: "ハードプレス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hardPress = HardPressMove.definition
}
