//
//  HSCharacterView.m
//  HSInterview
//
//  Created by Samantha John on 12/29/14.
//  Copyright (c) 2014 Samantha John. All rights reserved.
//

#import "HSCharacterView.h"
@interface HSCharacterView()

@property (nonatomic, strong) UIButton *backButton;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *bioLabel;

@end

@implementation HSCharacterView

+ (instancetype)newWithName:(NSString *)name bio:(NSString *)bio
{
	HSCharacterView *view = [self new];
	view.nameLabel.text = name;
	view.bioLabel.text = bio;
	return view;
}

- (instancetype)initWithFrame:(CGRect)frame
{
	if (self = [super initWithFrame:frame]) {
		
		self.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.9];
		
		self.backButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
		[self.backButton setTitle:@"Back" forState:UIControlStateNormal];
		[self.backButton setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
		[self.backButton addTarget:self action:@selector(remove) forControlEvents:UIControlEventTouchUpInside];
		[self addSubview:self.backButton];
		
		self.nameLabel = [UILabel new];
		self.nameLabel.textColor = [UIColor blackColor];
		[self addSubview:self.nameLabel];

		self.bioLabel = [UILabel new];
		self.bioLabel.textColor = [UIColor blackColor];
		self.bioLabel.numberOfLines = 0;
		[self addSubview:self.bioLabel];
	}
	return self;
}

- (void)remove
{
	[self removeFromSuperview];
}

- (void)layoutSubviews
{
	[super layoutSubviews];
	
	CGFloat padding = 20;
	
	[self.backButton sizeToFit];
	CGRect backButtonFrame = self.backButton.frame;
	backButtonFrame.origin.y = padding;
	backButtonFrame.origin.x = padding;
	self.backButton.frame = backButtonFrame;
	
	[self.nameLabel sizeToFit];
	CGRect nameLabelFrame = self.nameLabel.frame;
	nameLabelFrame.origin.y = 50;
	nameLabelFrame.origin.x = padding;
	self.nameLabel.frame = nameLabelFrame;

	CGRect bioLabelFrame = self.bioLabel.frame;
	CGSize frameSize = self.frame.size;
	frameSize.width -= padding * 2;
	bioLabelFrame.size = [self.bioLabel sizeThatFits:frameSize];
	bioLabelFrame.origin.y = 100;
	bioLabelFrame.origin.x = padding;
	self.bioLabel.frame = bioLabelFrame;
}


@end
