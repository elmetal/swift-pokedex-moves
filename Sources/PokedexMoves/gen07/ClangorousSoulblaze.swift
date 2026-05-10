import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ブレイジングソウルビート in Japanese.
    ///
    /// The localized name of this move is `"Clangorous Soulblaze"` in English and
    /// `"ブレイジングソウルビート"` in Japanese.
    ///
    /// The move's raw value is `"clangorous-soulblaze"`.
    static let clangorousSoulblaze = ClangorousSoulblazeMove.move
}

enum ClangorousSoulblazeMove {
    static let move = PokemonMove(rawValue: "clangorous-soulblaze")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 1,
        power: .fixed(185),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .ultraSunUltraMoon,
                    .letsGoPikachuLetsGoEevee,
                    .swordShield,
                    .brilliantDiamondShiningPearl,
                    .legendsArceus,
                    .scarletViolet,
                    .champions,
                ],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Clangorous Soulblaze",
            .japanese: "ブレイジングソウルビート",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let clangorousSoulblaze = ClangorousSoulblazeMove.definition
}
