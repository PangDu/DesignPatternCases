//
//  AFOBookIterator.m
//  AFOIteratorPattern
//
//  Created by xueguang xian on 2019/4/4.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOBookIterator.h"
#import "AFOBook.h"
@interface AFOBookIterator ()
@property (nonatomic ,strong) NSMutableArray *array;
@property (nonatomic, assign) NSInteger       position;
@end
@implementation AFOBookIterator
- (instancetype)initWithArray:(NSMutableArray *)array{
    if (self = [super init]) {
        [self.array addObjectsFromArray:array];
    }
    return self;
}
- (AFOBook *)nextBook{
    AFOBook *book = [self.array objectAtIndex:self.position];
    NSLog(@"book : position is %ld;",(long)self.position);
    self.position ++;
    return book;
}
- (BOOL)isLast{
    if (self.position > self.array.count - 1) {
        return YES;
    }
    return NO;
}
#pragma mark ------ property
- (NSMutableArray *)array{
    if (!_array) {
        _array = [[NSMutableArray alloc] init];
    }
    return _array;
}
@end
