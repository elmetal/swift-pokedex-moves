/// A value that identifies a Pokemon move.
///
/// Use the static properties, such as ``tackle``, to refer to moves in the
/// standard catalog. You can also create custom identifiers with
/// ``init(rawValue:)``.
public struct PokemonMove: Hashable, Codable, Sendable, RawRepresentable {
    /// The move's raw identifier.
    public let rawValue: String

    /// Creates a move with the specified raw identifier.
    public init(rawValue: String) {
        self.rawValue = rawValue
    }
}
