import Foundation

public extension PokemonMove {
    /// The Pokemon move known as すなかけ in Japanese.
    ///
    /// The localized name of this move is `"Sand Attack"` in English and
    /// `"すなかけ"` in Japanese.
    ///
    /// The move's raw value is `"sand-attack"`.
    static let sandAttack = SandAttackMove.move
}

enum SandAttackMove {
    static let move = PokemonMove(rawValue: "sand-attack")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ground,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: [
                    .redBlue,
                    .yellow,
                ],
                parameters: parameters1
            ),
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
            .english: "Sand Attack",
            .japanese: "すなかけ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sandAttack = SandAttackMove.definition
}
