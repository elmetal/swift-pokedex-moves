import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハードローラー in Japanese.
    ///
    /// The localized name of this move is `"Steamroller"` in English and
    /// `"ハードローラー"` in Japanese.
    ///
    /// The move's raw value is `"steamroller"`.
    static let steamroller = SteamrollerMove.move
}

enum SteamrollerMove {
    static let move = PokemonMove(rawValue: "steamroller")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Steamroller",
            .japanese: "ハードローラー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let steamroller = SteamrollerMove.definition
}
