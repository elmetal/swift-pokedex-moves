import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ガーディアン・デ・アローラ in Japanese.
    ///
    /// The localized name of this move is `"Guardian of Alola"` in English and
    /// `"ガーディアン・デ・アローラ"` in Japanese.
    ///
    /// The move's raw value is `"guardian-of-alola"`.
    static let guardianOfAlola = GuardianOfAlolaMove.move
}

enum GuardianOfAlolaMove {
    static let move = PokemonMove(rawValue: "guardian-of-alola")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
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
            .english: "Guardian of Alola",
            .japanese: "ガーディアン・デ・アローラ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let guardianOfAlola = GuardianOfAlolaMove.definition
}
