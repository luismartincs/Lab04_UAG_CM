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

@property NSMutableArray *games;
@property NSMutableArray *gamesGender;
@property NSMutableArray *gamesDev;
@property NSMutableArray *gamesImg;
@property NSMutableArray *gamesConsole;
@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initController{
    
    _games = [[NSMutableArray alloc] initWithObjects:@"Overwatch",@"Doom",@"Uncharted 4",@"Ratchet & Clank",@"The Banner Saga 2",@"Steven's Sausage Roll",@"Dark Souls III",@"Dirt Rally",@"Pokkén Tournament",@"The Legend of Zelda: TP",@"Hitman",@"Tom Clancy's The Division",@"Superhot",@"Far Cry Primal",@"Street Fighter V",@"Firewatch",nil];
    
    _gamesGender = [[NSMutableArray alloc] initWithObjects:@"Disparos",@"FPS",@"Aventura",@"Plataforma",@"Estrategia",@"Puzzle",@"RPG",@"Carreras",@"Peleas",@"Aventura",@"Acción",@"Acción",@"FPS",@"Mundo abierto",@"Peleas",@"Aventura", nil];
    
    _gamesDev = [[NSMutableArray alloc] initWithObjects:@"Blizzard",@"Id Software",@"Naughty Dog",@"Insomniac Games",@"Stoic",@"Increpare Games",@"From Software",@"Codemasters",@"Bandai Namco Studios",@"Nintendo",@"Io Interactive",@"Ubisoft",@"Superhot Team",@"Ubisoft",@"Capcom",@"Campo Santo", nil];
    
    _gamesImg = [[NSMutableArray alloc] initWithObjects:@"g1.png",@"g2.jpg",@"g3.jpg",@"g4.jpg",@"g5.jpg", @"g6.jpg",@"g7.jpg",@"g8.jpg",@"g9.jpg",@"g10.jpg",@"g11.jpg",@"g12.jpg",@"g13.jpg",@"g14.jpg",@"g15.png",@"g16.jpg",nil];
    
    _gamesConsole = [[NSMutableArray alloc] initWithObjects:@"123",@"123",@"2",@"2",@"3",@"3",@"123",@"12",@"4",@"4",@"123",@"123",@"3",@"123",@"2",@"23", nil];
}

#pragma  mark - Delegates

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_games count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    itemsCell *cell = (itemsCell*)[tableView dequeueReusableCellWithIdentifier:@"itemsCell"];
    
    if (cell == nil) {
        
        [tableView registerNib:[UINib nibWithNibName:@"itemsCell" bundle:nil] forCellReuseIdentifier:@"itemsCell"];
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"itemsCell"];
    }
    
    cell.detailsTitle.text = _games[indexPath.row];
    cell.detailsSubtitle.text = _gamesGender[indexPath.row];
    cell.detailsDev.text = _gamesDev[indexPath.row];
    cell.detailsImage.image = [UIImage imageNamed:_gamesImg[indexPath.row]];
    
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Details *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Details"];
    
    vc.gName = _games[indexPath.row];
    vc.consoles = [_gamesConsole[indexPath.row] integerValue];
    [self presentViewController:vc animated:YES completion:nil];
    
}

@end
