// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
#include "walmartDefines.sqf"

#define walmartButton_textSize (0.04 * TEXT_SCALE)

class walmartshop
{
	idd = walmart_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[[0], populatewalmart] execFSM 'call.fsm'";

	class ControlsBackground
	{
		#define walmartMainBG_W (0.7333 * SZ_SCALE)
		#define walmartMainBG_H (0.65 * SZ_SCALE)
		#define walmartMainBG_X CENTER(1, walmartMainBG_W)
		#define walmartMainBG_Y CENTER(1, walmartMainBG_H)

		class MainBackground: IGUIBack
		{
			idc = -1;
			colorBackground[] = {0, 0, 0, 0.6};
			moving = true;

			x = walmartMainBG_X;
			y = walmartMainBG_Y;
			w = walmartMainBG_W;
			h = walmartMainBG_H;
		};

		class TopBar: IGUIBack
		{
			idc = -1;
			colorBackground[] = {A3W_UICOLOR_R, A3W_UICOLOR_G, A3W_UICOLOR_B, 0.8};

			#define walmartTopBar_H (0.05 * SZ_SCALE)

			x = walmartMainBG_X;
			y = walmartMainBG_Y;
			w = walmartMainBG_W;
			h = walmartTopBar_H;
		};

		class ItemSelectedPrice: w_RscStructuredTextLeft
		{
			idc = gunshop_gun_TEXT;
			size = 0.04 * TEXT_SCALE;

			x = walmartMainBG_X + (0.15 * SZ_SCALE);
			y = walmartMainBG_Y + (0.514 * SZ_SCALE);
			w = 0.119 * SZ_SCALE;
			h = 0.0689 * SZ_SCALE;
		};

		class AmmoSelectedPrice: w_RscStructuredTextLeft
		{
			idc = gunshop_ammo_TEXT;
			size = 0.04 * TEXT_SCALE;

			x = walmartMainBG_X + (0.439 * SZ_SCALE);
			y = walmartMainBG_Y + (0.514 * SZ_SCALE);
			w = 0.119 * SZ_SCALE;
			h = 0.0689 * SZ_SCALE;
		};

		class DialogTitleText: w_RscTextCenter
		{
			idc = -1;
			text = "Gun Store";
			sizeEx = 0.06 * TEXT_SCALE;

			x = walmartMainBG_X;
			y = walmartMainBG_Y;
			w = walmartMainBG_W;
			h = walmartTopBar_H;
		};
	};
	
	/*class Controls
	{
		
	};*/
};
