//
//  AFOCriteriaMale.m
//  AFOFilterPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOCriteriaMale.h"
#import "AFOPerson.h"
@implementation AFOCriteriaMale
- (NSArray<AFOPerson *> *)meetCriteria:(NSArray<AFOPerson *> *)array{
    __block NSMutableArray *mutable = [[NSMutableArray alloc] init];
    [array enumerateObjectsUsingBlock:^(AFOPerson * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        AFOPerson *persion = obj;
        if ([persion.gender isEqualToString:@"MALE"]) {
            [mutable addObject:persion];
        }
    }];
    return mutable;
}
- (void)show{
    
}
@end
