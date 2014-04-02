//
//  OZTextFieldCell.m
//  ReuseCellSpike
//
//  Created by Kiattisak Anoochitarom on 4/1/2557 BE.
//  Copyright (c) 2557 Kiattisak Anoochitarom. All rights reserved.
//

#import "OZTextFieldCell.h"
#import "OZOrderMessage.h"

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

- (void)configureCellWithOrderMessage:(OZOrderMessage *)orderMessage {
    self.firstField.text = orderMessage.firstMessage;
    self.secondField.text = orderMessage.secondMessage;
}

#pragma mark - UITextFieldDelegate

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    if ([self.delegate respondsToSelector:@selector(userDidBeginEditingField:onCell:)]) {
        [self.delegate userDidBeginEditingField:textField onCell:self];
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([self.delegate respondsToSelector:@selector(userDidEndEditingField:onCell:)]) {
        [self.delegate userDidEndEditingField:textField onCell:self];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
