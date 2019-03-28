//
//  AFOCars.m
//  AFODelegate
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOCars.h"
#import "AFODelegateAction.h"

@interface AFOCars ()
@property (nonatomic, weak) id<AFODelegateAction>delegate;
@end

@implementation AFOCars
- (instancetype)initWithDelegate:(id<AFODelegateAction>)target{
    if (self = [super init]) {
        _delegate = target;
    }
    return self;
}
- (void)driving{
    [_delegate personDrivingCars];
}
@end
