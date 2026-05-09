import Foundation

public enum PokemonMoveParseError: Error, Equatable, Sendable {
    case unknownMove(String)
}

public extension PokemonMove {
    struct ParseStrategy: Foundation.ParseStrategy, Sendable {
        public typealias ParseInput = String
        public typealias ParseOutput = PokemonMove

        public var locale: Locale

        public init(locale: Locale = .current) {
            self.locale = locale
        }

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
