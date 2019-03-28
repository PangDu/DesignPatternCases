//
//  AFOHam.m
//  AFODecoratorPattern
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOHam.h"
#import "AFOBread.h"
@implementation AFOHam
- (AFOBread *)addIngredients:(AFOBread *)bread{
    [bread.addArray addObject:@"Ham"];
    bread.price = [bread add:bread.price and:self.price];
    return bread;
}
- (NSString *)name{
    return @"Ham";
}
- (NSNumber *)price{
    return @(4.0);
}
@end
