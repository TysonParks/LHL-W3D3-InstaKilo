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

@property (copy, nonatomic, readonly) NSMutableArray <UIImage *> *outputImageArray;
@property (copy, nonatomic, readonly) NSMutableArray <NSString *> *sectionsArray;


-(void)getSavedImages;
-(void)getSavedImagesGroupedBy: (groupType) groupType;


@end
