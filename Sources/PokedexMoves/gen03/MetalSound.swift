import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きんぞくおん in Japanese.
    ///
    /// The localized name of this move is `"Metal Sound"` in English and
    /// `"きんぞくおん"` in Japanese.
    ///
    /// The move's raw value is `"metal-sound"`.
    static let metalSound = MetalSoundMove.move
}

enum MetalSoundMove {
    static let move = PokemonMove(rawValue: "metal-sound")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 40,
        power: .none,
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .status,
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
            .english: "Metal Sound",
            .japanese: "きんぞくおん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let metalSound = MetalSoundMove.definition
}
