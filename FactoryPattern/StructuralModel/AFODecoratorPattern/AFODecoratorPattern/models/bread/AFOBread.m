//
//  AFOBread.m
//  AFODecoratorPattern
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOBread.h"

@implementation AFOBread
- (instancetype)init{
    if (self = [super init]) {
        _price = @(5.0);
    }
    return self;
}
- (NSNumber*)add:(NSNumber *)one and:(NSNumber *)anotherNumber{
    self.price = [NSNumber numberWithFloat:[one floatValue] + [anotherNumber floatValue]];
    return self.price;
}
- (NSString *)name{
    return @"Bread";
}
- (NSMutableArray *)addArray{
    if (!_addArray) {
        _addArray = [[NSMutableArray alloc] initWithObjects:@"lettuce",@"Pickle food", nil];
    }
    return _addArray;
}
- (NSString *)description{
    NSString *strBase = [NSString stringWithFormat:@"%@ is price %.2f",self.name,[self.price floatValue]];
    NSString *strAdd = [self.addArray componentsJoinedByString:@"、"];
    NSString *strResult = [strBase stringByAppendingString:strAdd];
    return strResult;
}
@end
