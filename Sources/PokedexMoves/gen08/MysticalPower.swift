import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しんぴのちから in Japanese.
    ///
    /// The localized name of this move is `"Mystical Power"` in English and
    /// `"しんぴのちから"` in Japanese.
    ///
    /// The move's raw value is `"mystical-power"`.
    static let mysticalPower = MysticalPowerMove.move
}

enum MysticalPowerMove {
    static let move = PokemonMove(rawValue: "mystical-power")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Mystical Power",
            .japanese: "しんぴのちから",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mysticalPower = MysticalPowerMove.definition
}
