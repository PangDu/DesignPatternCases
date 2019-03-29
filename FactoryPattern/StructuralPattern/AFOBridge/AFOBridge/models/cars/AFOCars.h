//
//  AFOCars.h
//  AFOBridge
//
//  Created by xueguang xian on 2019/3/27.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOSeats,AFOHeadlights,AFOColors;
@interface AFOCars : NSObject
@property (nonatomic, copy)     NSString *name;
- (void)createCarForSeats:(AFOSeats *)seats
               headlights:(AFOHeadlights *)headlights
                   colors:(AFOColors *)colors;
@end

NS_ASSUME_NONNULL_END
