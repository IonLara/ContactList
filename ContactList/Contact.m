//
//  Contact.m
//  ContactList
//
//  Created by Ion Sebastian Rodriguez Lara on 05/09/23.
//

#import "Contact.h"

@implementation Contact
-(instancetype) initWithName: (NSString*) name andEmail: (NSString*) email
{
    self = [super init];
    if(self)
    {
        _name = name;
        _email = email;
    }
    return self;
}
@end
