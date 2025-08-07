/*
 This source file is part of the Swift.org open source project

 Copyright (c) 2014 - 2025 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception

 See http://swift.org/LICENSE.txt for license information
 See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
*/

import PlayingCard
import Testing

struct SuitTests {

  @Test
  func testSuitStringEquality() {
    #expect(String(describing: Suit.spades) == "♠︎")
    #expect(String(describing: Suit.hearts) == "♡")
    #expect(String(describing: Suit.diamonds) == "♢")
    #expect(String(describing: Suit.clubs) == "♣︎")
  }

  @Test
  func testSuitComparable() {
    #expect(Suit.spades > Suit.diamonds)
    #expect(Suit.hearts > Suit.diamonds)
    #expect(Suit.hearts > Suit.clubs)
    #expect(Suit.diamonds > Suit.clubs)
  }
}
