//
//  ContactList.h
//  ContactList
//
//  Created by Ion Sebastian Rodriguez Lara on 05/09/23.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject
@property (nonatomic) NSMutableArray *contacts;
-(instancetype) init;
-(void)addContact:(Contact *)newContact;
-(void)listContacts;
@end

NS_ASSUME_NONNULL_END
