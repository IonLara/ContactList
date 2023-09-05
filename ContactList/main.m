//
//  main.m
//  ContactList
//
//  Created by Ion Sebastian Rodriguez Lara on 05/09/23.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Welcome to your Contact List App!");
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] init];
        Contact *cont1 = [[Contact alloc] initWithName:@"Ion" andEmail:@"ion@mail.com"];
        Contact *cont2 = [[Contact alloc] initWithName:@"Simone" andEmail:@"sim1@mail.com"];
        Contact *cont3 = [[Contact alloc] initWithName:@"Melissa" andEmail:@"meli@mail.com"];
        Contact *cont4 = [[Contact alloc] initWithName:@"Kav" andEmail:@"kav@mail.com"];
        [contactList addContact:cont1];
        [contactList addContact:cont2];
        [contactList addContact:cont3];
        [contactList addContact:cont4];
        
        while (true) {
            NSString *selection =  [inputCollector inputForPrompt:@"\n\nWhat do you want to do next?\n\nnew - Create new contact\n\nlist - List all contacts\n\nshow <index> - Shows information of contact\n\nfind <text> - Lists the info of all matches\n\nquit - Exit Application"];
            if([selection  isEqual: @"quit"])
            {
                NSLog(@"Buh-Bye!");
                break;
            } else if([selection isEqual:@"new"])
            {
                NSString *contactName = [inputCollector inputForPrompt:@"\n\nNew Contact Name:\n"];
                NSString *contactEmail = [inputCollector inputForPrompt:@"\n\nNew Contact Email:\n"];
                
                Contact *newContact = [[Contact alloc] initWithName:contactName andEmail:contactEmail];
                [contactList addContact:newContact];
            } else if([selection isEqual:@"list"])
            {
                [contactList listContacts];
            } else if([selection containsString:@"show"])
            {
                unichar lastChar = [selection characterAtIndex:[selection length] - 1];
                NSInteger index = (NSInteger)lastChar;
                [contactList showContact:index];
            } else if([selection containsString:@"find"])
            {
                NSMutableString *name = [NSMutableString stringWithString:selection];
                [name deleteCharactersInRange:NSMakeRange(0, 5)];
                [contactList findContact:name];
            }
        }
    }
    return 0;
}
