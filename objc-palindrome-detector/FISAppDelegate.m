//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Override point for customization after application launch.
    
    /**
     
     * Write your check code here.
     
     */
    
    
    NSString *palindrome = @"palindrome";
    NSString *reversed = [self stringByReversingByReversingString:palindrome];
    NSLog(@"%@", palindrome);
    NSLog(@"%@", reversed);
    NSLog(@"%@ : %@", palindrome, reversed);
    
    NSString *racecar = @"racecar";
    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    NSLog(@"%d : %@", racecarIsPalindrome, racecar);
    
    BOOL palindromeIsPalindrome = [self stringIsPalindrome:palindrome];
    NSLog(@"%d : %@", palindromeIsPalindrome, palindrome);
    
    NSString *bob = @"Bob";
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%d : %@", bobIsPalindrome, bob);
    
    NSString *kanakanak = @"Kanakanak";
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
    
    NSString *aibohphobia = @"Aibohphobia";
    BOOL aibophobiaIsPalindrome = [self stringIsPalindrome:aibohphobia];
    NSLog(@"%d : %@", aibophobiaIsPalindrome, aibohphobia);
    
    NSString *notAPalindrome = @"This is not a palindrome";
    BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome:notAPalindrome];
    NSLog(@"%d : %@", notAPalindromeIsPalindrome, notAPalindrome);
    
    NSString *neverOdd = @"Never odd or even";
    BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverOdd];
    NSLog(@"%d : %@", neverOddIsPalindrome, neverOdd);
    
    NSString *iPreferPi = @"I prefer pi";
    BOOL IPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d : %@", IPreferPiIsPalindrome, iPreferPi);
    
    NSString *fleeToMe = @"Flee to me, remote elf.";
    BOOL FleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@"%d : %@", FleeToMeIsPalindrome, fleeToMe);
    
    NSString *norma = @"Norma is as selfless as i am, Ron.";
    BOOL normaIsPalindrome = [self stringIsPalindrome:norma];
    NSLog(@"%d : %@", normaIsPalindrome, norma);
    
    NSString *papyaWar = @"No sir! Away! Papya war is on.";
    BOOL papyaWarIsPalindrome = [self stringIsPalindrome:papyaWar];
    NSLog(@"%d : %@", papyaWarIsPalindrome, papyaWar);
    
    
    // do not alter
    return YES;  //
}   ///////////////

- (BOOL) stringIsPalindrome:(NSString *)string {
    
    NSArray *punctuations = @[@",", @".", @"?", @";", @";", @"!"];
    NSString *withoutPunctuation = [string copy];
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverse = [self stringByReversingByReversingString:lowercase];
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    
    return stringIsEqualToReverse;
}

- (NSString *) stringByReversingByReversingString:(NSString *)string {
    
    NSString *result = @"";
    for (NSUInteger x = [string length]; x > 0; x--) {
        NSUInteger index = x - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    return result;
}
/**
 
 * Implement your methods here.
 
 */

@end
