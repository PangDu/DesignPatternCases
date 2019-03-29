//
//  AFOViewController.m
//  AFOAdaptorPattern
//
//  Created by xueguang xian on 2019/3/26.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOAdaptor.h"
@interface AFOViewController ()
@property (nonatomic, strong) UIImageView   *imageView;
@property (nonatomic, strong) AFOAdaptor    *adaptor;
@property (nonatomic, copy)   NSString      *strUrl;
@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.imageView];
    __weak typeof(self) weakSelf = self;
    [self.adaptor loadImageFromUrl:self.strUrl block:^(NSString * _Nonnull strPath) {
        __strong typeof(self) strongSelf = weakSelf;
        UIImage *image = [UIImage imageWithContentsOfFile:strPath];
        strongSelf.imageView.image = image;
    }];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark ------ property
- (UIImageView *)imageView{
    if (!_imageView) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 400, 600)];
        _imageView.center = self.view.center;
        _imageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _imageView;
}
- (AFOAdaptor *)adaptor{
    if (!_adaptor) {
        _adaptor = [[AFOAdaptor alloc] init];
    }
    return _adaptor;
}
- (NSString *)strUrl{
    if (!_strUrl) {
        _strUrl = @"http://n.sinaimg.cn/photo/transform/700/w1000h500/20190326/bVgc-hutwezf5625873.jpg";
    }
    return _strUrl;
}
@end
