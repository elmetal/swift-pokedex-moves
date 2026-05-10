import Foundation

public extension PokemonMove {
    /// The Pokemon move known as オーバードライブ in Japanese.
    ///
    /// The localized name of this move is `"Overdrive"` in English and
    /// `"オーバードライブ"` in Japanese.
    ///
    /// The move's raw value is `"overdrive"`.
    static let overdrive = OverdriveMove.move
}

enum OverdriveMove {
    static let move = PokemonMove(rawValue: "overdrive")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
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
            .english: "Overdrive",
            .japanese: "オーバードライブ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let overdrive = OverdriveMove.definition
}
