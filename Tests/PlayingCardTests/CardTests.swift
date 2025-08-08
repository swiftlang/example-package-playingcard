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

struct CardTests {

  @Test
  func cardSingle() {
    let card1 = PlayingCard(rank: .queen, suit: .diamonds)
    let card2 = PlayingCard(rank: .king, suit: .diamonds)
    let card3 = PlayingCard(rank: .ace, suit: .clubs)
    let card4 = PlayingCard(rank: .queen, suit: .diamonds)
    let card5 = PlayingCard(rank: .queen, suit: .clubs)

    #expect(card2 > card1)
    #expect(card1 < card2)
    #expect(card3 > card2)
    #expect(card2 < card3)
    #expect(card1 == card4)
    #expect(card4 > card5)
    #expect(card5 < card4)
  }

  @Test
  func cardStringEquality() {
    let card1 = PlayingCard(rank: .jack, suit: .clubs)
    let card2 = PlayingCard(rank: .two, suit: .hearts)
    let card3 = PlayingCard(rank: .queen, suit: .diamonds)

    #expect(String(describing: card1) == "♣︎ J")
    #expect(String(describing: card2) == "♡ 2")
    #expect(String(describing: card3) == "♢ Q")
  }
}
