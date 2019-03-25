//
//  AFOSingleton.h
//  AFOSingletonPattern
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFOSingleton : NSObject
+ (instancetype)shareInstance;
- (void)logClassName;
@end

NS_ASSUME_NONNULL_END
