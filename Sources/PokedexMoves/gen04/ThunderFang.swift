import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かみなりのキバ in Japanese.
    ///
    /// The localized name of this move is `"Thunder Fang"` in English and
    /// `"かみなりのキバ"` in Japanese.
    ///
    /// The move's raw value is `"thunder-fang"`.
    static let thunderFang = ThunderFangMove.move
}

enum ThunderFangMove {
    static let move = PokemonMove(rawValue: "thunder-fang")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                    .blackWhite,
                    .black2White2,
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Thunder Fang",
            .japanese: "かみなりのキバ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let thunderFang = ThunderFangMove.definition
}
