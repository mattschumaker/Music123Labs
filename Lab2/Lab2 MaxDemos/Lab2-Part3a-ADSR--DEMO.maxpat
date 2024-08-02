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
		"rect" : [ 185.0, 79.0, 1394.0, 931.0 ],
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
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 251.0, 555.0, 27.0, 20.0 ],
					"text" : "7)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.666656494140625, 554.0, 27.0, 20.0 ],
					"text" : "7)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.666656494140625, 341.0, 27.0, 20.0 ],
					"text" : "6)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 181.666656494140625, 464.0, 27.0, 20.0 ],
					"text" : "5)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 171.0, 342.0, 27.0, 20.0 ],
					"text" : "3)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 171.0, 296.0, 27.0, 20.0 ],
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
					"patching_rect" : [ 44.166656494140625, 956.0, 275.0, 22.0 ],
					"text" : "FINAL ENCAPSULATED ADSR MODULE"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 318.333343505859375, 746.0, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"automatic" : 1,
					"id" : "obj-54",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 746.0, 239.0, 135.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 47.0, 245.0, 100.0, 22.0 ],
					"text" : "unpack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 99.0, 197.0, 50.0, 22.0 ],
					"text" : "90 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 47.0, 170.0, 50.0, 22.0 ],
					"text" : "90 110"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 134.0, 96.0, 20.0 ],
					"text" : "Noteon/noteoff"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 608.0, 396.0, 35.0, 20.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 652.0, 185.0, 27.0, 20.0 ],
					"text" : "R"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 505.666656494140625, 185.0, 27.0, 20.0 ],
					"text" : "S"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 359.333343505859375, 186.0, 27.0, 20.0 ],
					"text" : "D"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 213.0, 185.0, 27.0, 20.0 ],
					"text" : "A"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 396.0, 50.0, 20.0 ],
					"text" : "FLOAT!"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 315.0, 397.0, 35.0, 20.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 167.0, 397.0, 35.0, 20.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 167.0, 219.0, 27.0, 20.0 ],
					"text" : "1)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-2",
					"linecount" : 58,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 805.0, 113.599998474121094, 531.0, 1173.0 ],
					"text" : "TAKE A SCREENSHOT OF BOTH YOUR ADSR MODULE CONTENTS AND YOUR LFO MODULE BEFORE CLOSING THIS PATCH!!!!\n\nMost synths are created with modules that  function in certain specified ways. In this section, we will use encapsulation  as  a means to create modules that we will reuse  to create a  more  sophisticated subtractive synthesizer.\n\nFirst, let's create an ADSR module.  \n\n1) Create four dials for the Attack, Decay, Sustain ad Release portions of the envelope.\n\n2) Use the expression object to scale the midi input (1-127) to go between 0. and 1 (by dividing by 127). Then it applies an exponential curve using the pow($1, 2) part of the expression. The $f1 is the base number and '2' is the exponent, raising the input value of 0. - 1. to the power of 2. This applies the exponential curve while keeping the range between 0. - 1.\n\nWe prefer to use an exponential curve here to better mimic our actual perception of amplitude and frequency. (We don't perceive pitch or amplitude on a linear scale but on a logarithmic one.)\n\n3) We then scale the output of these dials to values that make sense for the A, D, and R portions of the envelope.  The scale object takes four arguments: input minimum, input maximum, output minimum and output maximum.  The input here is between 0. - 1. and the output we can set to be between 0 and 500 milliseconds.\n\n4) We should use different scaling values for the Sustain portion of the envelope, since this is a scalar value for amplitude, not a value in milliseconds.  We can scale fom 0. - 1. , for instance, or just leave the scaling out. here.\n\n5) As before, these values are combined into a list using the pak object.\n\n6) Above, the sel 0 object listens for a 0 value, meaning a noteoff and sends a bang from its first outlet that we can use to trigger the release part of the ADSR envelope. When the valocity is anything besides 0 it will send a bang out of the right outlet of the sel object, and we can use this bang to trigger the A, D, and S parts of the ADSR envelope.\n\n7) We use the same mechanism of substitution before to trigger the line~ objects to run through the ramps that describe the \n\n8) TAKE A SCREENSHOT OF YOUR ADSR AT THIS POINT!!!!\n\n9) Fiinally, encapsulate the module by highlighting the objects below the dials and above the scope~. Select the appropriate objects and then do /edit/encapsulate.\n\n10 TAKE A SECOND SCREENSHOT OF YOUR INSTRUMENT LIKE THIS, TOO."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-33",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 44.599998474121094, 429.0, 60.0 ],
					"text" : "LAB 2, PART 3a: Synth building blocks--ADSR module"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
 ],
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
