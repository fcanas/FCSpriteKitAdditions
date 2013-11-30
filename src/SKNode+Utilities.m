//
//  SKNode+Utilities.m
//  FireFly Class
//
//  Created by Fabian Canas on 11/30/13.
//  Copyright (c) 2013 Fabian Canas. All rights reserved.
//

#import "SKNode+Utilities.h"

@implementation SKNode (FCAdditions)

- (CGPoint)fc_positionInScene
{
    if (self.scene == nil) return CGPointZero;
    return positionInScene_r(self, CGPointZero);
}

__attribute__((pure)) CGPoint positionInScene_r(SKNode *node, CGPoint currentPosition)
{
    CGPoint localPosition = node.position;
    CGPoint newPoint = { .x=currentPosition.x + localPosition.x, .y=currentPosition.y + localPosition.y };
    
    if ([node.parent isKindOfClass:[SKScene class]]) {
        return (CGPoint) newPoint;
    }
    
    return positionInScene_r(node.parent, newPoint);
}

@end
