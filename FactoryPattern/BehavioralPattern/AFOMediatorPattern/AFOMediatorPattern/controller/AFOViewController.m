//
//  AFOViewController.m
//  AFOMediatorPattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOChatRoom.h"
#import "AFOUser.h"
#import "AFOMediator.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///---
    AFOUser *userOne = [[AFOUser alloc] init];
    userOne.strName = @"Boss";
    ///---
    AFOChatRoom *chatRoom = [[AFOChatRoom alloc] init];
    chatRoom.strName = @"Working";
    ///---
    AFOMediator *mediator = [[AFOMediator alloc] init];
    ///---
    [mediator sendMessage:@"This is one message" from:userOne to:chatRoom];
}


@end
