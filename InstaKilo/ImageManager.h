//
//  ImageManager.h
//  InstaKilo
//
//  Created by Tyson Parks on 2/28/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Image.h"


typedef enum : NSUInteger {
    location,
    subject,
} groupType;

@interface ImageManager : NSObject

// MARK: Public Properties
@property (copy, nonatomic, readonly) NSMutableArray <UIImage *> *outputImagesArray;
@property (copy, nonatomic, readonly) NSMutableArray <NSArray *> *sectionsImagesArray;
@property (copy, nonatomic, readonly) NSMutableArray <NSString *> *sectionsNamesArray;

// MARK: Public Methods
-(void)getSavedImages;
-(void)getSavedImagesGroupedBy: (groupType) groupType;


@end
