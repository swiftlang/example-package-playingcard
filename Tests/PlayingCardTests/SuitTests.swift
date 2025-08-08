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

import PlayingCard
import Testing

struct SuitTests {

  @Test
  func suitStringEquality() {
    #expect(String(describing: Suit.spades) == "♠︎")
    #expect(String(describing: Suit.hearts) == "♡")
    #expect(String(describing: Suit.diamonds) == "♢")
    #expect(String(describing: Suit.clubs) == "♣︎")
  }

  @Test
  func suitComparable() {
    #expect(Suit.spades > Suit.diamonds)
    #expect(Suit.hearts > Suit.diamonds)
    #expect(Suit.hearts > Suit.clubs)
    #expect(Suit.diamonds > Suit.clubs)
  }
}
