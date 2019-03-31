//
//  AFOInvoker.h
//  AFOCommandPattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOCommand;
@interface AFOInvoker : NSObject
- (instancetype)initWithCommand:(AFOCommand *)command;
- (void)invokerAction;
@end

NS_ASSUME_NONNULL_END
