//
//  AFOOrExpression.m
//  AFOInterpreterPattern
//
//  Created by xueguang xian on 2019/4/4.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOOrExpression.h"

@interface AFOOrExpression ()
@property (nonatomic, strong) AFOExpression *first;
@property (nonatomic, strong) AFOExpression *second;
@end
@implementation AFOOrExpression
- (instancetype)initWith:(AFOExpression *)first
                 another:(AFOExpression *)another{
    if (self = [super init]) {
        _first = first;
        _second = another;
    }
    return self;
}
- (BOOL)interpretGender:(NSString *)context{
    return ([self.first interpretGender:context] || [self.second interpretGender:context]);
}
- (BOOL)interpretMarriage:(NSString *)context{
       return ([self.first interpretMarriage:context] && [self.second interpretMarriage:context]);
}
@end
