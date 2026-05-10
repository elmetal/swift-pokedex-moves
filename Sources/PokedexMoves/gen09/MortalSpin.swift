import Foundation

public extension PokemonMove {
    /// The Pokemon move known as キラースピン in Japanese.
    ///
    /// The localized name of this move is `"Mortal Spin"` in English and
    /// `"キラースピン"` in Japanese.
    ///
    /// The move's raw value is `"mortal-spin"`.
    static let mortalSpin = MortalSpinMove.move
}

enum MortalSpinMove {
    static let move = PokemonMove(rawValue: "mortal-spin")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 15,
        power: .fixed(30),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOpposingPokemon
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
            .english: "Mortal Spin",
            .japanese: "キラースピン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mortalSpin = MortalSpinMove.definition
}
