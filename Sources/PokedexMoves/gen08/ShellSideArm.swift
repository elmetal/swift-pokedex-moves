import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シェルアームズ in Japanese.
    ///
    /// The localized name of this move is `"Shell Side Arm"` in English and
    /// `"シェルアームズ"` in Japanese.
    ///
    /// The move's raw value is `"shell-side-arm"`.
    static let shellSideArm = ShellSideArmMove.move
}

enum ShellSideArmMove {
    static let move = PokemonMove(rawValue: "shell-side-arm")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Shell Side Arm",
            .japanese: "シェルアームズ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shellSideArm = ShellSideArmMove.definition
}
