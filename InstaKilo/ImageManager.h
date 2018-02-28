//
//  ImageManager.h
//  InstaKilo
//
//  Created by Tyson Parks on 2/28/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Image.h"

@interface ImageManager : NSObject

@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSSet *subjectTags;
@property (strong, nonatomic) NSString *location;

@property (strong, nonatomic) NSMutableArray *indexArray;
@property (strong, nonatomic) NSArray <UIImage *> *outputImageArray;

@end
