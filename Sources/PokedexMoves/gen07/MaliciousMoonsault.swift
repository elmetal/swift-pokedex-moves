import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハイパーダーククラッシャー in Japanese.
    ///
    /// The localized name of this move is `"Malicious Moonsault"` in English and
    /// `"ハイパーダーククラッシャー"` in Japanese.
    ///
    /// The move's raw value is `"malicious-moonsault"`.
    static let maliciousMoonsault = MaliciousMoonsaultMove.move
}

enum MaliciousMoonsaultMove {
    static let move = PokemonMove(rawValue: "malicious-moonsault")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 1,
        power: .fixed(180),
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
            .english: "Malicious Moonsault",
            .japanese: "ハイパーダーククラッシャー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maliciousMoonsault = MaliciousMoonsaultMove.definition
}
