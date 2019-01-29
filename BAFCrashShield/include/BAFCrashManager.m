//
//  BAFCrashManager.m
//  BAFCrashShield
//
//  Created by Allan on 2018/12/07.
//  Copyright © 2018 babytree. All rights reserved.
//

#import "BAFCrashManager.h"
#import "NSMutableArray+CrashShield.h"
#import "NSDictionary+CrashShield.h"
#import "NSArray+CrashShield.h"
#import "NSObject+CrashShield.h"
#import "BAFShieldCenter.h"


static BAFCrashManager *manager = nil;

@interface BAFCrashManager()

@property (nonatomic, strong) BAFCrashConfig *s_config;

@property (nonatomic, strong) NSLock         *s_lock;

@end

@implementation BAFCrashManager

+ (instancetype)shareInstance{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[BAFCrashManager alloc]init];
    });
    return manager;
}

+ (void)startCrashShieldWithConfig:(BAFCrashConfig *)config outError:(NSError *__autoreleasing *)outError{
    
    [BAFCrashManager shareInstance].s_config = config;

    if (config.crashList.count) {
        
        [[BAFCrashManager shareInstance] startShield];
        
    }else{
        
        if (outError) {
            *outError = [NSError errorWithDomain:@"com.bbt.baf.crash" code:-111 userInfo:@{NSLocalizedDescriptionKey:@"参数配置错误，请检查参数"}];
        }
    }
}


- (BAFCrashConfig *)s_config{
    
    if (!_s_config) {
        
        _s_config = [[BAFCrashConfig alloc]init];
    }
    
    return _s_config;
}

- (NSLock *)s_lock{
    
    if (!_s_lock) {
        
        _s_lock = [[NSLock alloc]init];
    }
    return _s_lock;
}


- (void)startShield{
    
    if (self.s_lock.tryLock) {
        
        [BAFShieldCenter safeShieldWithArray:self.s_config.crashList];
        
        [self.s_lock unlock];
    }else{
        
        return;
    }

}

@end
