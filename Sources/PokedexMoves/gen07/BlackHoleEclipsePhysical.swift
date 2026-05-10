import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ブラックホールイクリプス in Japanese.
    ///
    /// The localized name of this move is `"Black Hole Eclipse"` in English and
    /// `"ブラックホールイクリプス"` in Japanese.
    ///
    /// The move's raw value is `"black-hole-eclipse--physical"`.
    static let blackHoleEclipsePhysical = BlackHoleEclipsePhysicalMove.move
}

enum BlackHoleEclipsePhysicalMove {
    static let move = PokemonMove(rawValue: "black-hole-eclipse--physical")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
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
            .english: "Black Hole Eclipse",
            .japanese: "ブラックホールイクリプス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let blackHoleEclipsePhysical = BlackHoleEclipsePhysicalMove.definition
}
