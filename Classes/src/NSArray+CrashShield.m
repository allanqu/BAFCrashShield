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


+ (instancetype)safe_arrayWithObjects:(const id  _Nonnull __unsafe_unretained *)objects count:(NSInteger)idx{
    
     id instance = nil;
    @try {
        instance = [self safe_arrayWithObjects:objects count:idx];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        return instance;
    }
}


- (NSArray *)safe__NSArrayObjectsAtIndexes:(NSIndexSet *)indexes{

    NSArray * arr = nil;
    @try {
      arr = [self safe__NSArrayObjectsAtIndexes:indexes];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
        
    } @finally {
        return arr;
    }
}

- (id)safe__NSArrayIObjectAtIndex:(NSUInteger)index{
    
    id object = nil;
    @try {
        object = [self safe__NSArrayIObjectAtIndex:index];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        
        return object;
    }
}

- (id)safe__NSSingleObjectArrayIObjectAtIndex:(NSUInteger)index{
    
    id object = nil;
    @try {
        object = [self safe__NSSingleObjectArrayIObjectAtIndex:index];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        
        return object;
    }
}

- (id)safe__NSArray0ObjectAtIndex:(NSUInteger)index{
    
    id object = nil;
    @try {
        object = [self safe__NSArray0ObjectAtIndex:index];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        
        return object;
    }
}

- (void)safe__NSArrayGetObjects:(__unsafe_unretained id  _Nonnull *)objects range:(NSRange)range{
    
    @try {
        [self safe__NSArrayGetObjects:objects range:range];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        
    
    }
    
}

- (void)safe__NSSingleObjectArrayIGetObjects:(__unsafe_unretained id  _Nonnull *)objects range:(NSRange)range{
    
    @try {
        [self safe__NSSingleObjectArrayIGetObjects:objects range:range];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        
        
    }
    
}

- (void)safe__NSArrayIGetObjects:(__unsafe_unretained id  _Nonnull *)objects range:(NSRange)range{
    
    @try {
        [self safe__NSArrayIGetObjects:objects range:range];
    } @catch (NSException *exception) {
        NSLog(@"exception=%@",exception);
    } @finally {
        
        
    }
}

@end
