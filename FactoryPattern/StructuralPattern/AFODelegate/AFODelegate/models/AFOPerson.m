//
//  AFOPerson.m
//  AFODelegate
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOPerson.h"
#import "AFOCars.h"
#import "AFODelegateAction.h"
@interface AFOPerson ()<AFODelegateAction>

@end


@implementation AFOPerson
- (void)playCars{
    AFOCars *cars = [[AFOCars alloc] initWithDelegate:self];
    [cars driving];
}
#pragma mark ------ delegate
- (void)personDrivingCars{
    NSLog(@"person driving  cars");
}
@end
