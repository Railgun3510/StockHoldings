//
//  FHPForeignStockHolding.m
//  StockHoldings
//
//  Created by Cheuk Him Ho on 29/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import "FHPForeignStockHolding.h"

@implementation FHPForeignStockHolding

// Overriding Superclass FHPStockHolding Methods
- (float)costInDollars
{
	return [super costInDollars] * _conversionRate;
}

- (float)valueInDollars
{
	return [super valueInDollars] * _conversionRate;
}

@end
