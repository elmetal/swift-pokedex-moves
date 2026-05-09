import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ちきゅうなげ in Japanese.
    ///
    /// The localized name of this move is `"Seismic Toss"` in English and
    /// `"ちきゅうなげ"` in Japanese.
    ///
    /// The move's raw value is `"seismic-toss"`.
    static let seismicToss = SeismicTossMove.move
}

enum SeismicTossMove {
    static let move = PokemonMove(rawValue: "seismic-toss")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
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
            .english: "Seismic Toss",
            .japanese: "ちきゅうなげ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let seismicToss = SeismicTossMove.definition
}
