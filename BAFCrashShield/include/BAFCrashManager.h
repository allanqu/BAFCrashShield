//
//  BAFCrashManager.h
//  BAFCrashShield
//
//  Created by Allan on 2018/12/07.
//  Copyright © 2018 babytree. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BAFCrashConfig.h"

@interface BAFCrashManager : NSObject

/**
 获取防护List
 */
@property (nonatomic, copy, readonly) NSArray *shieldList;

/**
 开启防护

 @param config 配置防护参数
 @param outError error输出
 */
+ (void)startCrashShieldWithConfig:(BAFCrashConfig *)config outError:(NSError *__autoreleasing *)outError;


@end
