//
//  NSObject+CrashShield.m
//  BAFCrashShield
//
//  Created by Allan on 2019/1/19.
//

#import "NSObject+CrashShield.h"
#import "BAFCrashHandler.h"
#import "BAFCrashShieldProxy.h"
#import "BAFCrashShieldLog.h"

@implementation NSObject (CrashShield)


- (void)safe_setValue:(id)value forKey:(NSString *)key{
    
    @try {
        [self safe_setValue:value forKey:key];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        
    }
}

- (void)safe_setValue:(id)value forKeyPath:(NSString *)keyPath{
    
    @try {
        [self safe_setValue:value forKeyPath:keyPath];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        
    }
}

- (void)safe_setValue:(id)value forUndefinedKey:(NSString *)key{
    
    @try {
        [self safe_setValue:value forUndefinedKey:key];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        
    }
}

- (void)safe_setValuesForKeysWithDictionary:(NSDictionary<NSString *,id> *)keyedValues{
    
    @try {
        [self safe_setValuesForKeysWithDictionary:keyedValues];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        
    }
}

#pragma mark - unrecognized selector sent to instance

- (NSMethodSignature *)safe_methodSignatureForSelector:(SEL)aSelector {
    
    NSMethodSignature *ms = [self safe_methodSignatureForSelector:aSelector];
    
    if (!ms) {
        ms = [BAFCrashShieldProxy methodSignatureForSelector:@selector(proxyMethod)];
    }
    return ms;
}

- (void)safe_forwardInvocation:(NSInvocation *)anInvocation {
    
    @try {
        
        [self safe_forwardInvocation:anInvocation];
        
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        
    }
}

@end
