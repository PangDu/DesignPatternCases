//
//  AFOAdaptor.m
//  AFOAdaptorPattern
//
//  Created by xueguang xian on 2019/3/26.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOAdaptor.h"
#import "AFOOldModel.h"
#import "AFONewModel.h"
@interface AFOAdaptor ()
@property (nonatomic, strong) AFOOldModel *sessionModel;
@property (nonatomic, strong) AFONewModel *afnetWorkingModel;
@end

@implementation AFOAdaptor
- (void)loadImageFromUrl:(NSString *)strUrl
                   block:(void (^)(NSString *strPath))block{
#if TARGET_IPHONE_SIMULATOR
    [self.sessionModel loadImageForNativeClass:strUrl block:^(NSString * _Nonnull imageAddress) {
        dispatch_sync(dispatch_get_main_queue(), ^{
            block(imageAddress);
        });
    }];
#else
    [self.afnetWorkingModel loadImageForAFNetworking:strUrl block:^(NSString * _Nonnull imageAddress) {
        block(imageAddress);
    }];
#endif
}
#pragma mark ------ property
- (AFOOldModel *)sessionModel{
    if (!_sessionModel) {
        _sessionModel = [[AFOOldModel alloc] init];
    }
    return _sessionModel;
}
- (AFONewModel *)afnetWorkingModel{
    if (!_afnetWorkingModel) {
        _afnetWorkingModel = [[AFONewModel alloc] init];
    }
    return _afnetWorkingModel;
}
@end
