import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アルティメットドラゴンバーン in Japanese.
    ///
    /// The localized name of this move is `"Devastating Drake"` in English and
    /// `"アルティメットドラゴンバーン"` in Japanese.
    ///
    /// The move's raw value is `"devastating-drake--physical"`.
    static let devastatingDrakePhysical = DevastatingDrakePhysicalMove.move
}

enum DevastatingDrakePhysicalMove {
    static let move = PokemonMove(rawValue: "devastating-drake--physical")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 1,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
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
            .english: "Devastating Drake",
            .japanese: "アルティメットドラゴンバーン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let devastatingDrakePhysical = DevastatingDrakePhysicalMove.definition
}
