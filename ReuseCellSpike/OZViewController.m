//
//  OZViewController.m
//  ReuseCellSpike
//
//  Created by Kiattisak Anoochitarom on 4/1/2557 BE.
//  Copyright (c) 2557 Kiattisak Anoochitarom. All rights reserved.
//

#import "OZViewController.h"
#import "OZTextFieldCell.h"

@interface OZViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation OZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString * const CellIdentifier = @"TextFieldCell";
    OZTextFieldCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier
                                                            forIndexPath:indexPath];
    
    return cell;
}

@end
