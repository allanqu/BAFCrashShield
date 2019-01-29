//
//  NSArray+CrashShield.m
//  BAFCrashShield
//
//  Created by Allan on 2019/1/19.
//

#import "NSArray+CrashShield.h"
#import "BAFCrashHandler.h"
#import "BAFShieldCenter.h"

@implementation NSArray (CrashShield)

+ (void)shieldCrashWithArr:(NSArray *)arr{
    
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
    
    
//
//    NSArray *shieldArr = @[@"arrayWithObjects:count:",
//                            @"objectsAtIndexes:",
//                            @"objectAtIndex:",
//                            @"getObjects:range:"];
    
//    if (!arr.count) {
//        return;
//    }
    
    
//    [BAFShieldCenter safeShieldWithArray:arr];
    

        
        //实例方法
        //====================
        //   instance method
        //====================
        
//        Class __NSArray = NSClassFromString(@"NSArray");
//        Class __NSArrayI = NSClassFromString(@"__NSArrayI");
//        Class __NSSingleObjectArrayI = NSClassFromString(@"__NSSingleObjectArrayI");
//        Class __NSArray0 = NSClassFromString(@"__NSArray0");
    
        
        
        //objectAtIndex:
        
//        [BAFCrashHandler exchangeInstanceMethod:__NSArrayI method1Sel:@selector(objectAtIndex:) method2Sel:@selector(safe__NSArrayIObjectAtIndex:)];
//
//        [BAFCrashHandler exchangeInstanceMethod:__NSSingleObjectArrayI method1Sel:@selector(objectAtIndex:) method2Sel:@selector(safe__NSSingleObjectArrayIObjectAtIndex:)];
//
//        [BAFCrashHandler exchangeInstanceMethod:__NSArray0 method1Sel:@selector(objectAtIndex:) method2Sel:@selector(safe__NSArray0ObjectAtIndex:)];
    
        //objectAtIndexedSubscript:
//        if (AvoidCrashIsiOS(11.0)) {
//            [AvoidCrash exchangeInstanceMethod:__NSArrayI method1Sel:@selector(objectAtIndexedSubscript:) method2Sel:@selector(__NSArrayIAvoidCrashObjectAtIndexedSubscript:)];
//        }
        
        
        //getObjects:range:
//        [BAFCrashHandler exchangeInstanceMethod:__NSArray method1Sel:@selector(getObjects:range:) method2Sel:@selector(safe__NSArrayGetObjects:range:)];
//
//        [BAFCrashHandler exchangeInstanceMethod:__NSSingleObjectArrayI method1Sel:@selector(getObjects:range:) method2Sel:@selector(safe__NSSingleObjectArrayIGetObjects:range:)];
//
//        [BAFCrashHandler exchangeInstanceMethod:__NSArrayI method1Sel:@selector(getObjects:range:) method2Sel:@selector(safe__NSArrayIGetObjects:range:)];

        
        
//    });
    
}

+ (instancetype)safe_arrayWithObjects:(const id  _Nonnull __unsafe_unretained *)objects count:(NSInteger)idx{
    
     id instance = nil;
    @try {
        instance = [self safe_arrayWithObjects:objects count:idx];
    } @catch (NSException *exception) {
        
    } @finally {
        return instance;
    }
}


- (NSArray *)safe__NSArrayObjectsAtIndexes:(NSIndexSet *)indexes{

    NSArray * arr = nil;
    @try {
      arr = [self safe__NSArrayObjectsAtIndexes:indexes];
    } @catch (NSException *exception) {
        
        
    } @finally {
        return arr;
    }
}

- (id)safe__NSArrayIObjectAtIndex:(NSUInteger)index{
    
    id object = nil;
    @try {
        object = [self safe__NSArrayIObjectAtIndex:index];
    } @catch (NSException *exception) {
        
    } @finally {
        
        return object;
    }
}

- (id)safe__NSSingleObjectArrayIObjectAtIndex:(NSUInteger)index{
    
    id object = nil;
    @try {
        object = [self safe__NSSingleObjectArrayIObjectAtIndex:index];
    } @catch (NSException *exception) {
        
    } @finally {
        
        return object;
    }
}

- (id)safe__NSArray0ObjectAtIndex:(NSUInteger)index{
    
    id object = nil;
    @try {
        object = [self safe__NSArray0ObjectAtIndex:index];
    } @catch (NSException *exception) {
        
    } @finally {
        
        return object;
    }
}

- (void)safe__NSArrayGetObjects:(__unsafe_unretained id  _Nonnull *)objects range:(NSRange)range{
    
    @try {
        [self safe__NSArrayGetObjects:objects range:range];
    } @catch (NSException *exception) {
        
    } @finally {
        
    
    }
    
}

- (void)safe__NSSingleObjectArrayIGetObjects:(__unsafe_unretained id  _Nonnull *)objects range:(NSRange)range{
    
    @try {
        [self safe__NSSingleObjectArrayIGetObjects:objects range:range];
    } @catch (NSException *exception) {
        
    } @finally {
        
        
    }
    
}

- (void)safe__NSArrayIGetObjects:(__unsafe_unretained id  _Nonnull *)objects range:(NSRange)range{
    
    @try {
        [self safe__NSArrayIGetObjects:objects range:range];
    } @catch (NSException *exception) {
        
    } @finally {
        
        
    }
}

@end
