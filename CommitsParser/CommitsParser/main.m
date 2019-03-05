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
        // insert code here...
        CPApp* object = [CPApp alloc];
        [object fetchCommitsForRepo:@"hi"];
    }
    return 0;
}
