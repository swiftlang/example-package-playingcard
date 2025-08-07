/*
 This source file is part of the Swift.org open source project

 Copyright (c) 2014 - 2025 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception

 See http://swift.org/LICENSE.txt for license information
 See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
*/

import PlayingCard
import Testing

struct RankTests {

  @Test
  func testRankStringEquality() {
    let numbers = [2, 3, 4, 5, 6, 7, 8, 9, 10]
    let suits = numbers.map { Rank(rawValue: $0) }.compactMap { $0 }.map {
      Int(String(describing: $0)) ?? 0
    }

    #expect(String(describing: Rank.two) == "2")
    #expect(String(describing: Rank.ten) == "10")
    #expect(String(describing: Rank.ace) == "A")
    #expect(String(describing: Rank.jack) == "J")
    #expect(String(describing: Rank.queen) == "Q")
    #expect(String(describing: Rank.king) == "K")
    #expect(numbers.count == suits.count)
  }

  @Test
  func testRankComparable() {
    #expect(Rank.ace > Rank.two)
    #expect(Rank.ace > Rank.king)
    #expect(Rank.king > Rank.queen)
    #expect(Rank.queen > Rank.jack)
    #expect(Rank.jack > Rank.ten)
  }

}
