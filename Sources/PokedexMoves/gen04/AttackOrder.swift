import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こうげきしれい in Japanese.
    ///
    /// The localized name of this move is `"Attack Order"` in English and
    /// `"こうげきしれい"` in Japanese.
    ///
    /// The move's raw value is `"attack-order"`.
    static let attackOrder = AttackOrderMove.move
}

enum AttackOrderMove {
    static let move = PokemonMove(rawValue: "attack-order")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
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
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                    .blackWhite,
                    .black2White2,
                    .xY,
                    .omegaRubyAlphaSapphire,
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
            .english: "Attack Order",
            .japanese: "こうげきしれい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let attackOrder = AttackOrderMove.definition
}
