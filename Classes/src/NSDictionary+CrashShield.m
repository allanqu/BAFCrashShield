//
//  NSDictionary+CrashShield.m
//  BAFCrashShield
//
//  Created by Allan on 2018/12/07.
//  Copyright © 2018 babytree. All rights reserved.
//

#import "NSDictionary+CrashShield.h"
#import "BAFCrashHandler.h"

@implementation NSDictionary (CrashShield)


+ (instancetype)safe_dictionaryWithObjects:(const id  _Nonnull __unsafe_unretained *)objects
                                   forKeys:(const id<NSCopying>  _Nonnull __unsafe_unretained *)keys
                                     count:(NSUInteger)cnt {
    
    id instance = nil;
    
    @try {
        instance = [self safe_dictionaryWithObjects:objects forKeys:keys count:cnt];
    }
    @catch (NSException *exception) {

        NSLog(@"exception=%@",exception);
    }
    @finally {
        return instance;
    }
}


@end
