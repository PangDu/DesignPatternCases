//
//  AFOMachineGunFactory.h
//  AFOAbstractFactory
//
//  Created by xueguang xian on 2019/3/24.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOFactory.h"

NS_ASSUME_NONNULL_BEGIN
@class AFOMachineGun;
@interface AFOMachineGunFactory : AFOFactory
@property (nonatomic, strong, readonly)   AFOMachineGun *machineGun;
@end

NS_ASSUME_NONNULL_END
