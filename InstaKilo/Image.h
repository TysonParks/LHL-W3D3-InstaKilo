//
//  Image.h
//  InstaKilo
//
//  Created by Tyson Parks on 2/28/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Image : NSObject

@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSSet *subjectTags;
@property (strong, nonatomic) NSString *location;


-(instancetype)initWithImage: (UIImage *)image Tags: (NSSet *) subjectTags andLocation: (NSString *)location;

@end
