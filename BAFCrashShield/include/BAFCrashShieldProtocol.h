//
//  BAFCrashShieldProtocol.h
//  BAFCrashShield
//
//  Created by Allan on 2019/1/19.
//

#import <Foundation/Foundation.h>

@protocol BAFCrashShieldProtocol <NSObject>

@required

+ (void)shieldCrashWithArr:(NSArray *)arr;

@end
