//
//  ContactList.m
//  ContactList
//
//  Created by Ion Sebastian Rodriguez Lara on 05/09/23.
//

#import "ContactList.h"
#import "Contact.h"
#import "Phone.h"

@implementation ContactList
-(instancetype) init
{
    self = [super init];
    if(self)
    {
        _contacts = [[NSMutableArray<Contact *>  alloc] init];
        _phoneNumbers = [[NSMutableArray<NSMutableArray<Phone*>*> alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact
{
    [_contacts addObject:newContact];
    _phoneNumbers[_contacts.count - 1] = [[NSMutableArray<Phone*> alloc] init];
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
-(void)showContact: (NSInteger)index
{
    NSInteger num = index - 48;
    if(num >= _contacts.count)
    {
        NSLog(@"\nContact with index %ld not found...\n", (long)num);
    } else
    {
        NSMutableString *result = [NSMutableString stringWithFormat:@"\n\n%@:\n-%@\n ",_contacts[num].name,_contacts[num].email];
        for(Phone *phone in _phoneNumbers[num])
        {
            [result appendFormat:@"%@: %@\n", phone.label, phone.number];
        }
        NSLog(result);
    }
}
-(void)findContact: (NSString*)string
{
    NSMutableString *result = [NSMutableString stringWithString:@"\nResults:"];
    NSInteger index = 0;
    for(Contact *contact in _contacts)
    {
        if([contact.name containsString:string] || [contact.email containsString:string])
        {
            if(index > 0)
            {
                [result appendString:@"\n---------------------------------\n"];
            }
            [result appendFormat:@"\n%@:\n-%@",contact.name, contact.email];
            index++;
        }
    }
    if(index == 0)
    {
        NSLog(@"No Results...");
    } else {
        NSLog(@"%@",result);
    }
}

-(BOOL)confirmEmail: (NSString*)email
{
    BOOL hasMatch = false;
    for(Contact *contact in _contacts)
    {
        if([contact.email isEqual:email])
        {
            hasMatch = true;
            break;
        }
    }
    return hasMatch;
}
-(void)addPhone: (NSInteger)index andPhone: (Phone*) phone
{
    [_phoneNumbers[index - 48] addObject:phone];
}
@end
