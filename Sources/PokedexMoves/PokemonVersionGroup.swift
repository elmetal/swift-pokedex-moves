/// A group of Pokemon game versions that share move data.
public enum PokemonVersionGroup: String, Hashable, Codable, Sendable, CaseIterable {
    case redBlue
    case yellow
    case goldSilver
    case crystal
    case rubySapphire
    case emerald
    case fireRedLeafGreen
    case diamondPearl
    case platinum
    case heartGoldSoulSilver
    case blackWhite
    case black2White2
    case xY
    case omegaRubyAlphaSapphire
    case sunMoon
    case ultraSunUltraMoon
    case letsGoPikachuLetsGoEevee
    case swordShield
    case brilliantDiamondShiningPearl
    case legendsArceus
    case scarletViolet
    case champions

    /// The generation that contains the version group.
    public var generation: PokemonGeneration {
        switch self {
        case .redBlue, .yellow:
            .i
        case .goldSilver, .crystal:
            .ii
        case .rubySapphire, .emerald, .fireRedLeafGreen:
            .iii
        case .diamondPearl, .platinum, .heartGoldSoulSilver:
            .iv
        case .blackWhite, .black2White2:
            .v
        case .xY, .omegaRubyAlphaSapphire:
            .vi
        case .sunMoon, .ultraSunUltraMoon, .letsGoPikachuLetsGoEevee:
            .vii
        case .swordShield, .brilliantDiamondShiningPearl, .legendsArceus:
            .viii
        case .scarletViolet:
            .ix
        case .champions:
            .champions
        }
    }

    /// The latest version group represented by this package.
    public static var latest: Self { .champions }

    /// Returns all version groups in the specified generation.
    public static func all(in generation: PokemonGeneration) -> [Self] {
        allCases.filter { $0.generation == generation }
    }
}
