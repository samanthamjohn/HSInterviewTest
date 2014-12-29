//
//  ViewController.m
//  HSInterview
//
//  Created by Samantha John on 12/29/14.
//  Copyright (c) 2014 Samantha John. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *characterImages;
@property (nonatomic, strong) NSArray *characterNames;
@property (nonatomic, strong) NSArray *characterBios;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.view = [[UIScrollView alloc] initWithFrame:self.view.frame];
	self.view.backgroundColor = [UIColor whiteColor];
	
	self.characterBios = @[
						   @"Cosmic Cody was named by the winner of our Hopscotch Halloween Contest (HHC).",
						   @"StarGirl is actually from earth, the helmet is a ruse.",
						   @"Robo is from the year 3022 and has come back to the present in order to take over the world (before any other robots can).",
						   @"This bird is beautiful and perfect. She only regrets you cannot see her in full color regalia",
						   ];
	
	self.characterNames = @[
							@"Cosmic Cody",
							@"Star Girl",
							@"Robo",
							@"Birdy"
							];
	
	self.characterImages = @[
						[UIImage imageNamed:@"sketchy-astro"],
						[UIImage imageNamed:@"sketchy-stargirl"],
						[UIImage imageNamed:@"sketchy-robo"],
						[UIImage imageNamed:@"sketchy-bird"]
						];
	
	NSArray *characterViews = @[
							[[UIImageView alloc] initWithImage:self.characterImages[0]],
							[[UIImageView alloc] initWithImage:self.characterImages[1]],
							[[UIImageView alloc] initWithImage:self.characterImages[2]],
							[[UIImageView alloc] initWithImage:self.characterImages[3]]
							];
	
	for (int i = 0; i < 4; i++) {
		[self.view addSubview:characterViews[i]];
		[(UIView *)characterViews[i] setFrame:CGRectMake(0, 300 * i, 300, 300)];
		[[(UIView *)characterViews[i] layer] setBorderWidth:2];
		[[(UIView *)characterViews[i] layer] setBorderColor:[UIColor blackColor].CGColor];
		[(UIView *)characterViews[i] setUserInteractionEnabled:YES];
		UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tappedImageView:)];
		[(UIView *)characterViews[i] addGestureRecognizer:tap];
	}
	
	UIScrollView *scrollView = (UIScrollView *)self.view;
	scrollView.contentSize = CGSizeMake(300, 1200);
}

- (void)tappedImageView:(UITapGestureRecognizer *)tap
{
	for (UIView *view in self.view.subviews) {
		[view removeFromSuperview];
	}
	
	NSArray *characterViews = @[
								[[UIImageView alloc] initWithImage:self.characterImages[0]],
								[[UIImageView alloc] initWithImage:self.characterImages[1]],
								[[UIImageView alloc] initWithImage:self.characterImages[2]],
								[[UIImageView alloc] initWithImage:self.characterImages[3]]
								];
	
	for (int i = 0; i < 4; i++) {
		[self.view addSubview:characterViews[i]];
		[(UIView *)characterViews[i] setFrame:CGRectMake(0, 300 * i, 300, 300)];
		[[(UIView *)characterViews[i] layer] setBorderWidth:2];
		[[(UIView *)characterViews[i] layer] setBorderColor:[UIColor blackColor].CGColor];
		
		[(UIView *)characterViews[i] setUserInteractionEnabled:YES];
		UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tappedImageView:)];
		[(UIView *)characterViews[i] addGestureRecognizer:tap];
	}
	
	UIImage *image = [(UIImageView *)tap.view image];
	
	for (int i = 0; i< 4; i++) {
		if (image == self.characterImages[i]) {
			
			UILabel *backLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, tap.view.frame.origin.y, self.view.frame.size.width, 50)];
			backLabel.textColor = [UIColor purpleColor];
			backLabel.text = @"Back";
			backLabel.backgroundColor = [UIColor colorWithRed:242 green:242 blue:242 alpha:0.9];
			[self.view addSubview:backLabel];
			
			UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(backButtonTapped)];
			backLabel.userInteractionEnabled = YES;
			[backLabel addGestureRecognizer:tap];
			
			UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, tap.view.frame.origin.y + 50, self.view.frame.size.width, 50)];
			nameLabel.text = self.characterNames[i];
			nameLabel.textColor = [UIColor blackColor];
			nameLabel.backgroundColor = [UIColor colorWithRed:242 green:242 blue:242 alpha:0.9];
			[self.view addSubview:nameLabel];
			
			UILabel *bioLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, tap.view.frame.origin.y + 100, self.view.frame.size.width, 200)];
			bioLabel.text = self.characterBios[i];
			bioLabel.textColor = [UIColor blackColor];
			bioLabel.backgroundColor = [UIColor colorWithRed:242 green:242 blue:242 alpha:0.9];
			bioLabel.numberOfLines = 0;
			[self.view addSubview:bioLabel];

		}
	}
}

- (void)backButtonTapped
{
	for (UIView *view in self.view.subviews) {
		[view removeFromSuperview];
	}
	
	NSArray *characterViews = @[
								[[UIImageView alloc] initWithImage:self.characterImages[0]],
								[[UIImageView alloc] initWithImage:self.characterImages[1]],
								[[UIImageView alloc] initWithImage:self.characterImages[2]],
								[[UIImageView alloc] initWithImage:self.characterImages[3]]
								];
	
	for (int i = 0; i < 4; i++) {
		[self.view addSubview:characterViews[i]];
		[(UIView *)characterViews[i] setFrame:CGRectMake(0, 300 * i, 300, 300)];
		[[(UIView *)characterViews[i] layer] setBorderWidth:2];
		[[(UIView *)characterViews[i] layer] setBorderColor:[UIColor blackColor].CGColor];
		
		[(UIView *)characterViews[i] setUserInteractionEnabled:YES];
		UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tappedImageView:)];
		[(UIView *)characterViews[i] addGestureRecognizer:tap];
	}
}

@end
