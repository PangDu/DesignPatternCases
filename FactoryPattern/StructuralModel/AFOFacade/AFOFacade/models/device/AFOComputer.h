//
//  AFOComputer.h
//  AFOFacade
//
//  Created by xueguang xian on 2019/3/26.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFOComputer : NSObject
@property (nonatomic, copy)     NSString    *strName;
- (void)putThroughPowerSupply;
- (void)shutOffPower;
@end

NS_ASSUME_NONNULL_END
