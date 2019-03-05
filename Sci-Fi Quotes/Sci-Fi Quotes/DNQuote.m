//
//  DNQuote.m
//  Sci-Fi Quotes
//
//  Created by Denis Nefedov on 05/03/2019.
//  Copyright © 2019 X. All rights reserved.
//

#import "DNQuote.h"

@implementation DNQuote

- (instancetype)initWithLine:(NSString *)line {
    /// обязательная проверка в init
    if (self = [super init]) {
        /// достаем пару строка/автор
        NSArray *split = [line componentsSeparatedByString:@"/"];
        
        if ([split count] != 2) {
            return nil;
        }
        
        self.text = split[0];
        self.person = split[1];
    }
    
    return self;
}

@end
