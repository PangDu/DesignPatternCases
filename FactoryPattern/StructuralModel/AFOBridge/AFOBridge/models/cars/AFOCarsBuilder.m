//
//  AFOCarsBuilder.m
//  AFOBridge
//
//  Created by xueguang xian on 2019/3/27.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOCarsBuilder.h"
#import "AFOCars.h"
#import "AFOPickup.h"
#import "AFOSportsCar.h"
#import "AFOSUV.h"

@interface AFOCarsBuilder ()
@property (nonatomic, strong) AFOPickup     *pickUp;
@property (nonatomic, strong) AFOSportsCar  *sportsCar;
@property (nonatomic, strong) AFOSUV        *SUV;
@end

@implementation AFOCarsBuilder
- (AFOCars *)createPickup{
    return self.pickUp;
}
- (AFOCars *)createSportsCar{
    return self.sportsCar;
}
- (AFOCars *)createSUV{
    return self.SUV;
}
#pragma mark ------ property
- (AFOPickup *)pickUp{
    if (!_pickUp) {
        _pickUp = [[AFOPickup alloc] init];
    }
    return _pickUp;
}
- (AFOSportsCar *)sportsCar{
    if (!_sportsCar) {
        _sportsCar = [[AFOSportsCar alloc] init];
    }
    return _sportsCar;
}
- (AFOSUV *)SUV{
    if (!_SUV) {
        _SUV = [[AFOSUV alloc] init];
    }
    return _SUV;
}
@end
