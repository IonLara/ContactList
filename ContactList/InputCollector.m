//
//  InputCollector.m
//  ContactList
//
//  Created by Ion Sebastian Rodriguez Lara on 05/09/23.
//

#import "InputCollector.h"

@implementation InputCollector
-(instancetype)init
{
    self = [super init];
    if(self)
    {
        _history = [[NSMutableArray<NSString*> alloc] init];
    }
    return self;
}
-(NSString*)inputForPrompt:(NSString *)promptString
{
    NSLog(promptString);
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChar];
    NSCharacterSet *newlineCharacterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *parsedString = [inputString stringByTrimmingCharactersInSet:newlineCharacterSet];
    
    if(_history.count == 3)
    {
        [_history removeObjectAtIndex:0];
    }
    [_history addObject:parsedString];
    
    return parsedString;
}
-(void)getHistory
{
    NSMutableString *result = [NSMutableString stringWithString:@"\n\n"];
    for(NSString *string in _history)
    {
        [result appendFormat:@"%@\n",string];
    }
    NSLog(result);
}

@end
