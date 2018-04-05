//
//  UIImage+FAImage.h
//
//  Created by Fadi on 31/5/16.
//  Copyright © 2016 Fadi Abuzant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (FAImage)

- (UIImage *) imageWithScaledToSize:(CGSize)newSize;
- (UIImage *) imageWithScaledToWidth: (float) i_width;
- (UIImage *) imageWithLimitSize_MB:(float)size;
- (UIImage *) imageWithScaledToWidth:(float)i_width andLimitSize_MB:(float)size;
- (UIImage *) imageWithLimitWidth:(float)i_width andLimitSize_MB:(float)size;
@end

