import Foundation

public extension PokemonMove {
    /// The Pokemon move known as てっていこうせん in Japanese.
    ///
    /// The localized name of this move is `"Steel Beam"` in English and
    /// `"てっていこうせん"` in Japanese.
    ///
    /// The move's raw value is `"steel-beam"`.
    static let steelBeam = SteelBeamMove.move
}

enum SteelBeamMove {
    static let move = PokemonMove(rawValue: "steel-beam")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 5,
        power: .fixed(140),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Steel Beam",
            .japanese: "てっていこうせん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let steelBeam = SteelBeamMove.definition
}
