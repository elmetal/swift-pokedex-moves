import Foundation

public extension PokemonMove {
    /// The Pokemon move known as プラズマシャワー in Japanese.
    ///
    /// The localized name of this move is `"Ion Deluge"` in English and
    /// `"プラズマシャワー"` in Japanese.
    ///
    /// The move's raw value is `"ion-deluge"`.
    static let ionDeluge = IonDelugeMove.move
}

enum IonDelugeMove {
    static let move = PokemonMove(rawValue: "ion-deluge")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 25,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 1,
        category: .status,
        target: .battlefield
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Ion Deluge",
            .japanese: "プラズマシャワー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let ionDeluge = IonDelugeMove.definition
}
