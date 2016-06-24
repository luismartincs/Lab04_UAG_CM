//
//  Home.m
//  Lab04
//
//  Created by Luis de Jesus Martin Castillo on 23/06/16.
//  Copyright © 2016 Luis de Jesus Martin Castillo. All rights reserved.
//

#import "Home.h"
#import "itemsCell.h"
#import "Details.h"

@interface Home ()

@property NSMutableArray *avengerNames;
@property NSMutableArray *avengerImgs;

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initController{
    
    _avengerNames = [[NSMutableArray alloc] initWithObjects:@"Capitán América",@"Iron Man",@"Hulk",@"Hawk Eye",@"Thor",@"Spiderman", nil];
    
    _avengerImgs = [[NSMutableArray alloc] initWithObjects:@"capitan.png",@"ironman.png",@"hulk.png",@"hawkeye.png",@"thor.png",@"spiderman.png", nil];
}

#pragma  mark - Delegates

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 16;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    itemsCell *cell = (itemsCell*)[tableView dequeueReusableCellWithIdentifier:@"itemsCell"];
    
    if (cell == nil) {
        
        [tableView registerNib:[UINib nibWithNibName:@"itemsCell" bundle:nil] forCellReuseIdentifier:@"itemsCell"];
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"itemsCell"];
    }
    
  //  cell.nameAvenger.text = _avengerNames[indexPath.row];
  //  cell.imgAvenger.image = [UIImage imageNamed:self.avengerImgs[indexPath.row]];
    
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Details *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Details"];
    
    [self presentViewController:vc animated:YES completion:nil];
    
}

@end
