//
//  NSString+CrashShield.m
//  BAFCrashShield
//
//  Created by Allan on 2019/1/30.
//

#import "NSString+CrashShield.h"

@implementation NSString (CrashShield)


#pragma mark - characterAtIndex:

- (unichar)safe_characterAtIndex:(NSUInteger)index {
    
    unichar characteristic;
    @try {
        characteristic = [self safe_characterAtIndex:index];
    }
    @catch (NSException *exception) {
        
    }
    @finally {
        return characteristic;
    }
}

#pragma mark - substringFromIndex:

- (NSString *)safe_substringFromIndex:(NSUInteger)from {
    
    NSString *subString = nil;
    
    @try {
        subString = [self safe_substringFromIndex:from];
    }
    @catch (NSException *exception) {
        

        subString = nil;
    }
    @finally {
        return subString;
    }
}

#pragma mark - substringToIndex

- (NSString *)safe_substringToIndex:(NSUInteger)to {
    
    NSString *subString = nil;
    
    @try {
        subString = [self safe_substringToIndex:to];
    }
    @catch (NSException *exception) {

        subString = nil;
    }
    @finally {
        return subString;
    }
}


#pragma mark - substringWithRange:

- (NSString *)safe_substringWithRange:(NSRange)range {
    
    NSString *subString = nil;
    
    @try {
        subString = [self safe_substringWithRange:range];
    }
    @catch (NSException *exception) {

        subString = nil;
    }
    @finally {
        return subString;
    }
}


#pragma mark - stringByReplacingOccurrencesOfString:withString:

- (NSString *)safe_stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement {
    
    NSString *newStr = nil;
    
    @try {
        newStr = [self safe_stringByReplacingOccurrencesOfString:target withString:replacement];
    }
    @catch (NSException *exception) {

        
        newStr = nil;
    }
    @finally {
        return newStr;
    }
}


#pragma mark - stringByReplacingOccurrencesOfString:withString:options:range:

- (NSString *)safe_stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange {
    
    NSString *newStr = nil;
    
    @try {
        newStr = [self safe_stringByReplacingOccurrencesOfString:target withString:replacement options:options range:searchRange];
    }
    @catch (NSException *exception) {

        newStr = nil;
    }
    @finally {
        return newStr;
    }
}

#pragma mark - stringByReplacingCharactersInRange:withString:

- (NSString *)safe_stringByReplacingCharactersInRange:(NSRange)range withString:(NSString *)replacement {
    
    
    NSString *newStr = nil;
    
    @try {
        newStr = [self safe_stringByReplacingCharactersInRange:range withString:replacement];
    }
    @catch (NSException *exception) {

        newStr = nil;
    }
    @finally {
        return newStr;
    }
}

@end
