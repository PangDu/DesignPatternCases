//
//  AFOViewController.m
//  AFOMementoPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOOriginator.h"
#import "AFOMemento.h"
#import "AFOCaretaker.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///---
    AFOOriginator *originator = [[AFOOriginator alloc] initWithState:@"On"];
    [originator showState];
    ///---
    AFOMemento *memento = [[AFOMemento alloc] initWithState:originator.strState];
    ///---
    AFOCaretaker *caretaker = [[AFOCaretaker alloc] init];
    caretaker.memento = memento;
    ///---
    originator.strState = @"Off";
    [originator showState];
    ///---
    [originator settingMemento:memento];
    [originator showState];
}


@end
