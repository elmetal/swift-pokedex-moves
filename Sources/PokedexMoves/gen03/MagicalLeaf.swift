import Foundation

public extension PokemonMove {
    /// The Pokemon move known as マジカルリーフ in Japanese.
    ///
    /// The localized name of this move is `"Magical Leaf"` in English and
    /// `"マジカルリーフ"` in Japanese.
    ///
    /// The move's raw value is `"magical-leaf"`.
    static let magicalLeaf = MagicalLeafMove.move
}

enum MagicalLeafMove {
    static let move = PokemonMove(rawValue: "magical-leaf")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Magical Leaf",
            .japanese: "マジカルリーフ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let magicalLeaf = MagicalLeafMove.definition
}
