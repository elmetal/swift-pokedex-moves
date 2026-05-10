import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ファイナルダイブクラッシュ in Japanese.
    ///
    /// The localized name of this move is `"Supersonic Skystrike"` in English and
    /// `"ファイナルダイブクラッシュ"` in Japanese.
    ///
    /// The move's raw value is `"supersonic-skystrike--physical"`.
    static let supersonicSkystrikePhysical = SupersonicSkystrikePhysicalMove.move
}

enum SupersonicSkystrikePhysicalMove {
    static let move = PokemonMove(rawValue: "supersonic-skystrike--physical")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
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
            .english: "Supersonic Skystrike",
            .japanese: "ファイナルダイブクラッシュ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let supersonicSkystrikePhysical = SupersonicSkystrikePhysicalMove.definition
}
