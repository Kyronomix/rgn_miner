# rgn_miner by Kyro - Based on poke_miner_job
 Mining job with many customization options in config.lua that goes in depth by providing a
 steel item to the player and paying them based on a random amount of steel they get from each harvest point.

## 1. Requirements
- [ProgressBar](https://github.com/PokeSerGG/RedM-ProgressBar)
- [VORPCore] (https://github.com/VORPCORE/VORP-Core/tree/master/build)
- [VORPInventory] (https://github.com/VORPCORE/VORP-Inventory/releases/tag/JohnMarston)

- Change the name of the job in Config.lua and your user in the database
- Add ```ensure rgn_miner``` in your server.cfg with the Requirements above it.
- Add the steel item into your items database -- INSERT INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('steel', 'steel', '12', '1', 'item_standard', '0')
- Add the steel.png to the vorp_inventory\html\img\items folder.
- Enjoy!
