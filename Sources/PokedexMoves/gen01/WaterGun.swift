import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みずでっぽう in Japanese.
    ///
    /// The localized name of this move is `"Water Gun"` in English and
    /// `"みずでっぽう"` in Japanese.
    ///
    /// The move's raw value is `"water-gun"`.
    static let waterGun = WaterGunMove.move
}

enum WaterGunMove {
    static let move = PokemonMove(rawValue: "water-gun")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 25,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Water Gun",
            .japanese: "みずでっぽう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let waterGun = WaterGunMove.definition
}
