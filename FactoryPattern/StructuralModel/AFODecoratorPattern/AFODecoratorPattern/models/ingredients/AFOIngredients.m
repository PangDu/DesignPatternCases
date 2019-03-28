//
//  AFOIngredients.m
//  AFODecoratorPattern
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOIngredients.h"

@implementation AFOIngredients
- (AFOBread *)addIngredients:(AFOBread *)bread{
    return bread;
}
- (NSString *)name{
    return @"Ingredients";
}
@end
