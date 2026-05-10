import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いのちのしずく in Japanese.
    ///
    /// The localized name of this move is `"Life Dew"` in English and
    /// `"いのちのしずく"` in Japanese.
    ///
    /// The move's raw value is `"life-dew"`.
    static let lifeDew = LifeDewMove.move
}

enum LifeDewMove {
    static let move = PokemonMove(rawValue: "life-dew")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .userAndAllies
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
            .english: "Life Dew",
            .japanese: "いのちのしずく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lifeDew = LifeDewMove.definition
}
