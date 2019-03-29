//
//  AFOFlyweightPattern.m
//  AFOFlyweightPattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFOFlyweightPattern.h"

@interface AFOFlyweightPattern ()
@property (nonatomic, strong, readwrite)   NSMutableArray *dataArray;
@end

@implementation AFOFlyweightPattern

- (UIImage *)imageForIndex:(NSInteger)index{
    if (index < self.dataArray.count) {
        return [self.dataArray objectAtIndex:index];
    }
    UIImage *image = [self imageForName:[NSString stringWithFormat:@"icon%ld",(long)index]];
    [self.dataArray addObject:image];
    return image;
}
- (UIImage *)imageForName:(NSString *)name{
    NSString *resourcePath = [[NSBundle mainBundle] pathForResource:name ofType:@"jpg"];
    UIImage *image = [UIImage imageWithContentsOfFile:resourcePath];
    return image;
}
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
@end
