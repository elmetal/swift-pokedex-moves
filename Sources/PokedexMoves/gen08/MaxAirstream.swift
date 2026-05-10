import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイジェット in Japanese.
    ///
    /// The localized name of this move is `"Max Airstream"` in English and
    /// `"ダイジェット"` in Japanese.
    ///
    /// The move's raw value is `"max-airstream"`.
    static let maxAirstream = MaxAirstreamMove.move
}

enum MaxAirstreamMove {
    static let move = PokemonMove(rawValue: "max-airstream")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 10,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .physical,
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
            .english: "Max Airstream",
            .japanese: "ダイジェット",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxAirstream = MaxAirstreamMove.definition
}
