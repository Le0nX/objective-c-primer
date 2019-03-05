//
//  DNQuote.h
//  Sci-Fi Quotes
//
//  Created by Denis Nefedov on 05/03/2019.
//  Copyright © 2019 X. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DNQuote : NSObject

@property NSString* text;
@property NSString* person;

// говорим, что можем вернуть nil и тип id 
- (nullable instancetype) initWithLine:(NSString*)line;

@end

NS_ASSUME_NONNULL_END
