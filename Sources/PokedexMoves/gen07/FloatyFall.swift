import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ふわふわフォール in Japanese.
    ///
    /// The localized name of this move is `"Floaty Fall"` in English and
    /// `"ふわふわフォール"` in Japanese.
    ///
    /// The move's raw value is `"floaty-fall"`.
    static let floatyFall = FloatyFallMove.move
}

enum FloatyFallMove {
    static let move = PokemonMove(rawValue: "floaty-fall")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(95),
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
            .english: "Floaty Fall",
            .japanese: "ふわふわフォール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let floatyFall = FloatyFallMove.definition
}
