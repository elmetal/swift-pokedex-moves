import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ふしょくガス in Japanese.
    ///
    /// The localized name of this move is `"Corrosive Gas"` in English and
    /// `"ふしょくガス"` in Japanese.
    ///
    /// The move's raw value is `"corrosive-gas"`.
    static let corrosiveGas = CorrosiveGasMove.move
}

enum CorrosiveGasMove {
    static let move = PokemonMove(rawValue: "corrosive-gas")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 40,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .allOtherPokemon
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
            .english: "Corrosive Gas",
            .japanese: "ふしょくガス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let corrosiveGas = CorrosiveGasMove.definition
}
