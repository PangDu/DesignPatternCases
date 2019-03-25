//
//  AFOCustomer.m
//  AFOBuilder
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOCustomer.h"
#import <objc/runtime.h>
@interface AFOCustomer ()
@end
@implementation AFOCustomer
- (instancetype)init{
    if (self = [super init]) {
        _strId      = @"";
        _strName    = @"";
        _strArea    = @"";
        _strAddress = @"";
        _isMembers  = NO;
        _age        = 18;
    }
    return self;
}
- (void)logCustomer{
    unsigned int count ,i;
    objc_property_t *propertyArray = class_copyPropertyList([self class], &count);
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    
    for (i = 0; i < count; i++) {
        objc_property_t property = propertyArray[i];
        NSString *proKey = [NSString stringWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        id proValue = [self valueForKey:proKey];
        
        if (proValue) {
            [dic setObject:proValue forKey:proKey];
        } else {
            [dic setObject:@"" forKey:proKey];
        }
    }
    free(propertyArray);
    NSLog(@"dic ====== %@",dic);
}
@end
