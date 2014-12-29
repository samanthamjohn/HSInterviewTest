//
//  ViewController.m
//  HSInterview
//
//  Created by Samantha John on 12/29/14.
//  Copyright (c) 2014 Samantha John. All rights reserved.
//

#import "ViewController.h"
#import "Character.h"
#import "CharacterDataSource.h"
#import "CharacterView.h"

NSString * const CHARACTER_REUSE_ID = @"characterCell";

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *characters;
@property (nonatomic, strong) CharacterView *selectedCharacterView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CHARACTER_REUSE_ID];
    
    self.characters = [CharacterDataSource allCharacters];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.characters.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Character *character = self.characters[indexPath.row];
    return character.image.size.height;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CHARACTER_REUSE_ID];
    Character *character = self.characters[indexPath.row];
    cell.imageView.image = character.image;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.selectedCharacterView removeFromSuperview];
    Character *character = self.characters[indexPath.row];
    self.selectedCharacterView = [[CharacterView alloc] initWithCharacter:character];
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    self.selectedCharacterView.frame = cell.contentView.bounds;
    [cell.contentView addSubview:self.selectedCharacterView];
}

@end
