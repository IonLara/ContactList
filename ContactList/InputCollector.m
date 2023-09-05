//
//  InputCollector.m
//  ContactList
//
//  Created by Ion Sebastian Rodriguez Lara on 05/09/23.
//

#import "InputCollector.h"

@implementation InputCollector
-(NSString*)inputForPrompt:(NSString *)promptString
{
    NSLog(promptString);
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChar];
    NSCharacterSet *newlineCharacterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *parsedString = [inputString stringByTrimmingCharactersInSet:newlineCharacterSet];
    return parsedString;
}
@end
