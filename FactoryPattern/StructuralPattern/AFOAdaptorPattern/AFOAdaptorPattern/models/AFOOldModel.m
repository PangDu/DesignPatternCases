//
//  AFOOldModel.m
//  AFOAdaptorPattern
//
//  Created by xueguang xian on 2019/3/27.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOOldModel.h"

typedef void(^imageAddressBlock)(NSString *strPath);

@interface AFOOldModel ()<NSURLSessionDownloadDelegate>
@property (nonatomic, strong)   NSOperationQueue    *queue;
@property (nonatomic, copy)     imageAddressBlock   downBlock;
@end

@implementation AFOOldModel
- (void)loadImageForNativeClass:(NSString *)strUrl
                          block:(void(^)(NSString *imageAddress))blok{
    NSURL *url = [NSURL URLWithString:strUrl];
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:self.queue];
    NSURLSessionDownloadTask *task = [session downloadTaskWithURL:url];
    [task resume];
    ///---
    self.downBlock = ^(NSString *strPath) {
        blok(strPath);
    };
}
#pragma mark ------ NSURLSessionDownloadDelegate
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location{
    NSString *dirPath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
    NSString *path = [dirPath stringByAppendingPathComponent:@"demo.jpg"];
    
    NSFileManager *manager = [NSFileManager defaultManager];
    BOOL isDir = NO;
    if ([manager fileExistsAtPath:path isDirectory:&isDir]) {
        [manager removeItemAtPath:path error:nil];
    }
    [manager moveItemAtPath:[location path] toPath:path error:nil];
    self.downBlock(path);
}
#pragma mark ------ property
- (NSOperationQueue *)queue{
    if (!_queue) {
        _queue = [[NSOperationQueue alloc] init];
    }
    return _queue;
}
@end
