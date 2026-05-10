import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ふんどのこぶし in Japanese.
    ///
    /// The localized name of this move is `"Rage Fist"` in English and
    /// `"ふんどのこぶし"` in Japanese.
    ///
    /// The move's raw value is `"rage-fist"`.
    static let rageFist = RageFistMove.move
}

enum RageFistMove {
    static let move = PokemonMove(rawValue: "rage-fist")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
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
            .english: "Rage Fist",
            .japanese: "ふんどのこぶし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rageFist = RageFistMove.definition
}
