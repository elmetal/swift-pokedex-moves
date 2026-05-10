import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かふんだんご in Japanese.
    ///
    /// The localized name of this move is `"Pollen Puff"` in English and
    /// `"かふんだんご"` in Japanese.
    ///
    /// The move's raw value is `"pollen-puff"`.
    static let pollenPuff = PollenPuffMove.move
}

enum PollenPuffMove {
    static let move = PokemonMove(rawValue: "pollen-puff")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 15,
        power: .fixed(90),
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
            .english: "Pollen Puff",
            .japanese: "かふんだんご",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let pollenPuff = PollenPuffMove.definition
}
