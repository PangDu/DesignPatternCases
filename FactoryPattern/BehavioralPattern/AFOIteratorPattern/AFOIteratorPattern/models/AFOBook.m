//
//  AFOBook.m
//  AFOIteratorPattern
//
//  Created by xueguang xian on 2019/4/4.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOBook.h"

@interface AFOBook  ()
@property (nonatomic, copy, readwrite) NSString    *name;
@property (nonatomic, assign, readwrite) float      price;
@end
@implementation AFOBook
- (instancetype)initWithName:(NSString *)name
                       price:(double)price{
    if (self = [super init]) {
        _name = name;
        _price = price;
    }
    return self;
}
- (NSString *)description{
    return [NSString stringWithFormat:@"book : name === %@, price === %f;", self.name, self.price];
}
@end
