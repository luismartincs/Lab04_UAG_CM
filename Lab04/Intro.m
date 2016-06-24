//
//  Intro.m
//  Lab04
//
//  Created by Luis de Jesus Martin Castillo on 23/06/16.
//  Copyright © 2016 Luis de Jesus Martin Castillo. All rights reserved.
//

#import "Intro.h"
#import "Home.h"
#import "Declarations.h"

@interface Intro ()

@end

@implementation Intro

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    _lblIntro.text = maIntroTitles[_pageIndex];
    _imgIntro.image = [UIImage imageNamed:maIntroImgs[_pageIndex]];
    
    
    if (self.pageIndex == 2) {
        _btnIntro.hidden = NO;
    }
    
}

- (IBAction)goHome:(id)sender {
    
    Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Home"];
    
    [self presentViewController:vc animated:YES completion:nil];
    
}
@end
