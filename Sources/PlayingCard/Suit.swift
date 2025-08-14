//===----------------------------------------------------------------------===//
//
// This source file is part of the example package playingcard open source project
//
// Copyright (c) 2015-2025 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
//
//===----------------------------------------------------------------------===//

/// An enumeration that defines the suit of a playing card.
public enum Suit: String, CaseIterable {
  case spades, hearts, diamonds, clubs
}

// MARK: - Comparable

/// An extension that allows comparisons between suits.
extension Suit: Comparable {
  public static func < (lhs: Suit, rhs: Suit) -> Bool {
    switch (lhs, rhs) {
    case (_, _) where lhs == rhs:
      return false
    case (.spades, _),
      (.hearts, .diamonds), (.hearts, .clubs),
      (.diamonds, .clubs):
      return false
    default:
      return true
    }
  }
}

// MARK: - CustomStringConvertible

/// An extension that provides a human-readable description of a suit.
extension Suit: CustomStringConvertible {
  public var description: String {
    switch self {
    case .spades: return "♠︎"
    case .hearts: return "♡"
    case .diamonds: return "♢"
    case .clubs: return "♣︎"
    }
  }
}
