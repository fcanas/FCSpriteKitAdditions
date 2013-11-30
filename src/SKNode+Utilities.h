//
//  SKNode+Utilities.h
//  FireFly Class
//
//  Created by Fabian Canas on 11/30/13.
//  Copyright (c) 2013 Fabian Canas. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SKNode (FCAdditions)

/**
 The node's position in the scene's coordinates. (0.0, 0.0) if the node is not in a scene.
 */
@property (nonatomic, readonly) CGPoint fc_positionInScene;

@end
