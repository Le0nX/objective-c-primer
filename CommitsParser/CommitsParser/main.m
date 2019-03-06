//
//  main.m
//  CommitsParser
//
//  Created by Denis Nefedov on 05/03/2019.
//  Copyright © 2019 X. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPApp.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *repo = @"apple/swift";
        if (argc == 2) {
            repo = [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding];
        }
        CPApp *app = [CPApp new];
        [app fetchCommitsForRepo:repo];
    }
    return 0;
}
