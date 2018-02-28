//
//  Image.m
//  InstaKilo
//
//  Created by Tyson Parks on 2/28/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "Image.h"

@implementation Image

-(instancetype)initWithImage:(UIImage *)image Tags:(NSSet *) subjectTags andLocation:(NSString *)location {
    self = [super init];
    if (self) {
        _image = image;
        _subjectTags = subjectTags;
        _location = location;
    }
    return self;
    
    
}




@end
