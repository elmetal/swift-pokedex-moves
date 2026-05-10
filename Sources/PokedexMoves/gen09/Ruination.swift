import Foundation

public extension PokemonMove {
    /// The Pokemon move known as カタストロフィ in Japanese.
    ///
    /// The localized name of this move is `"Ruination"` in English and
    /// `"カタストロフィ"` in Japanese.
    ///
    /// The move's raw value is `"ruination"`.
    static let ruination = RuinationMove.move
}

enum RuinationMove {
    static let move = PokemonMove(rawValue: "ruination")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .varies,
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
            .english: "Ruination",
            .japanese: "カタストロフィ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let ruination = RuinationMove.definition
}
