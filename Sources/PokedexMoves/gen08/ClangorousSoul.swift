import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ソウルビート in Japanese.
    ///
    /// The localized name of this move is `"Clangorous Soul"` in English and
    /// `"ソウルビート"` in Japanese.
    ///
    /// The move's raw value is `"clangorous-soul"`.
    static let clangorousSoul = ClangorousSoulMove.move
}

enum ClangorousSoulMove {
    static let move = PokemonMove(rawValue: "clangorous-soul")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Clangorous Soul",
            .japanese: "ソウルビート",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let clangorousSoul = ClangorousSoulMove.definition
}
