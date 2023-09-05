//
//  Phone.m
//  ContactList
//
//  Created by Ion Sebastian Rodriguez Lara on 05/09/23.
//

#import "Phone.h"

@implementation Phone
-(instancetype)initWithLabel: (NSString*) label andNumber: (NSString*) number
{
    self = [super init];
    if(self)
    {
        _label = label;
        _number = number;
    }
    return self;
}
@end
