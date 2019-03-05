//
//  CPApp.m
//  CommitsParser
//
//  Created by Denis Nefedov on 05/03/2019.
//  Copyright © 2019 X. All rights reserved.
//

#import "CPApp.h"

@implementation CPApp

- (void)fetchCommitsForRepo:(NSString*)repo {
    NSString *urlString = [NSString stringWithFormat:@"https://api.github.com/repos/%@/commits", repo];
    
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSError *error;
    NSData *data = [NSData dataWithContentsOfURL:url options:NSDataReadingUncached error:&error];
    
    if (error != nil) {
        NSLog(@"Fatal error 1: %@", [error localizedDescription]);
        exit(0);
    }
    
    // тянем json
    NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    if (error != nil) {
        NSLog(@"Fatal error 2: %@", [error localizedDescription]);
        exit(0);
    }
    
    for (NSDictionary *entry in json) {
        NSString *name = entry[@"commit"][@"author"][@"name"];
    }
}

@end
