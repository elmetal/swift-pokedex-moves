import Foundation

public extension PokemonMove {
    /// The Pokemon move known as オウムがえし in Japanese.
    ///
    /// The localized name of this move is `"Mirror Move"` in English and
    /// `"オウムがえし"` in Japanese.
    ///
    /// The move's raw value is `"mirror-move"`.
    static let mirrorMove = MirrorMoveMove.move
}

enum MirrorMoveMove {
    static let move = PokemonMove(rawValue: "mirror-move")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
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
            .english: "Mirror Move",
            .japanese: "オウムがえし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mirrorMove = MirrorMoveMove.definition
}
