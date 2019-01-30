//
//  NSMutableString+CrashShield.m
//  BAFCrashShield
//
//  Created by Allan on 2019/1/30.
//

#import "NSMutableString+CrashShield.h"
#import "BAFCrashHandler.h"


@implementation NSMutableString (CrashShield)


#pragma mark - replaceCharactersInRange

- (void)safe_replaceCharactersInRange:(NSRange)range withString:(NSString *)aString {
    
    @try {
        [self safe_replaceCharactersInRange:range withString:aString];
    }
    @catch (NSException *exception) {

    }
    @finally {
        
    }
}

#pragma mark - insertString:atIndex:

- (void)safe_insertString:(NSString *)aString atIndex:(NSUInteger)loc {
    
    @try {
        [self safe_insertString:aString atIndex:loc];
    }
    @catch (NSException *exception) {

    }
    @finally {
        
    }
}

#pragma mark - deleteCharactersInRange

- (void)safe_deleteCharactersInRange:(NSRange)range {
    
    @try {
        [self safe_deleteCharactersInRange:range];
    }
    @catch (NSException *exception) {

    }
    @finally {
        
    }
}


@end
