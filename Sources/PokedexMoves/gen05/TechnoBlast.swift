import Foundation

public extension PokemonMove {
    /// The Pokemon move known as テクノバスター in Japanese.
    ///
    /// The localized name of this move is `"Techno Blast"` in English and
    /// `"テクノバスター"` in Japanese.
    ///
    /// The move's raw value is `"techno-blast"`.
    static let technoBlast = TechnoBlastMove.move
}

enum TechnoBlastMove {
    static let move = PokemonMove(rawValue: "techno-blast")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(85),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [.blackWhite, .black2White2],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
                    .xY,
                    .omegaRubyAlphaSapphire,
                    .sunMoon,
                    .ultraSunUltraMoon,
                    .letsGoPikachuLetsGoEevee,
                    .swordShield,
                    .brilliantDiamondShiningPearl,
                    .legendsArceus,
                    .scarletViolet,
                    .champions,
                ],
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Techno Blast",
            .japanese: "テクノバスター",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let technoBlast = TechnoBlastMove.definition
}
