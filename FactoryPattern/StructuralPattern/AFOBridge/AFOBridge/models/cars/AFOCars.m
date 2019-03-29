//
//  AFOCars.m
//  AFOBridge
//
//  Created by xueguang xian on 2019/3/27.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOCars.h"
#import "AFOSeats.h"
#import "AFOHeadlights.h"
#import "AFOColors.h"

@interface AFOCars ()
@property (nonatomic, strong) AFOSeats          *seats;
@property (nonatomic, strong) AFOHeadlights     *headlights;
@property (nonatomic, strong) AFOColors         *colors;
@end

@implementation AFOCars
- (instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}
- (void)createCarForSeats:(AFOSeats *)seats
               headlights:(AFOHeadlights *)headlights
                   colors:(AFOColors *)colors{
    self.seats = seats;
    self.headlights = headlights;
    self.colors = colors;
}
#pragma mark ------ property
- (NSString *)name{
    return @"Car";
}
- (AFOSeats *)seats{
    if (!_seats) {
        _seats = [[AFOSeats alloc] init];
    }
    return _seats;
}
- (AFOHeadlights *)headlights{
    if (!_headlights) {
        _headlights = [[AFOHeadlights alloc] init];
    }
    return _headlights;
}
- (AFOColors *)colors{
    if (!_colors) {
        _colors = [[AFOColors alloc] init];
    }
    return _colors;
}
- (NSString *)description{
    NSString *strCar = [NSString stringWithFormat:@"%@ have %@ is %@,%@ have %@",self.name,self.seats.name,self.colors.name,self.name,self.headlights.name];
    NSLog(@"strCar ====== %@",strCar);
    return strCar;
}
@end
