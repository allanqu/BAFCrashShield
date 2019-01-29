//
//  BAFShieldCenter.m
//  BAFCrashShield
//
//  Created by Allan on 2019/1/26.
//

#import "BAFShieldCenter.h"
#import "BAFCrashHandler.h"

@implementation BAFShieldCenter


+ (void)safeShieldWithArray:(NSArray *)arr{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"BAFShieldMatch" ofType:@"plist"];
    
    NSArray *plistArr = [NSArray arrayWithContentsOfFile:path];
    
    for (NSString *str in arr) {
        
        for (NSDictionary *dict  in plistArr) {
            
            NSArray *selectorArr = [dict objectForKey:str];
            
            BOOL shouldBreak = NO;
            for (NSString *obj in selectorArr) {
                SEL selector = NSSelectorFromString(obj);
                IMP imp = [self methodForSelector:selector];
                void (*func)(id, SEL) = (void *)imp;
                func(self, selector);
                shouldBreak = YES;
            }
            if (shouldBreak) {
             break;
            }
        }
    }
}

+ (void)safeShieldForArrayWithObjectsAndcount{
    
    //====================
    //   class method
    //====================
    [BAFCrashHandler exchangeClassMethod:[NSArray class]
                              method1Sel:@selector(arrayWithObjects:count:)
                              method2Sel:NSSelectorFromString(@"safe_arrayWithObjects:count:")];

}


+ (void)safeShieldForObjectsAtIndexs{
    
    Class __NSArray = NSClassFromString(@"NSArray");
    //objectsAtIndexes:
    [BAFCrashHandler exchangeInstanceMethod:__NSArray
                                 method1Sel:@selector(objectsAtIndexes:)
                                 method2Sel:NSSelectorFromString(@"safe__NSArrayObjectsAtIndexes:")];
}

+ (void)safeShieldForObjectAtIndex{
    
//    Class __NSArray = NSClassFromString(@"NSArray");
    Class __NSArrayI = NSClassFromString(@"__NSArrayI");
    Class __NSSingleObjectArrayI = NSClassFromString(@"__NSSingleObjectArrayI");
    Class __NSArray0 = NSClassFromString(@"__NSArray0");
    
    //objectAtIndex:
    
    [BAFCrashHandler exchangeInstanceMethod:__NSArrayI
                                 method1Sel:@selector(objectAtIndex:)
                                 method2Sel:NSSelectorFromString(@"safe__NSArrayIObjectAtIndex:")];
    
    [BAFCrashHandler exchangeInstanceMethod:__NSSingleObjectArrayI
                                 method1Sel:@selector(objectAtIndex:)
                                 method2Sel:NSSelectorFromString(@"safe__NSSingleObjectArrayIObjectAtIndex:")];
    
    [BAFCrashHandler exchangeInstanceMethod:__NSArray0
                                 method1Sel:@selector(objectAtIndex:)
                                 method2Sel:NSSelectorFromString(@"safe__NSArray0ObjectAtIndex:")];

}

+ (void)safeShieldForGetObjectsRange{
    
    Class __NSArray = NSClassFromString(@"NSArray");
    Class __NSArrayI = NSClassFromString(@"__NSArrayI");
    Class __NSSingleObjectArrayI = NSClassFromString(@"__NSSingleObjectArrayI");
    
    //getObjects:range:
    [BAFCrashHandler exchangeInstanceMethod:__NSArray
                                 method1Sel:@selector(getObjects:range:)
                                 method2Sel:NSSelectorFromString(@"safe__NSArrayGetObjects:range:")];
    
    [BAFCrashHandler exchangeInstanceMethod:__NSSingleObjectArrayI
                                 method1Sel:@selector(getObjects:range:)
                                 method2Sel:NSSelectorFromString(@"safe__NSSingleObjectArrayIGetObjects:range:")];
    
    [BAFCrashHandler exchangeInstanceMethod:__NSArrayI
                                 method1Sel:@selector(getObjects:range:)
                                 method2Sel:NSSelectorFromString(@"safe__NSArrayIGetObjects:range:")];

}

+ (void)safeShieldForMutableObjectAtIndex{
    
    Class arrayMClass = NSClassFromString(@"__NSArrayM");
    
    //objectAtIndex:
    [BAFCrashHandler exchangeInstanceMethod:arrayMClass
                                 method1Sel:@selector(objectAtIndex:)
                                 method2Sel:NSSelectorFromString(@"safe_objectAtIndex:")];
    
    
}

+ (void)safeShieldForMutableSetObjectAtIndexedSubscript{
   
    Class arrayMClass = NSClassFromString(@"__NSArrayM");

    //setObject:atIndexedSubscript:
    [BAFCrashHandler exchangeInstanceMethod:arrayMClass
                                 method1Sel:@selector(setObject:atIndexedSubscript:)
                                 method2Sel:NSSelectorFromString(@"safe_setObject:atIndexedSubscript:")];
    
}


+ (void)safeShieldForMutableRemoveObjectAtIndex{
    
    Class arrayMClass = NSClassFromString(@"__NSArrayM");
    //removeObjectAtIndex:
    [BAFCrashHandler exchangeInstanceMethod:arrayMClass
                                 method1Sel:@selector(removeObjectAtIndex:)
                                 method2Sel:NSSelectorFromString(@"safe_removeObjectAtIndex:")];

}


+ (void)safeShieldForMutableInsertObjectAtIndex{

    Class arrayMClass = NSClassFromString(@"__NSArrayM");

    //insertObject:atIndex:
    [BAFCrashHandler exchangeInstanceMethod:arrayMClass
                                 method1Sel:@selector(insertObject:atIndex:)
                                 method2Sel:NSSelectorFromString(@"safe_insertObject:atIndex:")];

}

+ (void)safeShieldForMutableGetObjectsRange{
    
    Class arrayMClass = NSClassFromString(@"__NSArrayM");

    //getObjects:range:
    [BAFCrashHandler exchangeInstanceMethod:arrayMClass
                                 method1Sel:@selector(getObjects:range:)
                                 method2Sel:NSSelectorFromString(@"safe_getObjects:range:")];
    
}

+ (void)safeShieldForMutableAddObject{
   
    Class arrayMClass = NSClassFromString(@"__NSArrayM");
    //addObject:
    [BAFCrashHandler exchangeInstanceMethod:arrayMClass
                                 method1Sel:@selector(addObject:)
                                 method2Sel:NSSelectorFromString(@"safe_addObject:")];
    
}

#pragma mark ----NSObject

+ (void)safeShieldForSetVaueForKey{
    
    //setValue:forKey:
    [BAFCrashHandler exchangeInstanceMethod:[NSObject class]
                                 method1Sel:@selector(setValue:forKey:)
                                 method2Sel:NSSelectorFromString(@"safe_setValue:forKey:")];
    
}

+ (void)safeShieldForSetVaueForKeyPath{

    //setValue:forKeyPath:
    [BAFCrashHandler exchangeInstanceMethod:[NSObject class]
                                 method1Sel:@selector(setValue:forKeyPath:)
                                 method2Sel:NSSelectorFromString(@"safe_setValue:forKeyPath:")];
}

+ (void)safeShieldForSetVaueForUndefinedKey{
    
    //setValue:forUndefinedKey:
    [BAFCrashHandler exchangeInstanceMethod:[NSObject class]
                                 method1Sel:@selector(setValue:forUndefinedKey:)
                                 method2Sel:NSSelectorFromString(@"safe_setValue:forUndefinedKey:")];

}

+ (void)safeShieldForSetValuesForKeysWithDictionary{
    
    //setValuesForKeysWithDictionary:
    [BAFCrashHandler exchangeInstanceMethod:[NSObject class]
                                 method1Sel:@selector(setValuesForKeysWithDictionary:)
                                 method2Sel:NSSelectorFromString(@"safe_setValuesForKeysWithDictionary:")];
}


+ (void)safeShieldForSetValuesForUnRecognizedSelector{

    //unrecognized selector sent to instance
    [BAFCrashHandler exchangeInstanceMethod:[NSObject class]
                                 method1Sel:@selector(methodSignatureForSelector:)
                                 method2Sel:NSSelectorFromString(@"safe_methodSignatureForSelector:")];
    
    [BAFCrashHandler exchangeInstanceMethod:[NSObject class]
                                 method1Sel:@selector(forwardInvocation:)
                                 method2Sel:NSSelectorFromString(@"safe_forwardInvocation:")];
    
    
//    [BAFCrashHandler exchangeClassMethod:[NSObject class]
//                              method1Sel:@selector(instanceMethodSignatureForSelector:)
//                              method2Sel:NSSelectorFromString(@"safe_instanceMethodSignatureForSelector:")];

    
}




@end
