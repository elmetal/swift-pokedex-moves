import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スターアサルト in Japanese.
    ///
    /// The localized name of this move is `"Meteor Assault"` in English and
    /// `"スターアサルト"` in Japanese.
    ///
    /// The move's raw value is `"meteor-assault"`.
    static let meteorAssault = MeteorAssaultMove.move
}

enum MeteorAssaultMove {
    static let move = PokemonMove(rawValue: "meteor-assault")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 5,
        power: .fixed(150),
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
            .english: "Meteor Assault",
            .japanese: "スターアサルト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let meteorAssault = MeteorAssaultMove.definition
}
