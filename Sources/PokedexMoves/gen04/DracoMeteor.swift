import Foundation

public extension PokemonMove {
    /// The Pokemon move known as りゅうせいぐん in Japanese.
    ///
    /// The localized name of this move is `"Draco Meteor"` in English and
    /// `"りゅうせいぐん"` in Japanese.
    ///
    /// The move's raw value is `"draco-meteor"`.
    static let dracoMeteor = DracoMeteorMove.move
}

enum DracoMeteorMove {
    static let move = PokemonMove(rawValue: "draco-meteor")
    static let parameters1 = PokemonMove.Parameters(
        type: .dragon,
        pp: 5,
        power: .fixed(140),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dragon,
        pp: 5,
        power: .fixed(130),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver, .blackWhite, .black2White2],
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
            .english: "Draco Meteor",
            .japanese: "りゅうせいぐん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dracoMeteor = DracoMeteorMove.definition
}
