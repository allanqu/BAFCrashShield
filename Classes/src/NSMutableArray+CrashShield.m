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

- (void)safe_objectsAtIndexes:(NSIndexSet *)indexes{

    @try {
        
        [self safe_objectsAtIndexes:indexes];
        
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        
    }
    
}

- (void)safe_setObject:(id)object atIndexedSubscript:(NSUInteger)index{
    
    @try {
        [self safe_setObject:object atIndexedSubscript:index];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        
    }
    
}

- (void)safe_removeObjectAtIndex:(NSUInteger)index{
    
    @try {
        [self safe_removeObjectAtIndex:index];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
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
        NSLog(@"exception=%@",exception);
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
