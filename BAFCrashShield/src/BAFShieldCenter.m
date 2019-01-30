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

#pragma mark ---- NSArray

+ (void)safeShieldForArrayWithObjectsAndcount{
    
    //====================
    //   class method
    //====================
    [BAFCrashHandler exchangeClassMethod:[NSArray class]
                              method1Sel:@selector(arrayWithObjects:count:)
                              method2Sel:NSSelectorFromString(@"safe_arrayWithObjects:count:")];

}


+ (void)safeShieldForObjectsAtIndexes{
    
    //objectsAtIndexes:
    Class __NSArray = NSClassFromString(@"NSArray");
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
    
    //getObjects:range:
    Class __NSArray = NSClassFromString(@"NSArray");
    Class __NSArrayI = NSClassFromString(@"__NSArrayI");
    Class __NSSingleObjectArrayI = NSClassFromString(@"__NSSingleObjectArrayI");
    
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


#pragma mark ---- NSMutableArray

+ (void)safeShieldForMutableObjectAtIndex{
    
    Class arrayMClass = NSClassFromString(@"__NSArrayM");
    
    //objectAtIndex:
    [BAFCrashHandler exchangeInstanceMethod:arrayMClass
                                 method1Sel:@selector(objectAtIndex:)
                                 method2Sel:NSSelectorFromString(@"safe_objectAtIndex:")];
    
    
}

+ (void)safeShieldForMutableObjectsAtIndexes{
    
    Class arrayMClass = NSClassFromString(@"__NSArrayM");
    
    //objectAtIndexes:
    [BAFCrashHandler exchangeInstanceMethod:arrayMClass
                                 method1Sel:@selector(objectsAtIndexes:)
                                 method2Sel:NSSelectorFromString(@"safe_objectsAtIndexes:")];
    
    
}

+ (void)safeShieldForMutableSetObjectAtIndexedSubscript{
   
    //setObject:atIndexedSubscript:
    Class arrayMClass = NSClassFromString(@"__NSArrayM");
    [BAFCrashHandler exchangeInstanceMethod:arrayMClass
                                 method1Sel:@selector(setObject:atIndexedSubscript:)
                                 method2Sel:NSSelectorFromString(@"safe_setObject:atIndexedSubscript:")];
    
}


+ (void)safeShieldForMutableRemoveObjectAtIndex{
    
    //removeObjectAtIndex:
    Class arrayMClass = NSClassFromString(@"__NSArrayM");
    [BAFCrashHandler exchangeInstanceMethod:arrayMClass
                                 method1Sel:@selector(removeObjectAtIndex:)
                                 method2Sel:NSSelectorFromString(@"safe_removeObjectAtIndex:")];

}


+ (void)safeShieldForMutableInsertObjectAtIndex{

    //insertObject:atIndex:
    Class arrayMClass = NSClassFromString(@"__NSArrayM");
    [BAFCrashHandler exchangeInstanceMethod:arrayMClass
                                 method1Sel:@selector(insertObject:atIndex:)
                                 method2Sel:NSSelectorFromString(@"safe_insertObject:atIndex:")];

}

+ (void)safeShieldForMutableGetObjectsRange{
    
    //getObjects:range:
    Class arrayMClass = NSClassFromString(@"__NSArrayM");
    [BAFCrashHandler exchangeInstanceMethod:arrayMClass
                                 method1Sel:@selector(getObjects:range:)
                                 method2Sel:NSSelectorFromString(@"safe_getObjects:range:")];
    
}

+ (void)safeShieldForMutableAddObject{
    
    //addObject:
    Class arrayMClass = NSClassFromString(@"__NSArrayM");
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


#pragma mark ----NSDictionary

+ (void)safeShieldForDictionaryWithObjectsForKeysCount{
    
    [BAFCrashHandler exchangeClassMethod:[NSDictionary class]
                              method1Sel:@selector(dictionaryWithObjects:forKeys:count:)
                              method2Sel:NSSelectorFromString(@"safe_dictionaryWithObjects:forKeys:count:")];

    
}

#pragma mark ----NSMutableDictionary

+ (void)safeShieldForMutableDictionarySetObjectForKey{
    
    
    Class dictionaryM = NSClassFromString(@"__NSDictionaryM");
    
    //setObject:forKey:
    [BAFCrashHandler exchangeInstanceMethod:dictionaryM
                                 method1Sel:@selector(setObject:forKey:)
                                 method2Sel:NSSelectorFromString(@"safe_setObject:forKey:")];

}

+ (void)safeShieldForMutableDictionarySetObjectForKeyedSubscript{
    
    //setObject:forKeyedSubscript:
    if (BAFCrashiOSVersion(11.0)) {
        Class dictionaryM = NSClassFromString(@"__NSDictionaryM");
        [BAFCrashHandler exchangeInstanceMethod:dictionaryM method1Sel:@selector(setObject:forKeyedSubscript:)
                                     method2Sel:NSSelectorFromString(@"safe_setObject:forKeyedSubscript:")];
    }
    
}

+ (void)safeShieldForMutableDictionaryRemoveObjectForKey{
    
    //removeObjectForKey:

    Class dictionaryM = NSClassFromString(@"__NSDictionaryM");
    
    [BAFCrashHandler exchangeInstanceMethod:dictionaryM
                                 method1Sel:@selector(removeObjectForKey:)
                                 method2Sel:NSSelectorFromString(@"safe_removeObjectForKey:")];
}

#pragma mark ----NSString

+ (void)safeShieldForCharacterAtIndex{
    //characterAtIndex:
    Class stringClass = NSClassFromString(@"__NSCFConstantString");
    
    [BAFCrashHandler exchangeInstanceMethod:stringClass
                                 method1Sel:@selector(characterAtIndex:)
                                 method2Sel:NSSelectorFromString(@"safe_characterAtIndex:")];
    
}

+ (void)safeShieldForSubstringFromIndex{
    //substringFromIndex:
    Class stringClass = NSClassFromString(@"__NSCFConstantString");
    
    [BAFCrashHandler exchangeInstanceMethod:stringClass
                                 method1Sel:@selector(substringFromIndex:)
                                 method2Sel:NSSelectorFromString(@"safe_substringFromIndex:")];
    
}

+ (void)safeShieldForSubstringToIndex{
    //substringToIndex:
    Class stringClass = NSClassFromString(@"__NSCFConstantString");
    
    [BAFCrashHandler exchangeInstanceMethod:stringClass
                                 method1Sel:@selector(substringToIndex:)
                                 method2Sel:NSSelectorFromString(@"safe_substringToIndex:")];
    
}

+ (void)safeShieldForSubstringWithRange{
    //substringWithRange:
    Class stringClass = NSClassFromString(@"__NSCFConstantString");
    
    [BAFCrashHandler exchangeInstanceMethod:stringClass
                                 method1Sel:@selector(substringWithRange:)
                                 method2Sel:NSSelectorFromString(@"safe_substringWithRange:")];
}


+ (void)safeShieldForStringByReplacingOccurrencesOfString{
    
    //stringByReplacingOccurrencesOfString:withString:
    Class stringClass = NSClassFromString(@"__NSCFConstantString");
    
    [BAFCrashHandler exchangeInstanceMethod:stringClass
                                 method1Sel:@selector(stringByReplacingOccurrencesOfString:withString:)
                                 method2Sel:NSSelectorFromString(@"safe_stringByReplacingOccurrencesOfString:withString:")];
}

+ (void)safeShieldForStringByReplacingOccurrencesOfStringWithStringOptionsRange{
    //stringByReplacingOccurrencesOfString:withString:options:range:
    Class stringClass = NSClassFromString(@"__NSCFConstantString");
    
    [BAFCrashHandler exchangeInstanceMethod:stringClass
                                 method1Sel:@selector(stringByReplacingOccurrencesOfString:withString:options:range:)
                                 method2Sel:NSSelectorFromString(@"safe_stringByReplacingOccurrencesOfString:withString:options:range:")];
}

+ (void)safeShieldForStringByReplacingCharactersInRangeWithString{
    //stringByReplacingCharactersInRange:withString:
    Class stringClass = NSClassFromString(@"__NSCFConstantString");
    
    [BAFCrashHandler exchangeInstanceMethod:stringClass
                                 method1Sel:@selector(stringByReplacingCharactersInRange:withString:)
                                 method2Sel:NSSelectorFromString(@"safe_stringByReplacingCharactersInRange:withString:")];
}

#pragma mark ----NSMutableString

+ (void)safeShieldForReplaceCharactersInRange{
    
    //replaceCharactersInRange:withString:
    Class stringClass = NSClassFromString(@"__NSCFString");

    [BAFCrashHandler exchangeInstanceMethod:stringClass
                                 method1Sel:@selector(replaceCharactersInRange:withString:)
                                 method2Sel:NSSelectorFromString(@"safe_replaceCharactersInRange:withString:")];
}


+ (void)safeShieldForInsertStringAtIndex{
    
   //insertString:atIndex:
    Class stringClass = NSClassFromString(@"__NSCFString");
    
    [BAFCrashHandler exchangeInstanceMethod:stringClass
                                 method1Sel:@selector(insertString:atIndex:)
                                 method2Sel:NSSelectorFromString(@"safe_insertString:atIndex:")];
}

+ (void)safeShieldForDeleteCharactersInRange{
    
    //deleteCharactersInRange
    Class stringClass = NSClassFromString(@"__NSCFString");
    
    [BAFCrashHandler exchangeInstanceMethod:stringClass
                                 method1Sel:@selector(deleteCharactersInRange:)
                                 method2Sel:NSSelectorFromString(@"safe_deleteCharactersInRange:")];
}


@end
