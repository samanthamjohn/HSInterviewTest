//
//  ViewController.m
//  HSInterview
//
//  Created by Samantha John on 12/29/14.
//  Copyright (c) 2014 Samantha John. All rights reserved.
//

#import "ViewController.h"
#import "HSCharacter.h"
#import "HSCharacterView.h"

NSString * const HSCellReuseIdentifier = @"HSCell";

@interface ViewController ()
@property (nonatomic, strong) NSArray *characters;
@property (nonatomic, strong) UIView *highlightedCharacterView;
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.characters = [HSCharacter buildCharacterList];
	
	self.view.backgroundColor = [UIColor whiteColor];
	
	[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:HSCellReuseIdentifier];
	self.tableView.rowHeight = 300;
}

- (HSCharacter *)characterForIndexPath:(NSIndexPath *)indexPath
{
	if (self.characters.count > indexPath.row) {
		return (HSCharacter *)self.characters[indexPath.row];
	}

	return nil;
}

#pragma mark - UITableViewDataSource 

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [self.characters count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:HSCellReuseIdentifier];
	cell.imageView.image = [[self characterForIndexPath:indexPath] image];
	cell.selectionStyle = UITableViewCellSelectionStyleNone;
	
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[self.highlightedCharacterView removeFromSuperview];
	
	UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
	HSCharacter *character = [self characterForIndexPath:indexPath];
	self.highlightedCharacterView = [HSCharacterView newWithName:character.name bio:character.bio];
	self.highlightedCharacterView.frame = cell.bounds;
	[cell.contentView addSubview:self.highlightedCharacterView];
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[self.highlightedCharacterView removeFromSuperview];
}
@end
