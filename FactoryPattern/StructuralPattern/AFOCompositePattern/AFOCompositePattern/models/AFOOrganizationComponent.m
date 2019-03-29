//
//  AFOOrganizationComponent.m
//  AFOCompositePattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOOrganizationComponent.h"

@implementation AFOOrganizationComponent
- (instancetype)initWith:(NSString *)name{
    if (self = [super init]) {
        _strName = name;
    }
    return self;
}
- (void)addOrganization:(AFOOrganizationComponent *)objc{
    
}
@end
