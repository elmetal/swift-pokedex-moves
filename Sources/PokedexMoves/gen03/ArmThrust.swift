import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つっぱり in Japanese.
    ///
    /// The localized name of this move is `"Arm Thrust"` in English and
    /// `"つっぱり"` in Japanese.
    ///
    /// The move's raw value is `"arm-thrust"`.
    static let armThrust = ArmThrustMove.move
}

enum ArmThrustMove {
    static let move = PokemonMove(rawValue: "arm-thrust")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .fixed(15),
        hits: .range(2...5),
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Arm Thrust",
            .japanese: "つっぱり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let armThrust = ArmThrustMove.definition
}
