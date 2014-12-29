//
//  Character.h
//  HSInterview
//
//  Created by Joshua Kaden on 12/29/14.
//  Copyright (c) 2014 Samantha John. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Character : NSObject

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *bio;
@property (nonatomic, readonly) NSString *imageName;
@property (nonatomic, readonly) UIImage *image;

+ (instancetype)newWithName:(NSString *)name bio:(NSString *)bio imageName:(NSString *)imageName;

- (instancetype)initWithName:(NSString *)name bio:(NSString *)bio imageName:(NSString *)imageName;

@end
