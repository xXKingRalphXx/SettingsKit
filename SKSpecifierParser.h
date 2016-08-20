#import <Preferences/Preferences.h>
// PSSpecifier is subclassed to get access to it's instance variables
@interface SKSpecifierParser : PSSpecifier
+(PSCellType)PSCellTypeFromString:(NSString*)str;
+(NSArray*)specifiersFromArray:(NSArray*)array forTarget:(PSListController*)target;
@end