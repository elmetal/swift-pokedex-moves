import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ミラーコート in Japanese.
    ///
    /// The localized name of this move is `"Mirror Coat"` in English and
    /// `"ミラーコート"` in Japanese.
    ///
    /// The move's raw value is `"mirror-coat"`.
    static let mirrorCoat = MirrorCoatMove.move
}

enum MirrorCoatMove {
    static let move = PokemonMove(rawValue: "mirror-coat")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: -5,
        category: .special,
        target: .move
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Mirror Coat",
            .japanese: "ミラーコート",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mirrorCoat = MirrorCoatMove.definition
}
