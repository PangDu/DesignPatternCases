//
//  AFOHeadlightsBuilder.h
//  AFOBridge
//
//  Created by xueguang xian on 2019/3/27.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOHeadlights;
@interface AFOHeadlightsBuilder : NSObject
- (AFOHeadlights *)createCircular;
- (AFOHeadlights *)createTriangle;
- (AFOHeadlights *)createSquare;
@end

NS_ASSUME_NONNULL_END
