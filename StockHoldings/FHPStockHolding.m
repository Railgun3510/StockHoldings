//
//  FHPStockHolding.m
//  StockHoldings
//
//  Created by Cheuk Him Ho on 29/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import "FHPStockHolding.h"

@implementation FHPStockHolding

- (float)costInDollars
{
	return _numberOfShares * _purchasePrice;
}

- (float)valueInDollars
{
	return _numberOfShares * _currentPrice;
}

@end
