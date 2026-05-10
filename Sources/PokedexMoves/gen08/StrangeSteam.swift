import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ワンダースチーム in Japanese.
    ///
    /// The localized name of this move is `"Strange Steam"` in English and
    /// `"ワンダースチーム"` in Japanese.
    ///
    /// The move's raw value is `"strange-steam"`.
    static let strangeSteam = StrangeSteamMove.move
}

enum StrangeSteamMove {
    static let move = PokemonMove(rawValue: "strange-steam")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 10,
        power: .fixed(90),
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
            .english: "Strange Steam",
            .japanese: "ワンダースチーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let strangeSteam = StrangeSteamMove.definition
}
