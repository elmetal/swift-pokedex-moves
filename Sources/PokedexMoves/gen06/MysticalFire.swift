import Foundation

public extension PokemonMove {
    /// The Pokemon move known as マジカルフレイム in Japanese.
    ///
    /// The localized name of this move is `"Mystical Fire"` in English and
    /// `"マジカルフレイム"` in Japanese.
    ///
    /// The move's raw value is `"mystical-fire"`.
    static let mysticalFire = MysticalFireMove.move
}

enum MysticalFireMove {
    static let move = PokemonMove(rawValue: "mystical-fire")
    static let parameters1 = PokemonMove.Parameters(
        type: .fire,
        pp: 10,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fire,
        pp: 10,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [.xY, .omegaRubyAlphaSapphire],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
                    .sunMoon,
                    .ultraSunUltraMoon,
                    .letsGoPikachuLetsGoEevee,
                    .swordShield,
                    .brilliantDiamondShiningPearl,
                    .legendsArceus,
                    .scarletViolet,
                    .champions,
                ],
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Mystical Fire",
            .japanese: "マジカルフレイム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mysticalFire = MysticalFireMove.definition
}
