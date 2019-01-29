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

+ (void)shieldCrashByExchangeMethod{
    
    Class dictionaryM = NSClassFromString(@"__NSDictionaryM");
    
    //setObject:forKey:
    [BAFCrashHandler exchangeInstanceMethod:dictionaryM method1Sel:@selector(setObject:forKey:)
                                 method2Sel:@selector(safe_setObject:forKey:)];
    
    //setObject:forKeyedSubscript:
    if (BAFCrashiOSVersion(11.0)) {
        [BAFCrashHandler exchangeInstanceMethod:dictionaryM method1Sel:@selector(setObject:forKeyedSubscript:)
                                     method2Sel:@selector(safe_setObject:forKeyedSubscript:)];
    }
    //removeObjectForKey:
    Method removeObjectForKey = class_getInstanceMethod(dictionaryM, @selector(removeObjectForKey:));
    Method safeRemoveObjectForKey = class_getInstanceMethod(dictionaryM, @selector(safe_removeObjectForKey:));
    method_exchangeImplementations(removeObjectForKey, safeRemoveObjectForKey);
}

#pragma mark - setObject:forKey:

- (void)safe_setObject:(id)anObject forKey:(id<NSCopying>)aKey {
    
    @try {
        [self safe_setObject:anObject forKey:aKey];
    }
    @catch (NSException *exception) {
//        [AvoidCrash noteErrorWithException:exception defaultToDo:AvoidCrashDefaultIgnore];
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
//        [AvoidCrash noteErrorWithException:exception defaultToDo:AvoidCrashDefaultIgnore];
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
//        [AvoidCrash noteErrorWithException:exception defaultToDo:AvoidCrashDefaultIgnore];
    }
    @finally {
        
    }
}

@end
