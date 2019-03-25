//
//  AFOCard.m
//  AFOPrototypePattern
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOCard.h"
@interface AFOCard () <NSCopying,NSMutableCopying>

@end
@implementation AFOCard
- (id)copyWithZone:(nullable NSZone *)zone{
    AFOCard *card = [[self class] allocWithZone:zone];
    [card setStrCardId:[_strCardId copy]];
    [card setYear:[_year copy]];
    [card setMoney:[_money copy]];
    return card;
}
- (id)mutableCopyWithZone:(nullable NSZone *)zone{
    AFOCard *card = [[self class] allocWithZone:zone];
    [card setStrCardId:[_strCardId mutableCopy]];
    [card setYear:[_year copy]];
    [card setMoney:[_money copy]];
    return card;
}
@end
