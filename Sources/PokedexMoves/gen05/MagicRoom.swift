import Foundation

public extension PokemonMove {
    /// The Pokemon move known as マジックルーム in Japanese.
    ///
    /// The localized name of this move is `"Magic Room"` in English and
    /// `"マジックルーム"` in Japanese.
    ///
    /// The move's raw value is `"magic-room"`.
    static let magicRoom = MagicRoomMove.move
}

enum MagicRoomMove {
    static let move = PokemonMove(rawValue: "magic-room")
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
            .english: "Magic Room",
            .japanese: "マジックルーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let magicRoom = MagicRoomMove.definition
}
