<?php

function _pi()
{
	$sum = 0;

	for ($i = 0; $i < 1e8; $i++) {
		$sum += 4 / ($i * 2 + 1) * ($i % 2 ? -1 : 1);
	}

	return $sum;
}

echo sprintf("%.15f", _pi());

