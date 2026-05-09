import Foundation

public extension PokemonMoveCategory {
    struct FormatStyle: Foundation.FormatStyle, Sendable {
        public typealias FormatInput = PokemonMoveCategory
        public typealias FormatOutput = String

        public var locale: Locale

        public init(locale: Locale = .current) {
            self.locale = locale
        }

        public func format(_ value: PokemonMoveCategory) -> String {
            switch (value, locale.language.languageCode) {
            case (.physical, .japanese):
                "物理"
            case (.special, .japanese):
                "特殊"
            case (.status, .japanese):
                "変化"
            case (.physical, _):
                "Physical"
            case (.special, _):
                "Special"
            case (.status, _):
                "Status"
            }
        }
    }

    func formatted() -> String {
        formatted(.init())
    }

    func formatted(locale: Locale) -> String {
        formatted(.init(locale: locale))
    }

    func formatted(_ style: FormatStyle) -> String {
        style.format(self)
    }
}

