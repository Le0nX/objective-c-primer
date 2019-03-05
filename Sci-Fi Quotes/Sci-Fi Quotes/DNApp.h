//
//  DNApp.h
//  Sci-Fi Quotes
//
//  Created by Denis Nefedov on 05/03/2019.
//  Copyright © 2019 X. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DNQuote.h"

NS_ASSUME_NONNULL_BEGIN

@interface DNApp : NSObject

@property NSMutableArray<DNQuote*> *quotes;

- (instancetype)initWithFile:(NSString*)filename;

- (void)printQuote;

@end

NS_ASSUME_NONNULL_END
