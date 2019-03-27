//
//  AFONewModel.m
//  AFOAdaptorPattern
//
//  Created by xueguang xian on 2019/3/27.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//
#import "AFONewModel.h"
#import <AFNetworking/AFNetworking.h>
typedef void(^imageAddressBlock)(NSString *strPath);

@interface AFONewModel ()
@property (nonatomic, copy) imageAddressBlock addressBlock;
@end

@implementation AFONewModel
- (void)loadImageForAFNetworking:(NSString *)strUrl
                           block:(void(^)(NSString *imageAddress))block{
    
    self.addressBlock = ^(NSString *strPath) {
        block(strPath);
    };
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:strUrl]];
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress *downloadProgress){
    } destination:^NSURL *(NSURL *targetPath, NSURLResponse *response) {
        NSURL *documentsDirectoryURL = [[NSFileManager defaultManager] URLForDirectory:NSCachesDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
        NSURL *fileURL = [documentsDirectoryURL URLByAppendingPathComponent:[response suggestedFilename]];
        return fileURL;
    } completionHandler:^(NSURLResponse *response, NSURL *filePath, NSError *error) {
        self.addressBlock([filePath resourceSpecifier]);
    }];
    [downloadTask resume];
}
@end
