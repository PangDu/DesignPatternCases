//
//  AFOShreddedCake.m
//  AFODecoratorPattern
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOShreddedCake.h"

@implementation AFOShreddedCake
- (instancetype)init{
    if (self = [super init]) {
        self.price = @(7.0);
    }
    return self;
}
- (NSString *)name{
    return @"ShreddedCake";
}
- (NSString *)description{
    NSString *strBase = [NSString stringWithFormat:@"%@ is price %.2f; %@ have ",self.name,[self.price floatValue],self.name];
    NSString *strAdd = [self.addArray componentsJoinedByString:@"、"];
    NSString *strResult = [strBase stringByAppendingString:strAdd];
    return strResult;
}
@end
