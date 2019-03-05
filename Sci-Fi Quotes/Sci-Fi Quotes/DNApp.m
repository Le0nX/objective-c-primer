//
//  DNApp.m
//  Sci-Fi Quotes
//
//  Created by Denis Nefedov on 05/03/2019.
//  Copyright © 2019 X. All rights reserved.
//

#import "DNApp.h"

@implementation DNApp

- (instancetype)initWithFile:(NSString*)filename {
    if (self = [super init]) {
        NSError *error;
        NSString *contents = [NSString stringWithContentsOfFile:filename usedEncoding:nil error:&error];
        
        if (error != nil) {
            NSLog(@"Fatal error: %@", [error localizedDescription]);
            exit(0);
        }
        
        NSArray *lines = [contents componentsSeparatedByString:@"\n"];
        
        
        self.quotes = [NSMutableArray arrayWithCapacity:[lines count]];
        
        for (NSString *line in lines) {
            DNQuote *quote = [[DNQuote alloc] initWithLine:line];
            if (quote != nil) {
               
                [self.quotes addObject:quote];
            }
            
        }
    }
    return self;
}

- (void)printQuote {
    NSInteger random = arc4random_uniform((u_int32_t)
                                          [self.quotes count]);
    DNQuote *selected = self.quotes[random];
    printf("%s\n", [selected.text
                    cStringUsingEncoding:NSUTF8StringEncoding]);
    printf("\t – %s\n", [selected.person
                         cStringUsingEncoding:NSUTF8StringEncoding]);
}

@end
