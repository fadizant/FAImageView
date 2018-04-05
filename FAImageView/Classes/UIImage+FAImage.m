//
//  UIImage+FAImage.m
//
//  Created by Fadi on 31/5/16.
//  Copyright © 2016 Fadi Abuzant. All rights reserved.
//

#import "UIImage+FAImage.h"

@implementation UIImage (FAImage)

- (UIImage *) imageWithScaledToSize:(CGSize)newSize {
    //UIGraphicsBeginImageContext(newSize);
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 0.0);
    [self drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

- (UIImage *) imageWithScaledToWidth: (float) i_width {//method to scale image accordcing to width
    
    float oldWidth = self.size.width;
    float scaleFactor = i_width / oldWidth;
    
    float newHeight = self.size.height * scaleFactor;
    float newWidth = oldWidth * scaleFactor;
    
    UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
    [self drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

- (UIImage *) imageWithLimitSize_MB:(float)size {
    
    float quality = 1;
    NSData *imageData = UIImageJPEGRepresentation(self, quality);
    while ([imageData length] > (size  * 1024 * 1024) || quality <= 0.1) {
        quality = (quality*0.9);
        imageData = UIImageJPEGRepresentation(self, quality);
    }
    
    return [UIImage imageWithData:imageData];
}


- (UIImage *) imageWithScaledToWidth:(float)i_width andLimitSize_MB:(float)size {
    
    UIImage *image = [self imageWithScaledToWidth:i_width];
    return [image imageWithLimitSize_MB:size];
}

- (UIImage *) imageWithLimitWidth:(float)i_width andLimitSize_MB:(float)size {
    
    UIImage *image = self.size.width > i_width ? [self imageWithScaledToWidth:i_width] : self;
    return [image imageWithLimitSize_MB:size];
}
@end

