//
//  AFOAdaptor.h
//  AFOAdaptorPattern
//
//  Created by xueguang xian on 2019/3/26.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFOAdaptor : NSObject
- (void)loadImageFromUrl:(NSString *)strUrl
                   block:(void (^)(NSString * _Nonnull strPath))block;
@end

NS_ASSUME_NONNULL_END
