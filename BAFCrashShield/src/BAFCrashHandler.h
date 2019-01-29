//
//  BAFCrashHandler.h
//  BAFCrashShield
//
//  Created by Allan on 2018/12/07.
//  Copyright © 2018 babytree. All rights reserved.
//

#import <Foundation/Foundation.h>

#define BAFCrashiOSVersion(version) ([[UIDevice currentDevice].systemVersion floatValue] >= version)


@interface BAFCrashHandler : NSObject


/**
 交换类方法

 @param anClass 目标类
 @param method1Sel 源方法
 @param method2Sel 目标方法
 */
+ (void)exchangeClassMethod:(Class)anClass method1Sel:(SEL)method1Sel method2Sel:(SEL)method2Sel;


/**
 交换实例方法

 @param anClass 目标类
 @param method1Sel 源方法
 @param method2Sel 目标方法
 */
+ (void)exchangeInstanceMethod:(Class)anClass method1Sel:(SEL)method1Sel method2Sel:(SEL)method2Sel;




@end
