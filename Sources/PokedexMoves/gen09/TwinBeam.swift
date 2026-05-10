import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ツインビーム in Japanese.
    ///
    /// The localized name of this move is `"Twin Beam"` in English and
    /// `"ツインビーム"` in Japanese.
    ///
    /// The move's raw value is `"twin-beam"`.
    static let twinBeam = TwinBeamMove.move
}

enum TwinBeamMove {
    static let move = PokemonMove(rawValue: "twin-beam")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(40),
        hits: .fixed(2),
        accuracy: .percent(100),
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
            .english: "Twin Beam",
            .japanese: "ツインビーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let twinBeam = TwinBeamMove.definition
}
