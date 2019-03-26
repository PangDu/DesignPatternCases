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
@property (nonatomic, strong)   NSMutableDictionary *dictionary;
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
   return [self dictionaryToString:[self classProperty:self]];
}
- (NSDictionary *)classProperty:(id)objc{
    unsigned int count ,i;
    objc_property_t *propertyArray = class_copyPropertyList([objc class], &count);
    for (i = 0; i < count; i++) {
        objc_property_t property = propertyArray[i];
        NSString *proKey = [NSString stringWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        id proValue = [objc valueForKey:proKey];
        if ([proValue isKindOfClass:[NSString class]] || [proValue isKindOfClass:[NSNumber class]]) {
            if (proValue) {
                [self.dictionary setObject:proValue forKey:proKey];
            } else {
                [self.dictionary setObject:@"" forKey:proKey];
            }
        }else{
            [self classProperty:proValue];
        }
    }
    free(propertyArray);
    return self.dictionary;
}
- (NSString *)dictionaryToString:(NSDictionary *)dictionary{
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary options:0 error:0];
    NSString *strData = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    return strData;
}
#pragma mark ------ property
- (NSMutableDictionary *)dictionary{
    if (!_dictionary) {
        _dictionary = [[NSMutableDictionary alloc] init];
    }
    return _dictionary;
}
@end
