import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ワンダールーム in Japanese.
    ///
    /// The localized name of this move is `"Wonder Room"` in English and
    /// `"ワンダールーム"` in Japanese.
    ///
    /// The move's raw value is `"wonder-room"`.
    static let wonderRoom = WonderRoomMove.move
}

enum WonderRoomMove {
    static let move = PokemonMove(rawValue: "wonder-room")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .battlefield
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
            .english: "Wonder Room",
            .japanese: "ワンダールーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let wonderRoom = WonderRoomMove.definition
}
