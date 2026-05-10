import Foundation

public extension PokemonMove {
    /// The Pokemon move known as マルチアタック in Japanese.
    ///
    /// The localized name of this move is `"Multi-Attack"` in English and
    /// `"マルチアタック"` in Japanese.
    ///
    /// The move's raw value is `"multi-attack"`.
    static let multiAttack = MultiAttackMove.move
}

enum MultiAttackMove {
    static let move = PokemonMove(rawValue: "multi-attack")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [.sunMoon, .ultraSunUltraMoon, .letsGoPikachuLetsGoEevee],
                parameters: parameters1
            ),
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Multi-Attack",
            .japanese: "マルチアタック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let multiAttack = MultiAttackMove.definition
}
