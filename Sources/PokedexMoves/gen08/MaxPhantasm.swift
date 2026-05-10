import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイホロウ in Japanese.
    ///
    /// The localized name of this move is `"Max Phantasm"` in English and
    /// `"ダイホロウ"` in Japanese.
    ///
    /// The move's raw value is `"max-phantasm"`.
    static let maxPhantasm = MaxPhantasmMove.move
}

enum MaxPhantasmMove {
    static let move = PokemonMove(rawValue: "max-phantasm")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
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
            .english: "Max Phantasm",
            .japanese: "ダイホロウ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxPhantasm = MaxPhantasmMove.definition
}
