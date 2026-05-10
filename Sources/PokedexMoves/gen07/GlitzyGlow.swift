import Foundation

public extension PokemonMove {
    /// The Pokemon move known as どばどばオーラ in Japanese.
    ///
    /// The localized name of this move is `"Glitzy Glow"` in English and
    /// `"どばどばオーラ"` in Japanese.
    ///
    /// The move's raw value is `"glitzy-glow"`.
    static let glitzyGlow = GlitzyGlowMove.move
}

enum GlitzyGlowMove {
    static let move = PokemonMove(rawValue: "glitzy-glow")
    static let parameters1 = PokemonMove.Parameters(
        type: .psychic,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .psychic,
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
            .english: "Glitzy Glow",
            .japanese: "どばどばオーラ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let glitzyGlow = GlitzyGlowMove.definition
}
