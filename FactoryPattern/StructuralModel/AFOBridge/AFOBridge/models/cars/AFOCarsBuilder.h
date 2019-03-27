//
//  AFOCarsBuilder.h
//  AFOBridge
//
//  Created by xueguang xian on 2019/3/27.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOCars;
@interface AFOCarsBuilder : NSObject
- (AFOCars *)createPickup;
- (AFOCars *)createSportsCar;
- (AFOCars *)createSUV;
@end

NS_ASSUME_NONNULL_END
