//
//  AFOHeadlightsBuilder.m
//  AFOBridge
//
//  Created by xueguang xian on 2019/3/27.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOHeadlightsBuilder.h"
#import "AFOHeadlights.h"
#import "AFOCircular.h"
#import "AFOTriangle.h"
#import "AFOSquare.h"

@interface AFOHeadlightsBuilder ()
@property (nonatomic, strong) AFOCircular *circular;
@property (nonatomic, strong) AFOTriangle *triangle;
@property (nonatomic, strong) AFOSquare   *square;
@end

@implementation AFOHeadlightsBuilder
- (AFOHeadlights *)createCircular{
    return self.circular;
}
- (AFOHeadlights *)createTriangle{
    return self.triangle;
}
- (AFOHeadlights *)createSquare{
    return self.square;
}
#pragma mark ------ property
- (AFOCircular *)circular{
    if (!_circular) {
        _circular = [[AFOCircular alloc] init];
    }
    return _circular;
}
- (AFOTriangle *)triangle{
    if (!_triangle) {
        _triangle = [[AFOTriangle alloc] init];
    }
    return _triangle;
}
- (AFOSquare *)square{
    if (!_square) {
        _square = [[AFOSquare alloc] init];
    }
    return _square;
}
@end
