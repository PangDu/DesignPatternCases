//
//  AFOEconomicFactory.m
//  AFOAbstractFactory
//
//  Created by xueguang xian on 2019/3/24.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOMachineGunFactory.h"
#import "AFOMachineGun.h"
@interface AFOMachineGunFactory ()
@property (nonatomic, strong, readwrite)   AFOMachineGun *machineGun;
@end

@implementation AFOMachineGunFactory
- (AFOMechanical *)createMachineGun{
    return  self.machineGun;
}
- (AFOMachineGun *)machineGun{
    if (!_machineGun) {
        _machineGun = [[AFOMachineGun alloc] init];
    }
    return _machineGun;
}
@end
