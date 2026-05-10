import Foundation

public extension PokemonMove {
    /// The Pokemon move known as Ｇのちから in Japanese.
    ///
    /// The localized name of this move is `"Grav Apple"` in English and
    /// `"Ｇのちから"` in Japanese.
    ///
    /// The move's raw value is `"grav-apple"`.
    static let gravApple = GravAppleMove.move
}

enum GravAppleMove {
    static let move = PokemonMove(rawValue: "grav-apple")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Grav Apple",
            .japanese: "Ｇのちから",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let gravApple = GravAppleMove.definition
}
