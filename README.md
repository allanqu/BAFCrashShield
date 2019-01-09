# BAFCrashShield

-------------
**使用方法**

```

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    BAFCrashConfig *crashConfig = [[BAFCrashConfig alloc]init];//crash配置参数类
    crashConfig.crashBlackList = @[@"getObjects:range:"];//过滤黑名单
    
    NSError *error = nil;
    //开启防护
    [BAFCrashManager startCrashShieldWithConfig:crashConfig outError:&error];
    
	.............
    return YES;
}


```
			


          