import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ファイナルダイブクラッシュ in Japanese.
    ///
    /// The localized name of this move is `"Supersonic Skystrike"` in English and
    /// `"ファイナルダイブクラッシュ"` in Japanese.
    ///
    /// The move's raw value is `"supersonic-skystrike--special"`.
    static let supersonicSkystrikeSpecial = SupersonicSkystrikeSpecialMove.move
}

enum SupersonicSkystrikeSpecialMove {
    static let move = PokemonMove(rawValue: "supersonic-skystrike--special")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 1,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
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
            .english: "Supersonic Skystrike",
            .japanese: "ファイナルダイブクラッシュ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let supersonicSkystrikeSpecial = SupersonicSkystrikeSpecialMove.definition
}
