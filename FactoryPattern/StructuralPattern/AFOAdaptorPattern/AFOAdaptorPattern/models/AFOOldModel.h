//
//  AFOOldModel.h
//  AFOAdaptorPattern
//
//  Created by xueguang xian on 2019/3/27.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFOOldModel : NSObject
- (void)loadImageForNativeClass:(NSString *)strUrl
                          block:(void(^)(NSString *imageAddress))blok;
@end

NS_ASSUME_NONNULL_END
