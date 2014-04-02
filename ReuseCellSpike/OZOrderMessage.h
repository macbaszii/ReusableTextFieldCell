//
//  OZOrderMessage.h
//  ReuseCellSpike
//
//  Created by Kiattisak Anoochitarom on 4/2/2557 BE.
//  Copyright (c) 2557 Kiattisak Anoochitarom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OZOrderMessage : NSObject

@property (nonatomic, strong) NSString *firstMessage;
@property (nonatomic, strong) NSString *secondMessage;

- (instancetype)initWithFirstMessage:(NSString *)first andSecondMessage:(NSString *)second;

@end
