import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ひみつのちから in Japanese.
    ///
    /// The localized name of this move is `"Secret Power"` in English and
    /// `"ひみつのちから"` in Japanese.
    ///
    /// The move's raw value is `"secret-power"`.
    static let secretPower = SecretPowerMove.move
}

enum SecretPowerMove {
    static let move = PokemonMove(rawValue: "secret-power")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(70),
        hits: .one,
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
            .english: "Secret Power",
            .japanese: "ひみつのちから",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let secretPower = SecretPowerMove.definition
}
