import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイスチル in Japanese.
    ///
    /// The localized name of this move is `"Max Steelspike"` in English and
    /// `"ダイスチル"` in Japanese.
    ///
    /// The move's raw value is `"max-steelspike"`.
    static let maxSteelspike = MaxSteelspikeMove.move
}

enum MaxSteelspikeMove {
    static let move = PokemonMove(rawValue: "max-steelspike")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
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
            .english: "Max Steelspike",
            .japanese: "ダイスチル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxSteelspike = MaxSteelspikeMove.definition
}
