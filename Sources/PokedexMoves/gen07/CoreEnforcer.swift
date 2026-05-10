import Foundation

public extension PokemonMove {
    /// The Pokemon move known as コアパニッシャー in Japanese.
    ///
    /// The localized name of this move is `"Core Enforcer"` in English and
    /// `"コアパニッシャー"` in Japanese.
    ///
    /// The move's raw value is `"core-enforcer"`.
    static let coreEnforcer = CoreEnforcerMove.move
}

enum CoreEnforcerMove {
    static let move = PokemonMove(rawValue: "core-enforcer")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
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
            .english: "Core Enforcer",
            .japanese: "コアパニッシャー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let coreEnforcer = CoreEnforcerMove.definition
}
