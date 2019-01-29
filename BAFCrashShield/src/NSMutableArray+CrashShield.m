//
//  NSArray+CrashShield.m
//  BAFCrashShield
//
//  Created by Allan on 2018/12/07.
//  Copyright © 2018 babytree. All rights reserved.
//

#import "NSMutableArray+CrashShield.h"
#import <objc/runtime.h>
#import "BAFCrashHandler.h"

@implementation NSMutableArray (CrashShield)

//+ (void)shieldCrashByExchangeMethod{
//    
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        
//    
//        Class arrayMClass = NSClassFromString(@"__NSArrayM");
//        
//        //objectAtIndex:
//        [BAFCrashHandler exchangeInstanceMethod:arrayMClass
//                                method1Sel:@selector(objectAtIndex:)
//                                method2Sel:@selector(safe_objectAtIndex:)];
//        
//        //objectAtIndexedSubscript
//        
////        if (AvoidCrashIsiOS(11.0)) {
////            [BAFCrashHandler exchangeInstanceMethod:arrayMClass
////                                         method1Sel:@selector(objectAtIndexedSubscript:) method2Sel:@selector(safe_objectAtIndexedSubscript:)];
////        }
//        
//        //setObject:atIndexedSubscript:
//        [BAFCrashHandler exchangeInstanceMethod:arrayMClass
//                                     method1Sel:@selector(setObject:atIndexedSubscript:)
//                                     method2Sel:@selector(safe_setObject:atIndexedSubscript:)];
//        
//        
//        //removeObjectAtIndex:
//        [BAFCrashHandler exchangeInstanceMethod:arrayMClass
//                                     method1Sel:@selector(removeObjectAtIndex:)
//                                     method2Sel:@selector(safe_removeObjectAtIndex:)];
//        
//        //insertObject:atIndex:
//        [BAFCrashHandler exchangeInstanceMethod:arrayMClass
//                                     method1Sel:@selector(insertObject:atIndex:)
//                                     method2Sel:@selector(safe_insertObject:atIndex:)];
//        
//        //getObjects:range:
//        [BAFCrashHandler exchangeInstanceMethod:arrayMClass
//                                     method1Sel:@selector(getObjects:range:)
//                                     method2Sel:@selector(safe_getObjects:range:)];
////
//        //addObject:
//        [BAFCrashHandler exchangeInstanceMethod:arrayMClass
//                                     method1Sel:@selector(addObject:)
//                                     method2Sel:@selector(safe_addObject:)];
//        
//    });
//    
//}


- (id)safe_objectAtIndex:(NSUInteger)index{
    
    id object = nil;
    @try {
       object = [self safe_objectAtIndex:index];
        
    } @catch (NSException *exception) {
        
        NSLog(@"exception=%@",exception);
    } @finally {
        
        return object;
    }
    
}


- (void)safe_setObject:(id)object atIndexedSubscript:(NSUInteger)index{
    
    @try {
        [self safe_setObject:object atIndexedSubscript:index];
    } @catch (NSException *exception) {
        
    } @finally {
        
    }
    
}

- (void)safe_removeObjectAtIndex:(NSUInteger)index{
    
    @try {
        [self safe_removeObjectAtIndex:index];
    } @catch (NSException *exception) {
        
        
    } @finally {
        
        
    }
}


- (void)safe_insertObject:(id)obj atIndex:(NSUInteger)index{
    
    @try {
        [self safe_insertObject:obj atIndex:index];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        
    }
}


- (void)safe_getObjects:(__unsafe_unretained id  _Nonnull *)objects range:(NSRange)range{
    
    @try {
        [self safe_getObjects:objects range:range];
        
    } @catch (NSException *exception) {
        
    } @finally {
        
        
    }
    
}

- (void)safe_addObject:(id)obj{
    
    @try {
        [self safe_addObject:obj];
        
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);

    } @finally {
        
    }
    
}


@end
