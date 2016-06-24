//
//  Details.m
//  Lab04
//
//  Created by Luis de Jesus Martin Castillo on 23/06/16.
//  Copyright © 2016 Luis de Jesus Martin Castillo. All rights reserved.
//

#import "Details.h"

@interface Details ()

@end

@implementation Details

- (void)viewDidLoad {
    [super viewDidLoad];
    _gameTitle.text = _gName;
    
    switch (_consoles) {
        case 1:
            _logo1.image = [UIImage imageNamed:@"logo2.png"];
            break;
        case 2:
            _logo2.image = [UIImage imageNamed:@"logo3.jpg"];
            break;
        case 3:
            _logo3.image = [UIImage imageNamed:@"logo1.jpg"];
            break;
        case 4:
            _logo4.image = [UIImage imageNamed:@"logo4.png"];
            break;
        case 12:
            _logo1.image = [UIImage imageNamed:@"logo2.png"];
            _logo2.image = [UIImage imageNamed:@"logo3.jpg"];
            break;
        case 123:
            _logo1.image = [UIImage imageNamed:@"logo2.png"];
            _logo2.image = [UIImage imageNamed:@"logo3.jpg"];
            _logo3.image = [UIImage imageNamed:@"logo1.jpg"];
            break;
        case 23:
            _logo2.image = [UIImage imageNamed:@"logo3.jpg"];
            _logo3.image = [UIImage imageNamed:@"logo1.jpg"];
            break;
            
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)back:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
