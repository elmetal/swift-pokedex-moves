import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ブイブイブレイク in Japanese.
    ///
    /// The localized name of this move is `"Veevee Volley"` in English and
    /// `"ブイブイブレイク"` in Japanese.
    ///
    /// The move's raw value is `"veevee-volley"`.
    static let veeveeVolley = VeeveeVolleyMove.move
}

enum VeeveeVolleyMove {
    static let move = PokemonMove(rawValue: "veevee-volley")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [.letsGoPikachuLetsGoEevee, .swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Veevee Volley",
            .japanese: "ブイブイブレイク",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let veeveeVolley = VeeveeVolleyMove.definition
}
