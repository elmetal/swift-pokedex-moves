import Foundation

public extension PokemonMove {
    /// The Pokemon move known as タールショット in Japanese.
    ///
    /// The localized name of this move is `"Tar Shot"` in English and
    /// `"タールショット"` in Japanese.
    ///
    /// The move's raw value is `"tar-shot"`.
    static let tarShot = TarShotMove.move
}

enum TarShotMove {
    static let move = PokemonMove(rawValue: "tar-shot")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
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
            .english: "Tar Shot",
            .japanese: "タールショット",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tarShot = TarShotMove.definition
}
