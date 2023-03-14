// Draw Health
var _playerHealth = global.playerHealth;
var _playerHealthMax = global.playerHealthMax;
var _playerHealthFrac = frac(_playerHealth);

_playerHealth -= _playerHealthFrac;

for (var i = 1; i <= _playerHealthMax; i ++)
	{
		var _imageIndex = (i > _playerHealth);
		if (i == _playerHealth + 1)
			{
				_imageIndex += (_playerHealthFrac > 0);
				_imageIndex += (_playerHealthFrac > 0.5);
			}
		draw_sprite(SprHeart, _imageIndex, 24 + ((i-1) * 36), 24);
	}

//Draw Ofuda
draw_sprite(SprOfudaHUD, 0, 24, 64);
draw_text(48,64,global.stockR);

//Draw Magatama
//draw_sprite(SprMagatama, 0, 24, 104);
//draw_text(48,104,global.keysHeld);

draw_sprite(SprMagatama, 0, 96, 64);
draw_text(120,64,global.keysHeld);

//Draw Enemies Left
//draw_sprite(SprEnemyHUD, 0, 24, 144)
//draw_text(48,144,global.enemiesLeft);

draw_sprite(SprEnemyHUD, 0, 168, 64);
draw_text(192,64,global.enemiesLeft);