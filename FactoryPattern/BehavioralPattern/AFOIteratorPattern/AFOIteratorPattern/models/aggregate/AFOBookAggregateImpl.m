//
//  AFOBookAggregateImpl.m
//  AFOIteratorPattern
//
//  Created by xueguang xian on 2019/4/4.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOBookAggregateImpl.h"
#import "AFOBookIterator.h"
@interface AFOBookAggregateImpl ()
@property (nonatomic, strong) NSMutableArray<AFOBook *> *array;
@end
@implementation AFOBookAggregateImpl
- (void)addCourse:(AFOBook *)book{
    [self.array addObject:book];
}
- (void)removeCourse:(AFOBook *)book{
    [self.array removeObject:book];
}
- (AFOIterator *)getBookIterator{
    return [[AFOBookIterator alloc] initWithArray:self.array];
}
#pragma mark ------ property
- (NSMutableArray *)array{
    if (!_array) {
        _array = [[NSMutableArray alloc] init];
    }
    return _array;
}
@end
