import Foundation

public extension PokemonMove {
    /// The Pokemon move known as コスモパワー in Japanese.
    ///
    /// The localized name of this move is `"Cosmic Power"` in English and
    /// `"コスモパワー"` in Japanese.
    ///
    /// The move's raw value is `"cosmic-power"`.
    static let cosmicPower = CosmicPowerMove.move
}

enum CosmicPowerMove {
    static let move = PokemonMove(rawValue: "cosmic-power")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Cosmic Power",
            .japanese: "コスモパワー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let cosmicPower = CosmicPowerMove.definition
}
