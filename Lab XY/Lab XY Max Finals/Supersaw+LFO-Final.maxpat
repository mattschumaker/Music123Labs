{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 28.0, 96.0, 1156.0, 785.0 ],
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
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-54",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 372.75, 610.829999463558124, 34.0, 27.0 ],
					"text" : "8)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 372.75, 560.003333015441967, 34.0, 27.0 ],
					"text" : "7)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 261.933335602283478, 613.329999463558238, 100.0, 22.0 ],
					"text" : "mc.*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 261.933336138725281, 556.003333015441854, 100.0, 35.0 ],
					"text" : "mc.rand~ 0.5 @chans 30"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 78.500001966953278, 650.663333253860515, 34.0, 27.0 ],
					"text" : "6)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 78.500001966953278, 582.669999701976735, 34.0, 27.0 ],
					"text" : "5)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 78.500001966953278, 406.0, 34.0, 27.0 ],
					"text" : "4)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 78.500001966953278, 363.0, 34.0, 27.0 ],
					"text" : "3)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 78.500001966953278, 445.133339583873749, 34.0, 27.0 ],
					"text" : "2)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 78.500001966953278, 502.67000017881395, 34.0, 27.0 ],
					"text" : "1)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-8",
					"linecount" : 32,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 420.0, 990.0, 650.0 ],
					"text" : "One way to make a fat sounding subtractive synth is to take many oscillators and slightly detune them around the main pitch. Let's investigate that here.\n\n1) We create a saw oscillator, only this one is different. Using Max's mc objects, we create multiple versions of the oscillator with just one object. (MC here stands for multi-channel, ways to create parallel signals.) So, if we create an object mc.saw~ with the attributes @chans 30, we are effectively creating 30 parallel saw wave oscillators!\n\n2) Mc.saw~ can take a message for frequency, but if we give it a message \"deviate\" with two arguments, it will do more than that. In this case, it will create random values around the frequency (the second value) as the center point with random deviations around to the number of the first value. The result will be 30 frequency values around the main frequency +/- the deviation value.\n\n3) Make the float box for the max deviation value.\n\n4) Create a \"pak\" object to take in the list of both frequency and deviation. Give it arguments of \"0. 0.\" to let it know that it's creating a list of two elements to output, one the deviation, the second being the frequency. Note, you want \"pak\", not \"pack\", because \"pak\" will output a value whether you change the deviation or the frequency.\n\n5) We've used *~ in the past to control the amplitude of our signal over time. Here we'll use it again but, since we have 30 parallel saw waves in play, we need to use the mc.*~ object, which handles the amplitude of all of those singals separately. Plug in mc.saw~ into mc.*~. Then plug the output of our ADSR and LFO amplitude envelope into the right inlet of our mc.*~.\n\n6) Mc.mixdown is an object that will take the parallel signals of mc. objects and combine them into a set number of channels. We use \"mc.mixdown 2\" to mix the 30 saw waves down into two channels of output audio. \n\n7) We use mc.rand~ with the arguments \"0.5 @chans 30\" to generate 30 random numbers between -1 and 1. These values are changed up every 0.5 seconds.\n\n8) We then use the mc*~ to multiply these random values by themselves to ensure that they are positive numbers. And finally, we plug these into the mc.mixdown~ object below. This effectively creates a different pan position for each of our saw waves, giving the sound a sense of space and depth."
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 310.200001269578934, 769.336668713092763, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 384.200001269578934, 813.336668713092763, 29.5, 22.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 343.200001269578934, 813.336668713092763, 29.5, 22.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 312.200001269578934, 813.336668713092763, 19.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 232.200001269578934, 813.336668713092763, 50.0, 22.0 ],
					"text" : "store 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 232.200001269578934, 874.336668713092763, 100.0, 40.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-7", "flonum", "float", 5.0, 5, "obj-27", "mc.live.gain~", "float", -19.423791885375977, 5, "obj-68", "dial", "float", 4.0, 5, "obj-67", "dial", "float", 36.0, 5, "obj-66", "dial", "float", 97.0, 5, "obj-65", "dial", "float", 71.0, 5, "obj-72", "dial", "float", 91.0, 5, "obj-71", "dial", "float", 51.0, 6, "<invalid>", "number~", "list", 0.0, 0.0, 5, "obj-48", "textbutton", "mode", 1, 5, "obj-48", "textbutton", "int", 0, 5, "obj-47", "textbutton", "mode", 1, 5, "obj-47", "textbutton", "int", 0, 5, "obj-11", "textbutton", "mode", 1, 5, "obj-11", "textbutton", "int", 0, 5, "obj-46", "textbutton", "mode", 1, 5, "obj-46", "textbutton", "int", 0, 5, "obj-45", "textbutton", "mode", 1, 5, "obj-45", "textbutton", "int", 0, 5, "obj-44", "textbutton", "mode", 1, 5, "obj-44", "textbutton", "int", 0, 5, "obj-43", "textbutton", "mode", 1, 5, "obj-43", "textbutton", "int", 0, 5, "obj-21", "textbutton", "mode", 1, 5, "obj-21", "textbutton", "int", 0, 5, "obj-20", "textbutton", "mode", 1, 5, "obj-20", "textbutton", "int", 0, 5, "obj-23", "textbutton", "mode", 1, 5, "obj-23", "textbutton", "int", 0, 5, "obj-42", "textbutton", "mode", 1, 5, "obj-42", "textbutton", "int", 0, 5, "obj-41", "textbutton", "mode", 1, 5, "obj-41", "textbutton", "int", 0, 5, "obj-6", "number", "int", 0, 5, "obj-49", "incdec", "float", 0.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-7", "flonum", "float", 5.0, 5, "obj-27", "mc.live.gain~", "float", -19.423791885375977, 5, "obj-68", "dial", "float", 71.0, 5, "obj-67", "dial", "float", 36.0, 5, "obj-66", "dial", "float", 97.0, 5, "obj-65", "dial", "float", 71.0, 5, "obj-72", "dial", "float", 18.0, 5, "obj-71", "dial", "float", 80.0, 6, "<invalid>", "number~", "list", 0.0, 0.0, 5, "obj-48", "textbutton", "mode", 1, 5, "obj-48", "textbutton", "int", 0, 5, "obj-47", "textbutton", "mode", 1, 5, "obj-47", "textbutton", "int", 0, 5, "obj-11", "textbutton", "mode", 1, 5, "obj-11", "textbutton", "int", 0, 5, "obj-46", "textbutton", "mode", 1, 5, "obj-46", "textbutton", "int", 0, 5, "obj-45", "textbutton", "mode", 1, 5, "obj-45", "textbutton", "int", 0, 5, "obj-44", "textbutton", "mode", 1, 5, "obj-44", "textbutton", "int", 0, 5, "obj-43", "textbutton", "mode", 1, 5, "obj-43", "textbutton", "int", 0, 5, "obj-21", "textbutton", "mode", 1, 5, "obj-21", "textbutton", "int", 0, 5, "obj-20", "textbutton", "mode", 1, 5, "obj-20", "textbutton", "int", 0, 5, "obj-23", "textbutton", "mode", 1, 5, "obj-23", "textbutton", "int", 0, 5, "obj-42", "textbutton", "mode", 1, 5, "obj-42", "textbutton", "int", 0, 5, "obj-41", "textbutton", "mode", 1, 5, "obj-41", "textbutton", "int", 0, 5, "obj-6", "number", "int", 0, 5, "obj-49", "incdec", "float", 0.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-7", "flonum", "float", 20.0, 5, "obj-27", "mc.live.gain~", "float", -19.423791885375977, 5, "obj-68", "dial", "float", 26.0, 5, "obj-67", "dial", "float", 36.0, 5, "obj-66", "dial", "float", 97.0, 5, "obj-65", "dial", "float", 23.0, 5, "obj-72", "dial", "float", 18.0, 5, "obj-71", "dial", "float", 26.0, 6, "<invalid>", "number~", "list", 0.0, 0.0, 5, "obj-48", "textbutton", "mode", 1, 5, "obj-48", "textbutton", "int", 0, 5, "obj-47", "textbutton", "mode", 1, 5, "obj-47", "textbutton", "int", 0, 5, "obj-11", "textbutton", "mode", 1, 5, "obj-11", "textbutton", "int", 0, 5, "obj-46", "textbutton", "mode", 1, 5, "obj-46", "textbutton", "int", 0, 5, "obj-45", "textbutton", "mode", 1, 5, "obj-45", "textbutton", "int", 0, 5, "obj-44", "textbutton", "mode", 1, 5, "obj-44", "textbutton", "int", 0, 5, "obj-43", "textbutton", "mode", 1, 5, "obj-43", "textbutton", "int", 0, 5, "obj-21", "textbutton", "mode", 1, 5, "obj-21", "textbutton", "int", 0, 5, "obj-20", "textbutton", "mode", 1, 5, "obj-20", "textbutton", "int", 0, 5, "obj-23", "textbutton", "mode", 1, 5, "obj-23", "textbutton", "int", 0, 5, "obj-42", "textbutton", "mode", 1, 5, "obj-42", "textbutton", "int", 0, 5, "obj-41", "textbutton", "mode", 1, 5, "obj-41", "textbutton", "int", 0, 5, "obj-6", "number", "int", 0, 5, "obj-49", "incdec", "float", 0.0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 530.0, 182.400000035762787, 123.0, 20.0 ],
					"text" : "THE ADSR"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 831.5, 181.0, 123.0, 20.0 ],
					"text" : "THE LFO!"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 40.0, 556.0, 640.0, 480.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 370.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 239.5, 100.0, 22.0 ],
									"text" : "+"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 202.0, 239.5, 100.0, 22.0 ],
									"text" : "* 12"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 139.5, 50.0, 22.0 ],
									"text" : "set 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 131.0, 100.0, 100.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 131.0, 370.5, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 1 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 201.116607666015625, 272.799998784065224, 96.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p octave_adjust"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "incdec",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 384.75, 272.799998784065224, 22.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-6",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 317.25, 272.799998784065224, 55.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 201.116607666015625, 212.600017094612099, 273.883392333984375, 22.0 ],
					"text" : "unpack i i"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgoncolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-41",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 472.233213424682617, 135.20001220703125, 24.766664505004883, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 354.199951171875, 205.933349609375, 24.766664505004883, 33.0 ],
					"text" : "j",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"texton" : "j",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgoncolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-42",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 441.049985885620117, 135.20001220703125, 24.766664505004883, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 323.01666259765625, 205.933349609375, 24.766664505004883, 33.0 ],
					"text" : "h",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"texton" : "h",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgoncolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-23",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 409.866636276245117, 135.20001220703125, 24.766664505004883, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 291.833343505859375, 205.933349609375, 24.766664505004883, 33.0 ],
					"text" : "g",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"texton" : "g",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgoncolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-20",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 347.499998092651367, 135.20001220703125, 24.766664505004883, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 229.466720581054688, 205.933349609375, 24.766664505004883, 33.0 ],
					"text" : "d",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"texton" : "d",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgoncolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-21",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 316.316648483276367, 135.20001220703125, 24.766664505004883, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 198.283416748046875, 205.933349609375, 24.766664505004883, 33.0 ],
					"text" : "s",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"texton" : "s",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgoncolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-43",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 487.233335494995117, 154.0, 24.766664505004883, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 369.200103759765625, 224.73333740234375, 24.766664505004883, 43.0 ],
					"text" : "m",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "m",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgoncolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-44",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 456.400083541870117, 154.0, 24.766664505004883, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 338.36676025390625, 224.73333740234375, 24.766664505004883, 43.0 ],
					"text" : "n",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "n",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgoncolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-45",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 425.566709518432617, 154.0, 24.766664505004883, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 307.533416748046875, 224.73333740234375, 24.766664505004883, 43.0 ],
					"text" : "b",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "b",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgoncolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-46",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 394.733335494995117, 154.0, 24.766664505004883, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 276.7000732421875, 224.73333740234375, 24.766664505004883, 43.0 ],
					"text" : "v",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "v",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgoncolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-11",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 363.899961471557617, 154.0, 24.766664505004883, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 245.866729736328125, 224.73333740234375, 24.766664505004883, 43.0 ],
					"text" : "c",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "c",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgoncolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-47",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 333.066648483276367, 154.0, 24.766664505004883, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 215.03338623046875, 224.73333740234375, 24.766664505004883, 43.0 ],
					"text" : "x",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "x",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgoncolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-48",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 302.233274459838867, 154.0, 24.766664505004883, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 184.200042724609375, 224.73333740234375, 24.766664505004883, 43.0 ],
					"text" : "z",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "z",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 0.094118, 0.113725, 0.137255, 0.54 ],
					"border" : 1,
					"bordercolor" : [ 0.415686, 0.454902, 0.52549, 1.0 ],
					"id" : "obj-102",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 301.233274459838867, 135.20001220703125, 216.00006103515625, 61.79998779296875 ],
					"presentation" : 1,
					"presentation_rect" : [ 184.500106811523438, 205.933349609375, 241.033309936523438, 62.79998779296875 ],
					"proportion" : 0.39,
					"rounded" : 16
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.538108825683594, 182.400000035762787, 50.0, 22.0 ],
					"text" : "48 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 458.0, 100.0, 1163.0, 801.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 752.150146484375, 340.666656494140625, 50.0, 22.0 ],
									"text" : "48 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 12,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 532.0032958984375, 256.666656494140625, 300.800018310546875, 22.0 ],
									"text" : "funnel 12 48"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 13,
									"numoutlets" : 13,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 532.0032958984375, 196.066680908203125, 326.418212890625, 22.0 ],
									"text" : "select 122 115 120 100 99 118 103 98 104 110 106 109"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 532.0032958984375, 100.0, 100.0, 22.0 ],
									"text" : "keyup"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "kslider",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 215.33001708984375, 430.666656494140625, 336.0, 53.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 340.666656494140625, 100.0, 22.0 ],
									"text" : "pack i 90"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 50.0, 302.800018310546875, 100.0, 22.0 ],
									"text" : "unpack 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 12,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 50.0, 256.666656494140625, 300.800018310546875, 22.0 ],
									"text" : "funnel 12 48"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgoncolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"fontface" : 1,
									"fontsize" : 16.0,
									"id" : "obj-24",
									"maxclass" : "textbutton",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 749.7666015625, 430.666656494140625, 24.766664505004883, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 219.199951171875, 70.933349609375, 24.766664505004883, 33.0 ],
									"text" : "j",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"texton" : "j",
									"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"usebgoncolor" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgoncolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"fontface" : 1,
									"fontsize" : 16.0,
									"id" : "obj-22",
									"maxclass" : "textbutton",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 718.5833740234375, 430.666656494140625, 24.766664505004883, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 188.016647338867188, 70.933349609375, 24.766664505004883, 33.0 ],
									"text" : "h",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"texton" : "h",
									"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"usebgoncolor" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgoncolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"fontface" : 1,
									"fontsize" : 16.0,
									"id" : "obj-23",
									"maxclass" : "textbutton",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 687.4000244140625, 430.666656494140625, 24.766664505004883, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 156.833343505859375, 70.933349609375, 24.766664505004883, 33.0 ],
									"text" : "g",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"texton" : "g",
									"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"usebgoncolor" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgoncolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"fontface" : 1,
									"fontsize" : 16.0,
									"id" : "obj-20",
									"maxclass" : "textbutton",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 625.03338623046875, 430.666656494140625, 24.766664505004883, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 94.466720581054688, 70.933349609375, 24.766664505004883, 33.0 ],
									"text" : "d",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"texton" : "d",
									"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"usebgoncolor" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgoncolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"fontface" : 1,
									"fontsize" : 16.0,
									"id" : "obj-21",
									"maxclass" : "textbutton",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 593.85003662109375, 430.666656494140625, 24.766664505004883, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 63.283416748046875, 70.933349609375, 24.766664505004883, 33.0 ],
									"text" : "s",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"texton" : "s",
									"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"usebgoncolor" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgoncolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"fontface" : 1,
									"fontsize" : 16.0,
									"id" : "obj-17",
									"maxclass" : "textbutton",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 764.7667236328125, 449.466644287109375, 24.766664505004883, 43.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 234.200103759765625, 89.73333740234375, 24.766664505004883, 43.0 ],
									"text" : "m",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"texton" : "m",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"usebgoncolor" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgoncolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"fontface" : 1,
									"fontsize" : 16.0,
									"id" : "obj-12",
									"maxclass" : "textbutton",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 733.9334716796875, 449.466644287109375, 24.766664505004883, 43.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 203.36676025390625, 89.73333740234375, 24.766664505004883, 43.0 ],
									"text" : "n",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"texton" : "n",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"usebgoncolor" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgoncolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"fontface" : 1,
									"fontsize" : 16.0,
									"id" : "obj-13",
									"maxclass" : "textbutton",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 703.10009765625, 449.466644287109375, 24.766664505004883, 43.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 172.533416748046875, 89.73333740234375, 24.766664505004883, 43.0 ],
									"text" : "b",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"texton" : "b",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"usebgoncolor" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgoncolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"fontface" : 1,
									"fontsize" : 16.0,
									"id" : "obj-14",
									"maxclass" : "textbutton",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 672.2667236328125, 449.466644287109375, 24.766664505004883, 43.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 141.7000732421875, 89.73333740234375, 24.766664505004883, 43.0 ],
									"text" : "v",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"texton" : "v",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"usebgoncolor" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgoncolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"fontface" : 1,
									"fontsize" : 16.0,
									"id" : "obj-11",
									"maxclass" : "textbutton",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 641.433349609375, 449.466644287109375, 24.766664505004883, 43.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 110.866729736328125, 89.73333740234375, 24.766664505004883, 43.0 ],
									"text" : "c",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"texton" : "c",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"usebgoncolor" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgoncolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"fontface" : 1,
									"fontsize" : 16.0,
									"id" : "obj-15",
									"maxclass" : "textbutton",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 610.60003662109375, 449.466644287109375, 24.766664505004883, 43.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 80.03338623046875, 89.73333740234375, 24.766664505004883, 43.0 ],
									"text" : "x",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"texton" : "x",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"usebgoncolor" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgoncolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"fontface" : 1,
									"fontsize" : 16.0,
									"id" : "obj-9",
									"maxclass" : "textbutton",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 579.76666259765625, 449.466644287109375, 24.766664505004883, 43.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 49.200042724609375, 89.73333740234375, 24.766664505004883, 43.0 ],
									"text" : "z",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"texton" : "z",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"usebgoncolor" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 0.0,
									"bgcolor" : [ 0.094118, 0.113725, 0.137255, 0.54 ],
									"border" : 1,
									"bordercolor" : [ 0.415686, 0.454902, 0.52549, 1.0 ],
									"id" : "obj-102",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 578.76666259765625, 430.666656494140625, 216.00006103515625, 61.79998779296875 ],
									"presentation" : 1,
									"presentation_rect" : [ 49.500110626220703, 70.933349609375, 241.033309936523438, 62.79998779296875 ],
									"proportion" : 0.39,
									"rounded" : 16
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 413.26678466796875, 203.800018310546875, 50.0, 22.0 ],
									"text" : "127"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 13,
									"numoutlets" : 13,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 196.066680908203125, 326.418212890625, 22.0 ],
									"text" : "select 122 115 120 100 99 118 103 98 104 110 106 109"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 50.0, 100.0, 100.0, 22.0 ],
									"text" : "key"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-27",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 285.00164794921875, 552.4666748046875, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 11 ],
									"source" : [ "obj-2", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 10 ],
									"source" : [ "obj-2", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 9 ],
									"source" : [ "obj-2", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 8 ],
									"source" : [ "obj-2", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 7 ],
									"source" : [ "obj-2", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 6 ],
									"source" : [ "obj-2", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 5 ],
									"source" : [ "obj-2", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 4 ],
									"source" : [ "obj-2", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 3 ],
									"source" : [ "obj-2", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 2 ],
									"source" : [ "obj-2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 1 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"order" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"order" : 1,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"order" : 1,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"order" : 2,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 1 ],
									"order" : 0,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 11 ],
									"source" : [ "obj-52", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 10 ],
									"source" : [ "obj-52", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 9 ],
									"source" : [ "obj-52", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 8 ],
									"source" : [ "obj-52", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 7 ],
									"source" : [ "obj-52", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 6 ],
									"source" : [ "obj-52", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 5 ],
									"source" : [ "obj-52", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 4 ],
									"source" : [ "obj-52", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 3 ],
									"source" : [ "obj-52", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 2 ],
									"source" : [ "obj-52", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 1 ],
									"source" : [ "obj-52", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 201.116607666015625, 140.70001220703125, 74.421501159667969, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p midikey"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 831.500030517578125, 335.0, 108.0, 22.0 ],
					"text" : "scale~ -1. 1. 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 93.0, 340.0, 100.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 296.333343505859375, 298.0, 100.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 296.333343505859375, 236.0, 50.0, 22.0 ],
									"text" : "$1 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 251.0, 197.0, 35.0, 20.0 ],
									"text" : "float"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-40",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 296.333343505859375, 196.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 296.333343505859375, 100.0, 147.0, 22.0 ],
									"text" : "expr pow($f1/127.\\, 0.5)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 255.0, 100.0, 27.0, 20.0 ],
									"text" : "5)"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-43",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 93.0, 201.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 93.0, 253.0, 100.0, 22.0 ],
									"text" : "cycle~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 93.0, 145.0, 113.0, 22.0 ],
									"text" : "scale 0. 1. 0.1 10."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 93.0, 100.0, 123.0, 22.0 ],
									"text" : "expr pow($f1/127.\\, 2)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 54.0, 314.0, 27.0, 20.0 ],
									"text" : "7)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 54.0, 253.0, 27.0, 20.0 ],
									"text" : "4)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 54.0, 145.0, 27.0, 20.0 ],
									"text" : "3)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 54.0, 100.0, 27.0, 20.0 ],
									"text" : "2)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 201.0, 35.0, 20.0 ],
									"text" : "float"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-59",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 93.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-60",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 296.333343505859375, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-61",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 93.0, 422.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 1 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 831.500030517578125, 304.000009059906006, 91.333343505859375, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p LFO"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 903.8333740234375, 252.73333740234375, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 831.5, 252.73333740234375, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 903.8333740234375, 215.73333740234375, 51.0, 20.0 ],
					"text" : "Depth"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 831.5, 215.73333740234375, 48.0, 20.0 ],
					"text" : "Rate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 456.0, 382.0, 100.0, 22.0 ],
					"text" : "*~ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 424.0, 80.0, 22.0 ],
									"text" : "1 $1 $3 $2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 416.0, 51.0, 22.0 ],
									"text" : "0. $4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 65.0, 481.0, 101.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-77",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 516.6666259765625, 219.0, 51.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 377.0, 145.0, 22.0 ],
									"text" : "20 40 0.583359 16"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 224.0, 287.0, 459.0, 22.0 ],
									"text" : "pak 100 100 0.5 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 377.0, 179.0, 22.0 ],
									"text" : "20 40 0.583359 16"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 146.0, 239.5, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 65.0, 239.5, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 65.0, 164.0, 101.0, 22.0 ],
									"text" : "sel 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 619.0, 219.0, 36.0, 20.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 663.0, 215.0, 51.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-94",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 663.0, 160.0, 101.0, 22.0 ],
									"text" : "scale 0. 1. 0 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 663.0, 115.0, 124.0, 22.0 ],
									"text" : "expr pow($f1/127.\\, 2)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 460.0, 219.0, 51.0, 20.0 ],
									"text" : "FLOAT!"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 516.6666259765625, 164.0, 101.0, 22.0 ],
									"text" : "scale 0. 1. 0.1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-98",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 516.6666259765625, 119.0, 124.0, 22.0 ],
									"text" : "expr pow($f1/127.\\, 2)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 326.0, 220.0, 36.0, 20.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-100",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 370.333343505859375, 220.0, 51.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 370.333343505859375, 165.0, 101.0, 22.0 ],
									"text" : "scale 0. 1. 0 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-102",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 370.333343505859375, 120.0, 124.0, 22.0 ],
									"text" : "expr pow($f1/127.\\, 2)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-103",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 178.0, 220.0, 36.0, 20.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 224.0, 219.0, 51.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 224.0, 164.0, 101.0, 22.0 ],
									"text" : "scale 0. 1. 0 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-106",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 224.0, 119.0, 124.0, 22.0 ],
									"text" : "expr pow($f1/127.\\, 2)"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-113",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 65.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-114",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 224.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-115",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 370.333343505859375, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-116",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 516.6666259765625, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-117",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 663.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-118",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 595.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 1 ],
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-102", 0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"source" : [ "obj-117", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 2 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 1 ],
									"order" : 0,
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 1 ],
									"order" : 1,
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-84", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 3 ],
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-97", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"source" : [ "obj-98", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 456.0, 317.5, 296.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p ADSR"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 733.0, 222.5, 28.0, 20.0 ],
					"text" : "R"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 663.75, 222.5, 28.0, 20.0 ],
					"text" : "S"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 594.5, 222.5, 28.0, 20.0 ],
					"text" : "D"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 530.0, 222.5, 28.0, 20.0 ],
					"text" : "A"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 733.0, 256.0, 41.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 663.75, 256.0, 41.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 594.5, 256.0, 41.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.25, 256.0, 41.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.000001966953278, 304.000009059906006, 50.0, 22.0 ],
					"text" : "5."
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 66.20000022649765, 240.799998784065224, 61.999998867511749, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 110.933335602283478, 874.336668713092763, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"lastchannelcount" : 2,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 120.266667127609253, 711.669999999999959, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "mc.live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 305.0, 69.0, 47.0 ],
					"text" : "Max Frequency Deviation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 361.116667747497559, 481.0, 92.0, 60.0 ],
					"text" : "30 random numbers to set the panning for each voice"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 179.20000034570694, 485.133339583873749, 90.0, 20.0 ],
					"text" : "VCOs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 143.996664302349018, 553.336666209697796, 90.0, 20.0 ],
					"text" : "VCAs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 120.266667127609253, 650.663333253860515, 92.0, 22.0 ],
					"text" : "mc.mixdown~ 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 120.266667127609239, 582.669999701976735, 100.000000000000014, 22.0 ],
					"text" : "mc.*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 232.200001269578934, 504.670000178814007, 90.0, 33.0 ],
					"text" : "30 channels of saw waves"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 120.266667127609253, 502.67000017881395, 100.0, 35.0 ],
					"text" : "mc.saw~ @chans 30"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.266667127609253, 448.133339583873749, 51.0, 35.0 ],
					"text" : "deviate $1 $2"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-7",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 363.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 411.0, 100.0, 22.0 ],
					"text" : "pak 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 201.0, 335.0, 100.0, 22.0 ],
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 178.327358245849609, 442.133339583873749, 120.0, 33.0 ],
					"text" : "Fat suoer-saw synth using mc objects"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.529411764705882, 0.831372549019608, 0.741176470588235, 1.0 ],
					"id" : "obj-22",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 191.0, 119.400000035762787, 844.0, 290.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"order" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 1,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 1 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"order" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"order" : 1,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 394.25, 301.799998784065224, 413.25, 301.799998784065224, 413.25, 260.799998784065224, 326.75, 260.799998784065224 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 326.75, 302.799998784065224, 377.25, 302.799998784065224, 377.25, 267.799998784065224, 394.25, 267.799998784065224 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 4 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 3 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 2 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 1 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"midpoints" : [ 465.5, 452.0, 329.0, 452.0, 329.0, 543.0, 246.0, 543.0, 246.0, 576.0, 210.766667127609253, 576.0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 1 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 1 ],
					"midpoints" : [ 841.000030517578125, 365.0, 546.5, 365.0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-27" : [ "mc.live.gain~", "mc.live.gain~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
