//
//  AFOCars.m
//  AFOVisitorPatter
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOCars.h"
#import "AFOVisitor.h"
#import "AFOBody.h"
#import "AFOEngine.h"
#import "AFOWheel.h"

@interface AFOCars ()
@property (nonatomic, strong) AFOBody   *body;
@property (nonatomic, strong) AFOEngine *engline;
@property (nonatomic, strong) AFOWheel  *wheel;
@end

@implementation AFOCars
- (void)acceptAction:(AFOVisitor *)visitor{
    [visitor printVisitable:self];
    [visitor printVisitable:self.body];
    [visitor printVisitable:self.engline];
    [visitor printVisitable:self.wheel];
}
#pragma mark ------ property
- (NSString *)strName{
    return @"Cars Have:";
}
- (AFOBody *)body{
    if (!_body) {
        _body = [[AFOBody alloc] init];
    }
    return _body;
}
- (AFOEngine *)engline{
    if (!_engline) {
        _engline = [[AFOEngine alloc] init];
    }
    return _engline;
}
- (AFOWheel *)wheel{
    if (!_wheel) {
        _wheel = [[AFOWheel alloc] init];
    }
    return _wheel;
}
@end
