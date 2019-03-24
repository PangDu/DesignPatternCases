//
//  AFOPoliticalFactory.m
//  AFOAbstractFactory
//
//  Created by xueguang xian on 2019/3/24.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOPistolFactory.h"
#import "AFOPistol.h"
@interface AFOPistolFactory ()
@property (nonnull, nonatomic, strong, readwrite) AFOPistol *pistol;
@end

@implementation AFOPistolFactory
- (nonnull AFOPistol *)pistol{
    if (!_pistol) {
        _pistol = [[AFOPistol alloc] init];
    }
    return _pistol;
}
@end
