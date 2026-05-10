import Foundation

public extension PokemonMove {
    /// The Pokemon move known as むねんのつるぎ in Japanese.
    ///
    /// The localized name of this move is `"Bitter Blade"` in English and
    /// `"むねんのつるぎ"` in Japanese.
    ///
    /// The move's raw value is `"bitter-blade"`.
    static let bitterBlade = BitterBladeMove.move
}

enum BitterBladeMove {
    static let move = PokemonMove(rawValue: "bitter-blade")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 10,
        power: .fixed(90),
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
            .english: "Bitter Blade",
            .japanese: "むねんのつるぎ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bitterBlade = BitterBladeMove.definition
}
