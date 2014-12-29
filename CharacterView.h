//
//  CharacterView.h
//  HSInterview
//
//  Created by Joshua Kaden on 12/29/14.
//  Copyright (c) 2014 Samantha John. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Character;

@interface CharacterView : UIView

- (instancetype)initWithFrame:(CGRect)frame character:(Character *)character;

@end
