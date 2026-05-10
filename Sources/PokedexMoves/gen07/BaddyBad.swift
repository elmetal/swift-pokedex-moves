import Foundation

public extension PokemonMove {
    /// The Pokemon move known as わるわるゾーン in Japanese.
    ///
    /// The localized name of this move is `"Baddy Bad"` in English and
    /// `"わるわるゾーン"` in Japanese.
    ///
    /// The move's raw value is `"baddy-bad"`.
    static let baddyBad = BaddyBadMove.move
}

enum BaddyBadMove {
    static let move = PokemonMove(rawValue: "baddy-bad")
    static let parameters1 = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [.letsGoPikachuLetsGoEevee],
                parameters: parameters1
            ),
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Baddy Bad",
            .japanese: "わるわるゾーン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let baddyBad = BaddyBadMove.definition
}
