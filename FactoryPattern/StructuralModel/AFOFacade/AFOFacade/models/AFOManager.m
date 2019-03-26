//
//  AFOManager.m
//  AFOFacade
//
//  Created by xueguang xian on 2019/3/26.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOManager.h"
#import "AFOCPU.h"
#import "AFOFan.h"
#import "AFOSoundCard.h"
#import "AFOGraphicsCard.h"

@interface AFOManager ()
@property (nonatomic, strong) AFOCPU            *cpu;
@property (nonatomic, strong) AFOFan            *fan;
@property (nonatomic, strong) AFOSoundCard      *soundCard;
@property (nonatomic, strong) AFOGraphicsCard   *graphicsCard;
@end
@implementation AFOManager
- (void)start{
    NSLog(@"start");
    [self.cpu processingInstruction];
    [self.fan turn];
    [self.soundCard playSound];
    [self.graphicsCard showImages];
}
- (void)shutOffPower{
    NSLog(@"shutOffPower");
    [self.cpu processingInstruction];
    [self.fan stop];
    [self.soundCard stopPlay];
    [self.graphicsCard stopShow];
}
#pragma mark ------ property
- (AFOCPU *)cpu{
    if (!_cpu) {
        _cpu = [[AFOCPU alloc] init];
    }
    return _cpu;
}
- (AFOFan *)fan{
    if (!_fan) {
        _fan = [[AFOFan alloc] init];
    }
    return _fan;
}
- (AFOSoundCard *)soundCard{
    if (!_soundCard) {
        _soundCard = [[AFOSoundCard alloc] init];
    }
    return _soundCard;
}
- (AFOGraphicsCard *)graphicsCard{
    if (!_graphicsCard) {
        _graphicsCard = [[AFOGraphicsCard alloc] init];
    }
    return _graphicsCard;
}
@end
