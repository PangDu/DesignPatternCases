//
//  ViewController.m
//  AFOPrototypePattern
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOCard.h"
#import "AFOPrototype.h"
@interface AFOViewController ()
@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AFOCard *card = [[AFOCard alloc] init];
    card.strCardId = @"000001";
    card.year = [NSNumber numberWithInteger:3];
    card.money = [NSNumber numberWithFloat:999999.99];
    
    AFOPrototype *prototype = [[AFOPrototype alloc] init];
    prototype.strName = @"张三";
    prototype.phone = [NSNumber numberWithInteger:110119120];
    prototype.strAddress = @"天安门";
    prototype.card = card;
    
    AFOPrototype *copyObjc = [prototype mutableCopy];
    [copyObjc description];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
