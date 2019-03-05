//
//  main.m
//  Sci-Fi Quotes
//
//  Created by Denis Nefedov on 04/03/2019.
//  Copyright © 2019 X. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DNApp.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        NSString *desktopPath = [paths objectAtIndex:0];
        
        
        DNApp *app = [[DNApp alloc] initWithFile:[desktopPath stringByAppendingPathComponent:@"quotes.txt"]];
        [app printQuote];
    }
    return 0;
}
