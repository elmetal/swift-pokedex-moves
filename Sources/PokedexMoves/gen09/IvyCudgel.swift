import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ツタこんぼう in Japanese.
    ///
    /// The localized name of this move is `"Ivy Cudgel"` in English and
    /// `"ツタこんぼう"` in Japanese.
    ///
    /// The move's raw value is `"ivy-cudgel"`.
    static let ivyCudgel = IvyCudgelMove.move
}

enum IvyCudgelMove {
    static let move = PokemonMove(rawValue: "ivy-cudgel")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(100),
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
            .english: "Ivy Cudgel",
            .japanese: "ツタこんぼう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let ivyCudgel = IvyCudgelMove.definition
}
