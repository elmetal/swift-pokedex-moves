import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ドラゴンハンマー in Japanese.
    ///
    /// The localized name of this move is `"Dragon Hammer"` in English and
    /// `"ドラゴンハンマー"` in Japanese.
    ///
    /// The move's raw value is `"dragon-hammer"`.
    static let dragonHammer = DragonHammerMove.move
}

enum DragonHammerMove {
    static let move = PokemonMove(rawValue: "dragon-hammer")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Dragon Hammer",
            .japanese: "ドラゴンハンマー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dragonHammer = DragonHammerMove.definition
}
