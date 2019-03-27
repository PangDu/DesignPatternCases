//
//  AFOColorsBuilder.m
//  AFOBridge
//
//  Created by xueguang xian on 2019/3/27.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOColorsBuilder.h"
#import "AFOColors.h"
#import "AFOWhite.h"
#import "AFOBeige.h"
#import "AFORed.h"

@interface AFOColorsBuilder ()
@property (nonatomic, strong) AFOWhite *white;
@property (nonatomic, strong) AFOBeige *beige;
@property (nonatomic, strong) AFORed   *red;
@end

@implementation AFOColorsBuilder
- (AFOColors *)createWhite{
    return self.white;
}
- (AFOColors *)createBeige{
    return self.beige;
}
- (AFOColors *)createRed{
    return self.red;
}
#pragma mark ------ property
- (AFOWhite *)white{
    if (!_white) {
        _white = [[AFOWhite alloc] init];
    }
    return _white;
}
- (AFOBeige *)beige{
    if (!_beige) {
        _beige = [[AFOBeige alloc] init];
    }
    return _beige;
}
- (AFORed *)red{
    if (!_red) {
        _red = [[AFORed alloc] init];
    }
    return _red;
}
@end
