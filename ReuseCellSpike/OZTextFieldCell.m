//
//  OZTextFieldCell.m
//  ReuseCellSpike
//
//  Created by Kiattisak Anoochitarom on 4/1/2557 BE.
//  Copyright (c) 2557 Kiattisak Anoochitarom. All rights reserved.
//

#import "OZTextFieldCell.h"

@interface OZTextFieldCell() <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *firstField;
@property (nonatomic, weak) IBOutlet UITextField *secondField;

@end

@implementation OZTextFieldCell

- (void)awakeFromNib
{
    self.firstField.placeholder = @"first";
    self.secondField.placeholder = @"second";
    
    self.firstField.tag = TextFieldFirst;
    self.secondField.tag = TextFieldSecond;
}

#pragma mark - UITextFieldDelegate

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([self.delegate respondsToSelector:@selector(userDidEndEditingOnField:onCell:)]) {
        [self.delegate userDidEndEditingOnField:textField.tag onCell:self];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
