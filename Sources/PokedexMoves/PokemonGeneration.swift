/// A main-series Pokemon generation.
public enum PokemonGeneration: Int, Hashable, Codable, Sendable {
    case i = 1
    case ii = 2
    case iii = 3
    case iv = 4
    case v = 5
    case vi = 6
    case vii = 7
    case viii = 8
    case ix = 9
    case champions = -1

    /// The latest generation represented by this package.
    public static var latest: Self { .champions }
}
