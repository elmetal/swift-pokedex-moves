import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイドラグーン in Japanese.
    ///
    /// The localized name of this move is `"Max Wyrmwind"` in English and
    /// `"ダイドラグーン"` in Japanese.
    ///
    /// The move's raw value is `"max-wyrmwind"`.
    static let maxWyrmwind = MaxWyrmwindMove.move
}

enum MaxWyrmwindMove {
    static let move = PokemonMove(rawValue: "max-wyrmwind")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
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
            .english: "Max Wyrmwind",
            .japanese: "ダイドラグーン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxWyrmwind = MaxWyrmwindMove.definition
}
