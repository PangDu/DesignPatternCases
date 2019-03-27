//
//  AFOSeatsBuilder.m
//  AFOBridge
//
//  Created by xueguang xian on 2019/3/27.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOSeatsBuilder.h"
#import "AFOSeats.h"
#import "AFOGenuineLeather.h"
#import "AFOArtificialLeather.h"
#import "AFOCloth.h"

@interface AFOSeatsBuilder ()
@property (nonatomic, strong) AFOGenuineLeather    *genuineLeather;
@property (nonatomic, strong) AFOArtificialLeather *artificialLeather;
@property (nonatomic, strong) AFOCloth             *cloth;
@end

@implementation AFOSeatsBuilder
- (AFOSeats *)crateGenuineLeather{
    return self.genuineLeather;
}
- (AFOSeats *)createArtificialLeather{
    return self.artificialLeather;
}
- (AFOSeats *)createCloth{
    return self.cloth;
}
#pragma mark ------ property
- (AFOGenuineLeather *)genuineLeather{
    if (!_genuineLeather) {
        _genuineLeather = [[AFOGenuineLeather alloc] init];
    }
    return _genuineLeather;
}
- (AFOArtificialLeather *)artificialLeather{
    if (!_artificialLeather) {
        _artificialLeather = [[AFOArtificialLeather alloc] init];
    }
    return _artificialLeather;
}
- (AFOCloth *)cloth{
    if (!_cloth) {
        _cloth = [[AFOCloth alloc] init];
    }
    return _cloth;
}
@end
