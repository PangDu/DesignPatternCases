//
//  AFOViewController.m
//  AFOFlyweightPattern
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOFlyweightPattern.h"
@interface AFOViewController ()
@property (nonatomic, strong) AFOFlyweightPattern *flyweightPattern;
@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    for (int i = 1; i < 100; ++i){
        NSInteger index = arc4random() % 6;
        UIImage *image = [self.flyweightPattern imageForIndex:index];
        CGRect screenBounds = [[UIScreen mainScreen] bounds];
        CGFloat x = (arc4random() % (NSInteger)screenBounds.size.width);
        CGFloat y = (arc4random() % (NSInteger)screenBounds.size.height);
        NSInteger minSize = 10;
        NSInteger maxSize = 50;
        CGFloat size = (arc4random() % (maxSize - minSize + 1)) + minSize;
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(x, y, size, size)];
        imageView.frame = CGRectMake(x, y, size, size);
        imageView.image = image;
        [self.view addSubview:imageView];
    }
    // Do any additional setup after loading the view.
}
- (AFOFlyweightPattern *)flyweightPattern{
    if (!_flyweightPattern) {
        _flyweightPattern = [[AFOFlyweightPattern alloc] init];
    }
    return _flyweightPattern;
}

@end
