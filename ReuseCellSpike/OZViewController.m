//
//  OZViewController.m
//  ReuseCellSpike
//
//  Created by Kiattisak Anoochitarom on 4/1/2557 BE.
//  Copyright (c) 2557 Kiattisak Anoochitarom. All rights reserved.
//

#import "OZViewController.h"
#import "OZTextFieldCell.h"
#import "OZOrderMessage.h"

static NSUInteger const OZMessageCapacity = 7;
static NSInteger const OZTextFieldCellHeight = 120;
static NSInteger const UIKeyboardHeight = 291;

@interface OZViewController () <UITableViewDataSource, UITableViewDelegate, OZTextFieldCellDelegate>

@property (nonatomic, strong) NSMutableArray *messages;
@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation OZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.messages = [NSMutableArray arrayWithCapacity:OZMessageCapacity];
    for (int i = 0; i < OZMessageCapacity; ++i) {
        self.messages[i] = [[OZOrderMessage alloc] initWithFirstMessage:@""
                                                       andSecondMessage:@""];
    }
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.messages.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString * const CellIdentifier = @"TextFieldCell";
    OZTextFieldCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier
                                                            forIndexPath:indexPath];
    cell.delegate = self;
    
    [cell configureCellWithOrderMessage:self.messages[indexPath.row]];
    
    return cell;
}

#pragma mark - OZTextFieldCellDelegate

- (void)userDidEndEditingField:(UITextField *)field onCell:(OZTextFieldCell *)cell {
    NSIndexPath *editingIndexPath = [self.tableView indexPathForCell:cell];
    OZOrderMessage *editingObject = self.messages[editingIndexPath.row];
    
    TextFieldOrder order = field.tag;
    if (order == TextFieldFirst) {
        editingObject.firstMessage = field.text;
    } else if (order == TextFieldSecond) {
        editingObject.secondMessage = field.text;
    }
}

- (void)userDidBeginEditingField:(UITextField *)field onCell:(OZTextFieldCell *)cell {
    
}

@end
