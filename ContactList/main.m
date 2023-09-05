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
        
        while (true) {
            NSString *selection =  [inputCollector inputForPrompt:@"\n\nWhat do you want to do next?\n\nnew - Create new contact\n\nlist - List all contacts\n\nquit - Exit Application"];
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
            } else
            {
                NSLog(@"Invalid Input!");
            }
        }
    }
    return 0;
}
