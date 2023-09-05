//
//  ContactList.m
//  ContactList
//
//  Created by Ion Sebastian Rodriguez Lara on 05/09/23.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList
-(instancetype) init
{
    self = [super init];
    if(self)
    {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact
{
    [_contacts addObject:newContact];
}
-(void)listContacts
{
    NSInteger index = 0;
    NSMutableString *list = [NSMutableString stringWithString:@""];
    for (Contact *contact in _contacts) {
        NSString *string = [NSString stringWithFormat:@"\n%ld:%@ ()",(long)index, contact.name];
      [list appendString:string];
        index++;
    }
    NSLog(list);
}
@end
