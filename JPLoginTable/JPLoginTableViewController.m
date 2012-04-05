//
//  JPLoginTableViewController.m
//  JPLoginTableView
//
//  Created by Jonathan on 21/02/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "JPLoginTableViewController.h"


@implementation JPLoginTableViewController
@synthesize tableView;

#pragma mark -
#pragma mark View lifecycle


-(void) loadView {
	UITableView *tTableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]
															style:UITableViewStyleGrouped];
	[tTableView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
	[tTableView setDelegate:self];
	[tTableView setDataSource:self];
	[tTableView setBackgroundView:[[[UIView alloc] initWithFrame:self.tableView.bounds] autorelease]];
	self.tableView = tTableView;
	self.view = tTableView;
	[tTableView release];
}


- (void)viewDidLoad {
    [super viewDidLoad];
	[self.tableView setScrollEnabled:NO];
	[self.tableView.backgroundView setBackgroundColor:[UIColor colorWithRed:48/255.0 green:71/255.0 blue:133/255.0 alpha:1]];
	UIImageView *headerImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo"]];
	[headerImageView setContentMode:UIViewContentModeCenter];
	[headerImageView setFrame:CGRectMake(headerImageView.frame.origin.x, headerImageView.frame.origin.y, headerImageView.frame.size.width, 100)];	
	[self.tableView setTableHeaderView:headerImageView];
	[headerImageView release];
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return YES;
}
-(void) willAnimateSecondHalfOfRotationFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation duration:(NSTimeInterval)duration {
	if (UIInterfaceOrientationIsPortrait(fromInterfaceOrientation)) {
		self.tableView.tableHeaderView.frame = CGRectMake(self.tableView.tableHeaderView.frame.origin.x, self.tableView.tableHeaderView.frame.origin.y, self.tableView.tableHeaderView.frame.size.width, 26);
		[self.tableView setTableHeaderView:self.tableView.tableHeaderView];
		[self.tableView.tableHeaderView setContentMode:UIViewContentModeScaleAspectFit];
	} else {
		self.tableView.tableHeaderView.frame = CGRectMake(self.tableView.tableHeaderView.frame.origin.x, self.tableView.tableHeaderView.frame.origin.y, self.tableView.tableHeaderView.frame.size.width, 100);
		[self.tableView setTableHeaderView:self.tableView.tableHeaderView];
		[self.tableView.tableHeaderView setContentMode:UIViewContentModeCenter];
	}

}


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 2;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)aTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(7, 0, cell.contentView.bounds.size.width - 27, cell.contentView.bounds.size.height)];
	[textField setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
	[textField setAutocorrectionType:UITextAutocorrectionTypeNo];
	[textField setAutocapitalizationType:UITextAutocapitalizationTypeNone];
	[textField setBorderStyle:UITextBorderStyleNone];
	[textField setClearButtonMode:UITextFieldViewModeWhileEditing];
	[textField setReturnKeyType:UIReturnKeyGo];	
	if (indexPath.row == 0) {
		[textField setPlaceholder:@"Email"];
		[textField setSecureTextEntry:NO];
		[textField setKeyboardType:UIKeyboardTypeEmailAddress];
		[textField becomeFirstResponder];
	} else {
		[textField setPlaceholder:@"Password"];
		[textField setSecureTextEntry:YES];
		[textField setKeyboardType:UIKeyboardTypeDefault];
	}
	[cell.contentView addSubview:textField];
	[textField release];
	
	
    return cell;
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
	self.tableView = nil;
}


- (void)dealloc {
	[tableView release];
    [super dealloc];
}


@end

