import Foundation

public extension PokemonMove {
    /// The Pokemon move known as バリアー in Japanese.
    ///
    /// The localized name of this move is `"Barrier"` in English and
    /// `"バリアー"` in Japanese.
    ///
    /// The move's raw value is `"barrier"`.
    static let barrier = BarrierMove.move
}

enum BarrierMove {
    static let move = PokemonMove(rawValue: "barrier")
    static let parameters1 = PokemonMove.Parameters(
        type: .psychic,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: [
                    .redBlue,
                    .yellow,
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
            .english: "Barrier",
            .japanese: "バリアー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let barrier = BarrierMove.definition
}
