//
//  InputCollector.h
//  ContactList
//
//  Created by Ion Sebastian Rodriguez Lara on 05/09/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject
@property (nonatomic) NSMutableArray<NSString*>* history;
-(NSString*)inputForPrompt:(NSString *)promptString;
-(void)getHistory;
@end

NS_ASSUME_NONNULL_END
