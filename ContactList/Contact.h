//
//  Contact.h
//  ContactList
//
//  Created by Ion Sebastian Rodriguez Lara on 05/09/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *email;
-(instancetype) initWithName: (NSString*) name andEmail: (NSString*) email;
@end

NS_ASSUME_NONNULL_END
