import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あまえる in Japanese.
    ///
    /// The localized name of this move is `"Charm"` in English and
    /// `"あまえる"` in Japanese.
    ///
    /// The move's raw value is `"charm"`.
    static let charm = CharmMove.move
}

enum CharmMove {
    static let move = PokemonMove(rawValue: "charm")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fairy,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .goldSilver,
                    .crystal,
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                    .blackWhite,
                    .black2White2,
                ],
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
            .english: "Charm",
            .japanese: "あまえる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let charm = CharmMove.definition
}
