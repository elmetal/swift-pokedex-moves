import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ムゲンダイビーム in Japanese.
    ///
    /// The localized name of this move is `"Eternabeam"` in English and
    /// `"ムゲンダイビーム"` in Japanese.
    ///
    /// The move's raw value is `"eternabeam"`.
    static let eternabeam = EternabeamMove.move
}

enum EternabeamMove {
    static let move = PokemonMove(rawValue: "eternabeam")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 5,
        power: .fixed(160),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Eternabeam",
            .japanese: "ムゲンダイビーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let eternabeam = EternabeamMove.definition
}
