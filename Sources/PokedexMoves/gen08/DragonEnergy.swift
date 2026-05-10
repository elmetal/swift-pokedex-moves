import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ドラゴンエナジー in Japanese.
    ///
    /// The localized name of this move is `"Dragon Energy"` in English and
    /// `"ドラゴンエナジー"` in Japanese.
    ///
    /// The move's raw value is `"dragon-energy"`.
    static let dragonEnergy = DragonEnergyMove.move
}

enum DragonEnergyMove {
    static let move = PokemonMove(rawValue: "dragon-energy")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 5,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
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
            .english: "Dragon Energy",
            .japanese: "ドラゴンエナジー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dragonEnergy = DragonEnergyMove.definition
}
