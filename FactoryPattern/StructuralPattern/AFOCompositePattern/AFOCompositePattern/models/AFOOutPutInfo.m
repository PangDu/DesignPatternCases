//
//  AFOOutPutInfo.m
//  AFOCompositePattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOOutPutInfo.h"
#import "AFOOrganizationComponent.h"

@interface AFOOutPutInfo ()
@property (nonatomic, strong) AFOOrganizationComponent *organization;
@end

@implementation AFOOutPutInfo
- (instancetype)initWith:(AFOOrganizationComponent *)component{
    if (self = [super init]) {
        _organization = component;
    }
    return self;
}
- (AFOOrganizationComponent *)organization{
    if (!_organization) {
        _organization = [[AFOOrganizationComponent alloc] init];
    }
    return _organization;
}
- (NSString *)description{
    return [self.organization description];
}
@end
