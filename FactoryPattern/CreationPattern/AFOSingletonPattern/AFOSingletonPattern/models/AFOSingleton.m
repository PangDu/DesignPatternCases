//
//  AFOSingleton.m
//  AFOSingletonPattern
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOSingleton.h"

@implementation AFOSingleton
+ (instancetype)shareInstance{
    static AFOSingleton *instance = nil;
    static dispatch_once_t  once_t;
    dispatch_once(&once_t, ^{
        instance = [[self alloc] init];
    });
    return instance;
}
- (void)logClassName{
    NSLog(@"class name ====== %@",NSStringFromClass([self class]));
}
@end
