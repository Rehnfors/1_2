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

TEST(Deck, insert)
{
    Card c = Card(1, Suit::Hearts);
    vector<Card> vec;

    Deck::insert(vec, c);

    EXPECT_EQ(vec.size(), 1);
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

TEST(Deck, size)
{
    Deck d = Deck();

    EXPECT_EQ(d.size(), 55);
}

TEST(Deck, sort)
{
    Deck d = Deck();

    d.shuffle();
    d.sort();

    vector<Card> vec = d.get_cards();

    EXPECT_TRUE(is_sorted(vec.begin(), vec.end()));
}

TEST(Deck, take_test)
{
    Deck d = Deck();
    EXPECT_EQ(d.size(), 55);

    Card c = d.take();
    EXPECT_EQ(d.size(), 54);
}

TEST(Deck, put_test)
{
    Deck d = Deck();
    EXPECT_EQ(d.size(), 55);

    Card c = d.take();
    EXPECT_EQ(d.size(), 54);

    d.put(c);
    EXPECT_EQ(d.size(), 55);
}