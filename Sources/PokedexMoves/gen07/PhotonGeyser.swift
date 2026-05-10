import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フォトンゲイザー in Japanese.
    ///
    /// The localized name of this move is `"Photon Geyser"` in English and
    /// `"フォトンゲイザー"` in Japanese.
    ///
    /// The move's raw value is `"photon-geyser"`.
    static let photonGeyser = PhotonGeyserMove.move
}

enum PhotonGeyserMove {
    static let move = PokemonMove(rawValue: "photon-geyser")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 5,
        power: .fixed(100),
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
            .english: "Photon Geyser",
            .japanese: "フォトンゲイザー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let photonGeyser = PhotonGeyserMove.definition
}
