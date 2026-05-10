import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サンダーダイブ in Japanese.
    ///
    /// The localized name of this move is `"Supercell Slam"` in English and
    /// `"サンダーダイブ"` in Japanese.
    ///
    /// The move's raw value is `"supercell-slam"`.
    static let supercellSlam = SupercellSlamMove.move
}

enum SupercellSlamMove {
    static let move = PokemonMove(rawValue: "supercell-slam")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(95),
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
            .english: "Supercell Slam",
            .japanese: "サンダーダイブ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let supercellSlam = SupercellSlamMove.definition
}
