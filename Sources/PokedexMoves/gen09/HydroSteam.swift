import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハイドロスチーム in Japanese.
    ///
    /// The localized name of this move is `"Hydro Steam"` in English and
    /// `"ハイドロスチーム"` in Japanese.
    ///
    /// The move's raw value is `"hydro-steam"`.
    static let hydroSteam = HydroSteamMove.move
}

enum HydroSteamMove {
    static let move = PokemonMove(rawValue: "hydro-steam")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ix,
        parameterHistory: [
            .init(
                versionGroups: [.scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Hydro Steam",
            .japanese: "ハイドロスチーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hydroSteam = HydroSteamMove.definition
}
