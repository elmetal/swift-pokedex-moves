import Foundation

public extension PokemonMove {
    /// The Pokemon move known as トラップシェル in Japanese.
    ///
    /// The localized name of this move is `"Shell Trap"` in English and
    /// `"トラップシェル"` in Japanese.
    ///
    /// The move's raw value is `"shell-trap"`.
    static let shellTrap = ShellTrapMove.move
}

enum ShellTrapMove {
    static let move = PokemonMove(rawValue: "shell-trap")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(100),
        priority: -3,
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
            .english: "Shell Trap",
            .japanese: "トラップシェル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shellTrap = ShellTrapMove.definition
}
