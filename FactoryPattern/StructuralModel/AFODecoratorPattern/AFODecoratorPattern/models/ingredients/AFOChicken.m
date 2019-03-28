//
//  AFOChicken.m
//  AFODecoratorPattern
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOChicken.h"
#import "AFOBread.h"
@implementation AFOChicken
- (AFOBread *)addIngredients:(AFOBread *)bread{
    [bread.addArray addObject:@"Chicken"];
    bread.price = [bread add:bread.price and:self.price];
    return bread;
}
- (NSString *)name{
    return @"Chicken";
}
- (NSNumber *)price{
    return @(5.0);
}
@end
