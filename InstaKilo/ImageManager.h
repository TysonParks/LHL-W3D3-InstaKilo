//
//  ImageManager.h
//  InstaKilo
//
//  Created by Tyson Parks on 2/28/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Image.h"


typedef enum : NSUInteger {
    location,
    subject,
} groupType;

@interface ImageManager : NSObject

@property (copy, nonatomic, readonly) NSArray <UIImage *> *outputImageArray;
@property (copy, nonatomic) NSArray <NSString *> *sectionsArray;


-(void)getSavedImages;
-(void)getSavedImages: (NSArray *) imageArray GroupedBy: (groupType) groupType;


@end
