//
//  AFOFactory.h
//  AFOAbstractFactory
//
//  Created by xueguang xian on 2019/3/24.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AFOMechanical;
NS_ASSUME_NONNULL_BEGIN
@interface AFOFactory : NSObject
- (nonnull AFOMechanical *)cratePistol;
- (nonnull AFOMechanical *)createMachineGun;
@end

NS_ASSUME_NONNULL_END
