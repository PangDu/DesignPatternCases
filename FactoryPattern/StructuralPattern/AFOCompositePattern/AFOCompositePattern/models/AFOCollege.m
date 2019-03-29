//
//  AFOCollege.m
//  AFOCompositePattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOCollege.h"

@interface AFOCollege ();
@property (nonatomic, strong) NSMutableArray *dataArray;
@end

@implementation AFOCollege
- (void)addOrganization:(AFOOrganizationComponent *)objc{
    [self.dataArray addObject:objc];
}
#pragma mark ------ dataArray
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
- (NSString *)description{
    NSString *strName =@"";
    for (AFOOrganizationComponent *componet in self.dataArray) {
        [strName stringByAppendingString:componet.strName];
    }
    NSLog(@"---- %@ ----",self.strName);
    [self.dataArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj description];
    }];
    return strName;
}
@end
