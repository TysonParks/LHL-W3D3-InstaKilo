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
@property (strong, nonatomic) NSMutableSet *subjectTags;
@property (strong, nonatomic) NSString *location;

@end
