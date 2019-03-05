//
//  CPApp.h
//  CommitsParser
//
//  Created by Denis Nefedov on 05/03/2019.
//  Copyright © 2019 X. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CPApp : NSObject

- (void)fetchCommitsForRepo:(NSString*)repo;

@end

NS_ASSUME_NONNULL_END
