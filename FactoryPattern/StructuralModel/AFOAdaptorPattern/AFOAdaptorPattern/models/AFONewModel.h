//
//  AFONewModel.h
//  AFOAdaptorPattern
//
//  Created by xueguang xian on 2019/3/27.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFONewModel : NSObject
- (void)loadImageForAFNetworking:(NSString *)strUrl
                           block:(void(^)(NSString *imageAddress))block;
@end

NS_ASSUME_NONNULL_END
