//
//  UIImageView+FAImageFromURL.h
//
//  Created by Fadi on 16/11/15.
//  Copyright © 2015 Fadi Abuzant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (FAImageFromURL)
+(NSCache*) getCache;
+(void) setCache:(NSCache*)Cache;
-(void) setImageWithURL:(NSString*)URL ThumbImage:(UIImage*)Thumb;
@end
