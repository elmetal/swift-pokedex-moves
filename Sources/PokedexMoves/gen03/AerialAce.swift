import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つばめがえし in Japanese.
    ///
    /// The localized name of this move is `"Aerial Ace"` in English and
    /// `"つばめがえし"` in Japanese.
    ///
    /// The move's raw value is `"aerial-ace"`.
    static let aerialAce = AerialAceMove.move
}

enum AerialAceMove {
    static let move = PokemonMove(rawValue: "aerial-ace")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .alwaysHits,
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
            .english: "Aerial Ace",
            .japanese: "つばめがえし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let aerialAce = AerialAceMove.definition
}
