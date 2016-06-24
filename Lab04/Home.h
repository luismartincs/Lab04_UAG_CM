//
//  Home.h
//  Lab04
//
//  Created by Luis de Jesus Martin Castillo on 23/06/16.
//  Copyright © 2016 Luis de Jesus Martin Castillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *products;

@end
