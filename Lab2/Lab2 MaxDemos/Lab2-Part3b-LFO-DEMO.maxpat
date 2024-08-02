{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 237.0, 79.0, 1394.0, 931.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 262.0, 384.0, 35.0, 20.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 266.0, 287.0, 27.0, 20.0 ],
					"text" : "5)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 501.0, 27.0, 20.0 ],
					"text" : "7)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 440.0, 27.0, 20.0 ],
					"text" : "4)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 332.0, 27.0, 20.0 ],
					"text" : "3)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 287.0, 27.0, 20.0 ],
					"text" : "2)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-87",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 92.166656494140625, 769.0, 275.0, 22.0 ],
					"text" : "FINAL ENCAPSULATED ADSR MODULE"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 104.0, 571.0, 239.0, 135.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 307.333343505859375, 177.0, 51.0, 20.0 ],
					"text" : "Depth"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 104.0, 177.0, 48.0, 20.0 ],
					"text" : "Rate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 61.0, 388.0, 35.0, 20.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 224.0, 27.0, 20.0 ],
					"text" : "1)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-2",
					"linecount" : 45,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 805.0, 113.599998474121094, 584.0, 911.0 ],
					"text" : "TAKE A SCREENSHOT OF BOTH YOUR ADSR MODULE CONTENTS AND YOUR LFO MODULE BEFORE CLOSING THIS PATCH!!!!\n\nMost synths are created with modules that  function in certain specified ways. In this section, we will use encapsulation  as  a means to create modules that we will reuse  to create a  more  sophisticated subtractive synthesizer.\n\nSecond, let's now create a low frequency oscillator or LFO module.  Build your LFO using the picture in your assignment.\n\n1) Create two dials for the Rate and Depth of the LFO.\n\n2) Use the expression object to scale the midi input (1-127) to go between 0. and 1 (by dividing by 127). Then apply an exponential curve using the pow($1, 2) part of the expression as before.\n\n3) We then scale the output of these dials to values that make sense for the Rate of the LFO.  The input here is between 0. - 1. and the output we can set to be between 0.1 and 10 times per second--a low frequency range.\n\n4) We'll then connect that to a simple cycle~ oscillator.\n\n5) Next we'll scale the output of the Depth dial. Our expression will scale the midi input (1-127) to go between 0. and 1 (by dividing by 127). We then get the square root of the value using pow($1, 0.5). The square root of the signal here will apply a more natural curve that is better aligned with how we perceive amplitude. (For frequency, we saw that it is more natural to apply a curve based on the exponent of 2).\n\n6) We then smooth any changes in depth with the typical line~ technique we saw before.\n\n7) Then we use *~ to scale the amplitude (depth) of our LFO and send it on to the scope~ object.\n\nTAKE A SCREENSHOT OF YOUR ADSR AT THIS POINT!!!!\n\n9) Fiinally, encapsulate the module by highlighting the objects below the dials and above the scope~. Select the appropriate objects and then do /edit/encapsulate.\n\n10 TAKE A SECOND SCREENSHOT OF YOUR INSTRUMENT LIKE THIS, TOO!!!!"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-33",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 44.599998474121094, 472.0, 87.0 ],
					"text" : "LAB 2, PART 3b: Synth building blocks--LFO (low frequency oscillator module"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [  ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "newobjBlue-1",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-1",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold-1",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
