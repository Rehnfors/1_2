#include "deck.h"
#include "gtest/gtest.h"

TEST(Card, init)
{
    SUCCEED();
}

TEST(Deck, init)
{
    SUCCEED();
}

TEST(Card, equal)
{
    Card card1 = Card(7, Suit::Hearts);
    Card card2 = Card(7, Suit::Hearts);

    EXPECT_EQ(card1, card2);
}

TEST(Card, lessthan)
{
    Card card1 = Card(1, Suit::Hearts);
    Card card2 = Card(2, Suit::Clubs);

    EXPECT_LT(card1, card2);
}

TEST(Card, greaterthan)
{
    Card card1 = Card(1, Suit::Hearts);
    Card card2 = Card(2, Suit::Clubs);

    EXPECT_GT(card2, card1);
}

TEST(Deck, sort)
{
    Deck d = Deck();

    d.shuffle();
    d.sort();

    EXPECT_TRUE(is_sorted(sorted_cards.begin(), sorted_cards.end());
}

TEST(Deck, insert)
{
    Card c = Card(1, Suit::Hearts);
    vector<Card> vec;

    Deck::insert(vec, c);

    EXPECT_EQ(vec.size(), 1);
}

TEST(Deck, size)
{
    Deck d = Deck();

    EXPECT_EQ(d.size(), 55);
}