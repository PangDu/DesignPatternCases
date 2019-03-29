//
//  AFOFlyweightPattern.h
//  AFOFlyweightPattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFOFlyweightPattern : NSObject
@property (nonatomic, strong, readonly)   NSMutableArray *dataArray;
- (UIImage *)imageForIndex:(NSInteger)index;
@end

NS_ASSUME_NONNULL_END
