//
//  AFOFactory.m
//  AFOAbstractFactory
//
//  Created by xueguang xian on 2019/3/24.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOFactory.h"
#import "AFOMechanical.h"
#import "AFOPistolFactory.h"
#import "AFOMachineGunFactory.h"
@interface AFOFactory ()
@property (nonatomic, strong)   AFOPistolFactory        *pistolFactory;
@property (nonatomic, strong)   AFOMachineGunFactory    *machineGunFactory;
@end

@implementation AFOFactory
- (nonnull AFOMechanical *)cratePistol{
    return self.pistolFactory.pistol;
}
- (nonnull AFOMechanical *)createMachineGun{
    return self.machineGunFactory.machineGun;
}
- (nonnull AFOPistolFactory *)pistolFactory{
    if (!_pistolFactory) {
        _pistolFactory = [[AFOPistolFactory alloc] init];
    }
    return _pistolFactory;
}
- (AFOMachineGunFactory *)machineGunFactory{
    if (!_machineGunFactory) {
        _machineGunFactory = [[AFOMachineGunFactory alloc] init];
    }
    return _machineGunFactory;
}
@end
