//
//  Phone.h
//  ContactList
//
//  Created by Ion Sebastian Rodriguez Lara on 05/09/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Phone : NSObject
@property (nonatomic) NSString *label;
@property (nonatomic) NSString *number;
-(instancetype)initWithLabel: (NSString*) label andNumber: (NSString*) number;
@end

NS_ASSUME_NONNULL_END
