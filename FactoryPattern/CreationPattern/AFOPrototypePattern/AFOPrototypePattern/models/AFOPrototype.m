//
//  AFOPrototype.m
//  AFOPrototypePattern
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOPrototype.h"
#import "AFOCard.h"
#import <objc/runtime.h>
@interface AFOPrototype ()<NSCopying,NSMutableCopying>

@end

@implementation AFOPrototype
- (id)copyWithZone:(nullable NSZone *)zone{
    AFOPrototype *objc = [[self class] allocWithZone:zone];
    [objc setStrName:[_strName copy]];
    [objc setPhone:[_phone copy]];
    [objc setStrAddress:[_strAddress copy]];
    [objc setCard:[_card copy]];
    return objc;
}
- (id)mutableCopyWithZone:(nullable NSZone *)zone{
    AFOPrototype *objc = [[self class] allocWithZone:zone];
    [objc setStrName:[_strName mutableCopy]];
    [objc setPhone:[_phone copy]];
    [objc setStrAddress:[_strAddress mutableCopy]];
    [objc setCard:[_card mutableCopy]];
    return objc;
}
- (NSString *)description{
   return  [self dictionaryToString:self];
}
- (NSString *)dictionaryToString:(id)objc{
    unsigned int count ,i;
   __block NSString *strValue;
    NSString *strData;
    objc_property_t *propertyArray = class_copyPropertyList([objc class], &count);
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    for (i = 0; i < count; i++) {
        objc_property_t property = propertyArray[i];
        NSString *proKey = [NSString stringWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        id proValue = [objc valueForKey:proKey];
        if ([proValue isKindOfClass:[NSString class]] || [proValue isKindOfClass:[NSNumber class]]) {
            if (proValue) {
                [dic setObject:proValue forKey:proKey];
            } else {
                [dic setObject:@"" forKey:proKey];
            }
        }
        dispatch_barrier_async(dispatch_get_main_queue(), ^{
            strValue = [self dictionaryToString:proValue];
            if (strValue != nil) {
                [strData stringByAppendingString:strValue];
            }
        });
    }
    free(propertyArray);
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:0];
    strData = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSLog(@"strData====== %@",strData);
    return strData;
}
@end
