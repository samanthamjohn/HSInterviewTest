//
//  HSCharacter.h
//  HSInterview
//
//  Created by Samantha John on 12/29/14.
//  Copyright (c) 2014 Samantha John. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HSCharacter : NSObject

+ (NSArray *)buildCharacterList;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *bio;
@property (nonatomic, strong) UIImage *image;
@end
