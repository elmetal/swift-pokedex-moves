import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ひやみず in Japanese.
    ///
    /// The localized name of this move is `"Chilling Water"` in English and
    /// `"ひやみず"` in Japanese.
    ///
    /// The move's raw value is `"chilling-water"`.
    static let chillingWater = ChillingWaterMove.move
}

enum ChillingWaterMove {
    static let move = PokemonMove(rawValue: "chilling-water")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 20,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Chilling Water",
            .japanese: "ひやみず",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let chillingWater = ChillingWaterMove.definition
}
