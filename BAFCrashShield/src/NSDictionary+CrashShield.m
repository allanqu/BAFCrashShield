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

//+ (void)shieldCrashByExchangeMethod{
//
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//
//        [BAFCrashHandler exchangeClassMethod:self
//                                  method1Sel:@selector(dictionaryWithObjects:forKeys:count:)
//                                  method2Sel:@selector(safe_dictionaryWithObjects:forKeys:count:)];
//    });
//
//}

+ (instancetype)safe_dictionaryWithObjects:(const id  _Nonnull __unsafe_unretained *)objects
                                   forKeys:(const id<NSCopying>  _Nonnull __unsafe_unretained *)keys
                                     count:(NSUInteger)cnt {
    
    id instance = nil;
    
    @try {
        instance = [self safe_dictionaryWithObjects:objects forKeys:keys count:cnt];
    }
    @catch (NSException *exception) {
        
//        NSString *defaultToDo = @"AvoidCrash default is to remove nil key-values and instance a dictionary.";
//        [AvoidCrash noteErrorWithException:exception defaultToDo:defaultToDo];
//        
//        //处理错误的数据，然后重新初始化一个字典
//        NSUInteger index = 0;
//        id  _Nonnull __unsafe_unretained newObjects[cnt];
//        id  _Nonnull __unsafe_unretained newkeys[cnt];
//        
//        for (int i = 0; i < cnt; i++) {
//            if (objects[i] && keys[i]) {
//                newObjects[index] = objects[i];
//                newkeys[index] = keys[i];
//                index++;
//            }
//        }
//        instance = [self avoidCrashDictionaryWithObjects:newObjects forKeys:newkeys count:index];
    }
    @finally {
        return instance;
    }
}


@end
