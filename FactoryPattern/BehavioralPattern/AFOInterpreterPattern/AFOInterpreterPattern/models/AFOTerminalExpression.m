//
//  AFOTerminalExpression.m
//  AFOInterpreterPattern
//
//  Created by xueguang xian on 2019/4/4.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOTerminalExpression.h"

@interface AFOTerminalExpression ()
@property (nonatomic, copy, readwrite) NSString *name;
@property (nonatomic, copy, readwrite) NSString *gender;
@property (nonatomic, copy, readwrite) NSString *marriage;
@end

@implementation AFOTerminalExpression
- (instancetype)initWithName:(nonnull NSString *)name
                      gender:(nonnull NSString *)gender
                    marriage:(nonnull NSString *)marriage{
    if (self = [super init]) {
        _name = name;
        _gender = gender;
        _marriage = marriage;
    }
    return self;
}
- (BOOL)interpretGender:(NSString *)context{
    return [self.gender containsString:context];
}
- (BOOL)interpretMarriage:(NSString *)context{
    return [self.marriage containsString:context];
}
@end
