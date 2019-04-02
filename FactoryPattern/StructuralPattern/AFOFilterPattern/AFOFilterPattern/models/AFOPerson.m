//
//  AFOPerson.m
//  AFOFilterPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOPerson.h"

@implementation AFOPerson
- (instancetype)initWithName:(NSString *)name
                      gender:(NSString *)gender{
    if (self = [super init]) {
        _name = name;
        _gender = gender;
    }
    return self;
}
@end
