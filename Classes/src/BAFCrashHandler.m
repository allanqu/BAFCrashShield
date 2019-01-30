//
//  BAFCrashHandler.m
//  BAFCrashShield
//
//  Created by Allan on 2018/12/07.
//  Copyright © 2018 babytree. All rights reserved.
//

#import "BAFCrashHandler.h"
#import <objc/runtime.h>

@implementation BAFCrashHandler


+ (void)exchangeClassMethod:(Class)anClass method1Sel:(SEL)method1Sel method2Sel:(SEL)method2Sel {
    
    Method method1 = class_getClassMethod(anClass, method1Sel);
    Method method2 = class_getClassMethod(anClass, method2Sel);
    method_exchangeImplementations(method1, method2);
    
}

+ (void)exchangeInstanceMethod:(Class)anClass method1Sel:(SEL)method1Sel method2Sel:(SEL)method2Sel {
    
    
    Method originalMethod = class_getInstanceMethod(anClass, method1Sel);
    Method swizzledMethod = class_getInstanceMethod(anClass, method2Sel);
    
//    NSLog(@"originalMethod = %p,swizzledMethod=%p",originalMethod,swizzledMethod);
    
    BOOL didAddMethod = class_addMethod(anClass,
                                        method1Sel,
                                        method_getImplementation(swizzledMethod),
                                        method_getTypeEncoding(swizzledMethod));
    
    if (didAddMethod) {
        class_replaceMethod(anClass,
                            method2Sel,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    }else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
    
}

@end
