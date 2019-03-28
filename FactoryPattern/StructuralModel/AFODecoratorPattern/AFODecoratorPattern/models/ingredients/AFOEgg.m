//
//  AFOEgg.m
//  AFODecoratorPattern
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOEgg.h"
#import "AFOBread.h"

@implementation AFOEgg
- (AFOBread *)addIngredients:(AFOBread *)bread{
    [bread.addArray addObject:@"Egg"];
    bread.price = [bread add:bread.price and:self.price];
    return bread;
}
- (NSString *)name{
    return @"Egg";
}
- (NSNumber *)price{
    return @(3.0);
}
@end
