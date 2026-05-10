import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ドラムアタック in Japanese.
    ///
    /// The localized name of this move is `"Drum Beating"` in English and
    /// `"ドラムアタック"` in Japanese.
    ///
    /// The move's raw value is `"drum-beating"`.
    static let drumBeating = DrumBeatingMove.move
}

enum DrumBeatingMove {
    static let move = PokemonMove(rawValue: "drum-beating")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Drum Beating",
            .japanese: "ドラムアタック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let drumBeating = DrumBeatingMove.definition
}
