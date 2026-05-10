import Foundation

public extension PokemonMove {
    /// The Pokemon move known as メテオビーム in Japanese.
    ///
    /// The localized name of this move is `"Meteor Beam"` in English and
    /// `"メテオビーム"` in Japanese.
    ///
    /// The move's raw value is `"meteor-beam"`.
    static let meteorBeam = MeteorBeamMove.move
}

enum MeteorBeamMove {
    static let move = PokemonMove(rawValue: "meteor-beam")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 10,
        power: .fixed(120),
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
            .english: "Meteor Beam",
            .japanese: "メテオビーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let meteorBeam = MeteorBeamMove.definition
}
