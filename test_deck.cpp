#include "deck.h"
#include "gtest/gtest.h"

TEST(Card, init)
{
    Card c = Card(1, Suit::Hearts); //Initiates a card
    cout << c << endl; //print card
    SUCCEED();
}

TEST(Deck, init)
{
    Deck d = Deck(); //Initiates deck
    cout << d << endl; // Prints deck
    SUCCEED();
}

TEST(Deck, insert)
{
    Card c = Card(1, Suit::Hearts); // Initiates a card
    vector<Card> vec; // Declare empty vector

    Deck::insert(vec, c); // Insert the card in the empty vector

    EXPECT_EQ(vec.size(), 1); // Vector size should then be 1
}

TEST(Card, equal)
{
    // Initiating 2 cards with the same rank and suit
    Card card1 = Card(7, Suit::Hearts);
    Card card2 = Card(7, Suit::Hearts);

    EXPECT_EQ(card1, card2); // should be equal
}

TEST(Card, lessthan)
{
    // Initiating 2 different cards
    Card card1 = Card(1, Suit::Hearts);
    Card card2 = Card(2, Suit::Clubs);

    EXPECT_LT(card1, card2); // 1 should be less than 2
}

TEST(Card, greaterthan)
{
    Card card1 = Card(1, Suit::Hearts);
    Card card2 = Card(2, Suit::Clubs);

    EXPECT_GT(card2, card1); // 2 should be greater than 1
}

TEST(Deck, size)
{
    Deck d = Deck(); // Initiating a new deck

    EXPECT_EQ(d.size(), 55); // Size should be 52 + 3 jokers
}

TEST(Deck, sort)
{
    Deck d = Deck(); // Initiating a new deck (sorted)

    d.shuffle();
    d.sort();

    vector<Card> vec = d.get_cards(); // the is_sorted() method needs to iterate through a vector
                                      // this can be done in other ways, i just thought this would
                                      // be a simple solution.

    EXPECT_TRUE(is_sorted(vec.begin(), vec.end()));
}

TEST(Deck, take_test)
{
    Deck d = Deck();
    EXPECT_EQ(d.size(), 55);

    Card c = d.take(); //takes a card from the deck
    EXPECT_EQ(d.size(), 54); // size should be 54
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