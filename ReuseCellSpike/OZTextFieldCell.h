//
//  OZTextFieldCell.h
//  ReuseCellSpike
//
//  Created by Kiattisak Anoochitarom on 4/1/2557 BE.
//  Copyright (c) 2557 Kiattisak Anoochitarom. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OZTextFieldCell;

typedef NS_ENUM(NSInteger, TextFieldOrder) {
    TextFieldFirst,
    TextFieldSecond
};

@protocol OZTextFieldCellDelegate <NSObject>

- (void)userDidEndEditingOnField:(TextFieldOrder)order onCell:(OZTextFieldCell *)cell;

@end

@interface OZTextFieldCell : UITableViewCell

@property (nonatomic, weak) id <OZTextFieldCellDelegate> delegate;

@end
