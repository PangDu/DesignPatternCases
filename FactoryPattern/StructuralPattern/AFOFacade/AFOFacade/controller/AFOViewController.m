//
//  ViewController.m
//  AFOFacade
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOManager.h"

@interface AFOViewController ()
@property (nonatomic, strong)   AFOManager *manager;
@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *startButton = [UIButton buttonWithType:UIButtonTypeCustom];
    startButton.tag = 100;
    startButton.frame = CGRectMake(0, 0, 100, 80);
    startButton.center = CGPointMake(CGRectGetMidX(self.view.bounds), self.view.bounds.origin.y+ 150);
    [startButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [startButton setTitle:@"启动" forState:UIControlStateNormal];
    [startButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startButton];
    
    UIButton *stopButton = [UIButton buttonWithType:UIButtonTypeCustom];
    stopButton.tag = 200;
    stopButton.frame = CGRectMake(0, 0, 100, 80);
    stopButton.center = CGPointMake(CGRectGetMidX(self.view.bounds), self.view.bounds.origin.y+ 250);
    [stopButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [stopButton setTitle:@"停止" forState:UIControlStateNormal];
    [stopButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:stopButton];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)buttonAction:(id)sender{
    UIButton *button = (UIButton *)sender;
    switch (button.tag) {
        case 100:
            [self.manager start];
            break;
        case 200:
            [self.manager shutOffPower];
            break;
        default:
            break;
    }
}
#pragma mark ------ property
- (AFOManager *)manager{
    if (!_manager) {
        _manager = [[AFOManager alloc] init];
    }
    return _manager;
}
@end
