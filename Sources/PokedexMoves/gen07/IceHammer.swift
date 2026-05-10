import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アイスハンマー in Japanese.
    ///
    /// The localized name of this move is `"Ice Hammer"` in English and
    /// `"アイスハンマー"` in Japanese.
    ///
    /// The move's raw value is `"ice-hammer"`.
    static let iceHammer = IceHammerMove.move
}

enum IceHammerMove {
    static let move = PokemonMove(rawValue: "ice-hammer")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Ice Hammer",
            .japanese: "アイスハンマー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let iceHammer = IceHammerMove.definition
}
