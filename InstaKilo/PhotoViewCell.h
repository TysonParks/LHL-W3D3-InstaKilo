//
//  PhotoViewCell.h
//  InstaKilo
//
//  Created by Tyson Parks on 2/28/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *photoCellImageView;

//@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSMutableSet *subjectTags;
@property (strong, nonatomic) NSString *location;

@end
