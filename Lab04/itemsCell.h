//
//  itemsCell.h
//  Lab04
//
//  Created by Luis de Jesus Martin Castillo on 23/06/16.
//  Copyright © 2016 Luis de Jesus Martin Castillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface itemsCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *detailsImage;
@property (strong, nonatomic) IBOutlet UILabel *detailsTitle;
@property (strong, nonatomic) IBOutlet UILabel *detailsSubtitle;
@property (strong, nonatomic) IBOutlet UILabel *detailsDev;

@end
