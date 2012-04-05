//
//  JPLoginTableViewController.h
//  JPLoginTableView
//
//  Created by Jonathan on 21/02/2011.
//  Copyright 2011 Jonathan Bailey. All rights reserved.
//
//  Login View Controller based on Facebook login view, Facebook
//  logo and color scheme is intended for example only.
//  This may be modified, and distributed in any way, however
//  it would be nice if this link is kept here: https://github.com/Jon889/JPGeneral

#import <UIKit/UIKit.h>

@interface JPLoginTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
	UITableView *tableView;
}
@property (nonatomic, retain) UITableView *tableView;
@end
