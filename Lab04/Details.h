//
//  Details.h
//  Lab04
//
//  Created by Luis de Jesus Martin Castillo on 23/06/16.
//  Copyright © 2016 Luis de Jesus Martin Castillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Details : UIViewController

@property (strong,nonatomic) NSString *gName;
@property (nonatomic) NSInteger consoles;

@property (strong, nonatomic) IBOutlet UILabel *gameTitle;
@property (strong, nonatomic) IBOutlet UIImageView *logo1;
@property (strong, nonatomic) IBOutlet UIImageView *logo2;
@property (strong, nonatomic) IBOutlet UIImageView *logo3;
@property (strong, nonatomic) IBOutlet UIImageView *logo4;

- (IBAction)back:(id)sender;

@end
