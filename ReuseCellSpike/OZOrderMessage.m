
//
//  OZOrderMessage.m
//  ReuseCellSpike
//
//  Created by Kiattisak Anoochitarom on 4/2/2557 BE.
//  Copyright (c) 2557 Kiattisak Anoochitarom. All rights reserved.
//

#import "OZOrderMessage.h"

@implementation OZOrderMessage

- (instancetype)initWithFirstMessage:(NSString *)first andSecondMessage:(NSString *)second {
    if (!(self = [super init])) {
        return nil;
    }
    
    self.firstMessage = first;
    self.secondMessage = second;
    
    return self;
}

@end
