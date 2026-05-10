import Foundation

public extension PokemonMove {
    /// The Pokemon move known as トリックルーム in Japanese.
    ///
    /// The localized name of this move is `"Trick Room"` in English and
    /// `"トリックルーム"` in Japanese.
    ///
    /// The move's raw value is `"trick-room"`.
    static let trickRoom = TrickRoomMove.move
}

enum TrickRoomMove {
    static let move = PokemonMove(rawValue: "trick-room")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: -7,
        category: .status,
        target: .battlefield
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
            .english: "Trick Room",
            .japanese: "トリックルーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let trickRoom = TrickRoomMove.definition
}
