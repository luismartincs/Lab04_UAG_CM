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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)back:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
