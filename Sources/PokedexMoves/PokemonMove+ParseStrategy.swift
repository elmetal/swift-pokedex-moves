import Foundation

/// Errors thrown while parsing a move name.
public enum PokemonMoveParseError: Error, Equatable, Sendable {
    /// No standard move matched the provided input.
    case unknownMove(String)
}

public extension PokemonMove {
    /// A parse strategy that reads localized move names and raw identifiers.
    struct ParseStrategy: Foundation.ParseStrategy, Sendable {
        public typealias ParseInput = String
        public typealias ParseOutput = PokemonMove

        /// The locale used to match localized move names.
        public var locale: Locale

        /// Creates a move parse strategy.
        public init(locale: Locale = .current) {
            self.locale = locale
        }

        /// Parses a move from a localized name or raw identifier.
        public func parse(_ value: String) throws -> PokemonMove {
            guard let definition = PokemonMoveDefinitions.all.first(where: {
                $0.matchesName(value, locale: locale)
            }) else {
                throw PokemonMoveParseError.unknownMove(value)
            }

            return definition.move
        }
    }
}
