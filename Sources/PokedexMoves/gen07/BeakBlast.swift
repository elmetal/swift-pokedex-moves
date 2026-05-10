import Foundation

public extension PokemonMove {
    /// The Pokemon move known as くちばしキャノン in Japanese.
    ///
    /// The localized name of this move is `"Beak Blast"` in English and
    /// `"くちばしキャノン"` in Japanese.
    ///
    /// The move's raw value is `"beak-blast"`.
    static let beakBlast = BeakBlastMove.move
}

enum BeakBlastMove {
    static let move = PokemonMove(rawValue: "beak-blast")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 15,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
        priority: -3,
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
            .english: "Beak Blast",
            .japanese: "くちばしキャノン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let beakBlast = BeakBlastMove.definition
}
