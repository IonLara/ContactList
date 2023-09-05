//
//  ContactList.h
//  ContactList
//
//  Created by Ion Sebastian Rodriguez Lara on 05/09/23.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "Phone.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject
@property (nonatomic) NSMutableArray<Contact *>  *contacts;
@property (nonatomic) NSMutableArray<NSMutableArray<Phone*>*> *phoneNumbers;
-(instancetype) init;
-(void)addContact:(Contact *)newContact;
-(void)listContacts;
-(void)showContact:(NSInteger)index;
-(void)findContact: (NSString*)string;
-(BOOL)confirmEmail: (NSString*)email;
-(void)addPhone: (NSInteger)index andPhone: (Phone*) phone;
@end

NS_ASSUME_NONNULL_END
