import Foundation

public extension PokemonMove {
    /// The Pokemon move known as プリズムレーザー in Japanese.
    ///
    /// The localized name of this move is `"Prismatic Laser"` in English and
    /// `"プリズムレーザー"` in Japanese.
    ///
    /// The move's raw value is `"prismatic-laser"`.
    static let prismaticLaser = PrismaticLaserMove.move
}

enum PrismaticLaserMove {
    static let move = PokemonMove(rawValue: "prismatic-laser")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(160),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Prismatic Laser",
            .japanese: "プリズムレーザー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let prismaticLaser = PrismaticLaserMove.definition
}
