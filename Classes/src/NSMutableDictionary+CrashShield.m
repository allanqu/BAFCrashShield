//
//  NSMutableDictionary+CrashShield.m
//  BAFCrashShield
//
//  Created by Allan on 2019/1/20.
//

#import "NSMutableDictionary+CrashShield.h"
#import "BAFCrashHandler.h"
#import <objc/runtime.h>

@implementation NSMutableDictionary (CrashShield)

#pragma mark - setObject:forKey:

- (void)safe_setObject:(id)anObject forKey:(id<NSCopying>)aKey {
    
    @try {
        [self safe_setObject:anObject forKey:aKey];
    }
    @catch (NSException *exception) {
        
        NSLog(@"exception=%@",exception);
    }
    @finally {
        
    }
}

#pragma mark - setObject:forKeyedSubscript:
- (void)safe_setObject:(id)obj forKeyedSubscript:(id<NSCopying>)key {
    @try {
        [self safe_setObject:obj forKeyedSubscript:key];
    }
    @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    }
    @finally {
        
    }
}


#pragma mark - removeObjectForKey:

- (void)safe_removeObjectForKey:(id)aKey {
    
    @try {
        [self safe_removeObjectForKey:aKey];
    }
    @catch (NSException *exception) {
        
        NSLog(@"exception=%@",exception);
    }
    @finally {
        
    }
}

@end
