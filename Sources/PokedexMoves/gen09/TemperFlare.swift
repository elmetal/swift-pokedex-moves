import Foundation

public extension PokemonMove {
    /// The Pokemon move known as やけっぱち in Japanese.
    ///
    /// The localized name of this move is `"Temper Flare"` in English and
    /// `"やけっぱち"` in Japanese.
    ///
    /// The move's raw value is `"temper-flare"`.
    static let temperFlare = TemperFlareMove.move
}

enum TemperFlareMove {
    static let move = PokemonMove(rawValue: "temper-flare")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 10,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ix,
        parameterHistory: [
            .init(
                versionGroups: [.scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Temper Flare",
            .japanese: "やけっぱち",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let temperFlare = TemperFlareMove.definition
}
