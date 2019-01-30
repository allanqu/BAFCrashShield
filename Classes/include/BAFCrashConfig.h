//
//  BAFCrashConfig.h
//  BAFCrashShield
//
//  Created by Allan on 2018/12/07.
//  Copyright © 2018 babytree. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BAFCrashConfig : NSObject

/**
 crash 拦截白名单
 */
@property (nonatomic, copy) NSArray *crashWhiteList;
/**
 crash 拦截黑名单
 */
@property (nonatomic, copy) NSArray *crashBlackList;
/**
 crash 拦截list 拦截默认名单详情见文档<>
 */
@property (nonatomic, copy) NSArray *crashList;

@end
