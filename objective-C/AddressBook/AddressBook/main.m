//
//  main.m
//  AddressBook
//
//  Created by Yan, Tristan on 12/15/15.
//  Copyright © 2015 Yan, Tristan. All rights reserved.
//

#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"atony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        // Set up a new address book
        AddressBook *myBook = [[AddressBook alloc] initWithName: @"Linda’s Address Book"];
        NSLog (@"Entries in address book after creation: %li", [myBook entries]);
        // Now set up four address cards
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        // Add the cards to the address book
        [myBook addCard: card1]; [myBook addCard: card2]; [myBook addCard: card3]; [myBook addCard: card4];
        NSLog (@"Entries in address book after adding cards: %li", [myBook entries]);
        // List all the entries in the book now
        [myBook list];
        [myBook sort];
        [myBook list];
    }
    return 0;
}
