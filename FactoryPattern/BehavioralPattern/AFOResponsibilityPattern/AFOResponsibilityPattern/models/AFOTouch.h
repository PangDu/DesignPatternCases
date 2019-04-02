//
//  AFOTouch.h
//  AFOResponsibilityPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, AFOTouchConversionOptions) {
    AFOTouchConversionNone       = 0,
    AFOTouchConversionController = 1,
    AFOTouchConversionView       = 2
};
NS_ASSUME_NONNULL_BEGIN

@interface AFOTouch : NSObject
@property (nonatomic, assign) AFOTouchConversionOptions options;
- (instancetype)initWithType:(AFOTouchConversionOptions)type;
@end

NS_ASSUME_NONNULL_END
