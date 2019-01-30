//
//  BAFCrashConfig.m
//  BAFCrashShield
//
//  Created by Allan on 2018/12/07.
//  Copyright © 2018 babytree. All rights reserved.
//

NSString *const kBAFShieldMatchResources     = @"BAFShieldMatch";
NSString *const kBAFShieldMatchRecourcesType = @"plist";

#import "BAFCrashConfig.h"

@implementation BAFCrashConfig


- (NSArray *)crashList{
    
    if (!_crashList) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:kBAFShieldMatchResources ofType:kBAFShieldMatchRecourcesType];
        
        NSArray *plistArr = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *keyArr = [NSMutableArray arrayWithCapacity:plistArr.count];
        
        for (NSDictionary *dict  in plistArr) {
            
            NSString *key = [dict.allKeys firstObject];
            [keyArr addObject:key];
        }
        _crashList = [keyArr copy];
    }
    return _crashList;
}


- (void)setCrashBlackList:(NSArray *)crashBlackList{
    
    _crashBlackList = crashBlackList;
    
    if (self.crashBlackList.count) {
        
        if (self.crashList.count) {
            
            NSMutableArray *tempArr = [self.crashList mutableCopy];
            
            for (NSString *cashStr in self.crashList) {
                
                for (NSString *crashBlackStr in crashBlackList) {
                    
                    if ([cashStr isEqualToString:crashBlackStr]) {
                        
                        [tempArr removeObject:cashStr];
                    }
                }
            }
            self.crashList = [tempArr copy];
        }
    }
}


- (void)setCrashWhiteList:(NSArray *)crashWhiteList{
    
    _crashWhiteList = crashWhiteList;
    
    if (self.crashWhiteList.count) {
        
        self.crashList = self.crashWhiteList;
        
    }

}




@end
