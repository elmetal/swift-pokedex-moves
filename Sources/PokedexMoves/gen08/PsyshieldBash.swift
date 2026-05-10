import Foundation

public extension PokemonMove {
    /// The Pokemon move known as バリアーラッシュ in Japanese.
    ///
    /// The localized name of this move is `"Psyshield Bash"` in English and
    /// `"バリアーラッシュ"` in Japanese.
    ///
    /// The move's raw value is `"psyshield-bash"`.
    static let psyshieldBash = PsyshieldBashMove.move
}

enum PsyshieldBashMove {
    static let move = PokemonMove(rawValue: "psyshield-bash")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Psyshield Bash",
            .japanese: "バリアーラッシュ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let psyshieldBash = PsyshieldBashMove.definition
}
