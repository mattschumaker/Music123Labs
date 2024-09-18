{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 77.0, 1852.0, 921.0 ],
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
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.666669070720673, 748.000022292137146, 32.666667640209198, 20.0 ],
					"text" : "9)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 444.666679918766022, 428.00001186132431, 32.666667640209198, 20.0 ],
					"text" : "8)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 543.333349525928497, 428.00001186132431, 53.333334922790527, 20.0 ],
					"text" : "Decay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 381.333344697952271, 428.00001186132431, 53.333334922790527, 20.0 ],
					"text" : "Attack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 85.333335876464844, 670.0, 32.666667640209198, 20.0 ],
					"text" : "7)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 502.000014960765839, 157.333338022232056, 32.666667640209198, 20.0 ],
					"presentation_linecount" : 2,
					"text" : "6b)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 85.333335876464844, 464.00001186132431, 32.666667640209198, 20.0 ],
					"presentation_linecount" : 2,
					"text" : "6a)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 258.000007688999176, 228.0, 24.666663885116577, 20.0 ],
					"text" : "5)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 258.000007688999176, 394.00001186132431, 24.666663885116577, 20.0 ],
					"text" : "4)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 93.333336114883423, 378.00001186132431, 24.666663885116577, 20.0 ],
					"text" : "3)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 93.333336114883423, 333.0, 24.666663885116577, 20.0 ],
					"text" : "2)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"linecount" : 45,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 692.000020623207092, 394.0, 480.000014305114746, 627.0 ],
					"text" : "1) Start by making a \"sig~\" object. \"sig~\" takes a number as an input, and outputs an audio signal at that rate.\n\n2) Now we're going to implement the LFO. In this synth, the LFO is going to modulate our frequency, which slowly changes between two frequencies over time based on the speed and depth we provide it. Start by making a \"+~\" object. Then connect \"sig~\" to \"+~\"'s left inlet, and the \"p LFO\" subpatcher to \"+~\"'s right inlet.\n\n3) Next, we're going to take the frequency outputted by the \"+~\" object into an oscillator. In this case, we're going to use a square wave. Make a \"rect~\" object and connect \"+~\"'s outlet to \"rect~\"'s left inlet.\n\n4) Now, we're going to achieve our spacious \"pad\" sound by taking a copy of \"+~\"'s output and slightly detuning it. Make another \"+~\" object. Take the outlet from the \"+~\" object that we made in step 2 and connect it to the \"+~\" object we just made's left inlet. Then create another \"rect~\" object and connect the \"+~\" we just made's outlet to the \"rect~\" we just mades left inlet.\n\n5) In order to detune the copy of our original signal, we're going to make an interface that allows us to control how much the second signal deviates from the first (up to 5 Hertz). Start by making a \"live.dial\" object. Then connect it to a \"scale\" object's left inlet. Give the \"scale\" objet the arguments, without quotes \"0 127 0. 5.\" This is going to convert the dial's output to a number between 0 and 5. Next, make a \"number object, and connect \"scale\" to it. Now we need to connect the \"number\" object to the \"+~\" object from step 4's right inlet.\n\n6a) Now we're going to make a filter for our subtractive synthesizer. Make a \"svf~\" object. Then, connect the \"rect~\" object from step 4 to \"svf~\"'s left inlet. \n6b) Now, using the screenshot from the lab write-up, build an interface for the filter. Note that \"svf~\"'s middle inlet takes in the cutoff frequency, and the right inlet is expecting the resonance value.\n\n7) Now, we're going to create a VCA for our synth. Make a \"*~\" object, and connect \"svf~\"'s left outlet to \"*~\"'s left inlet\n\n8) Now, we're going to make a simple amplitude envelope for our synth, one with only attack and decay values. Refer to the diagram in the lab write-up for what it should look like. Note that we have to connect the \"kslider\" object at the top of the patch to the left inlet of our \"pack\" object in order to trigger the envelope. After you create the \"line~\" object that your attack and decay values feed into, connect its left outlet to the \"*~\" object from step 7's right inlet.\n\n9) The last step is to wire our synth to output sound. Connect the \"*~\" object from step 8 to the \"*~\" object with the \"0.2\" argument. Toggle the \"ezdac~\" and test for sound with the \"kslider\" at the top of the patch."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 93.333336114883423, 292.50001186132431, 24.666663885116577, 20.0 ],
					"text" : "1)"
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
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 995.0, 85.0, 890.0, 912.0 ],
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 93.0, 314.0, 101.0, 22.0 ],
									"text" : "scale~ -1. 1. 0. 5."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 296.333343505859375, 145.0, 103.0, 22.0 ],
									"text" : "scale 0. 1. 0.1 10."
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
									"patching_rect" : [ 93.0, 145.0, 97.0, 22.0 ],
									"text" : "scale 0. 1. 0.1 5."
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
									"outlettype" : [ "" ],
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
									"outlettype" : [ "" ],
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
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 305.833343505859375, 300.0, 168.099999999999994, 300.0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
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
									"destination" : [ "obj-2", 0 ],
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
					"patching_rect" : [ 706.333351850509644, 280.0, 91.333343505859375, 22.0 ],
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
					"id" : "obj-100",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 440.666679799556732, 700.999997138977051, 50.0, 22.0 ],
					"text" : "5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 381.333344697952271, 790.999999821186066, 50.0, 22.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 381.333344697952271, 760.999998927116394, 50.0, 22.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 381.333344697952271, 730.999998033046722, 50.0, 22.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 381.333344697952271, 700.999997138977051, 50.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 254.666674256324768, 728.333331286907196, 50.0, 22.0 ],
					"text" : "store 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 254.666674256324768, 797.0, 100.0, 40.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-6", "kslider", "int", 60, 5, "<invalid>", "flonum", "float", 1920.0, 5, "<invalid>", "flonum", "float", 0.677165329456329, 5, "<invalid>", "live.dial", "float", 81.0, 5, "<invalid>", "live.dial", "float", 86.0, 5, "obj-35", "flonum", "float", 261.625579833984375, 5, "<invalid>", "flonum", "float", 606.0, 5, "<invalid>", "flonum", "float", 1991.0, 5, "<invalid>", "live.dial", "float", 25.0, 5, "<invalid>", "live.dial", "float", 84.0, 5, "<invalid>", "flonum", "float", 3.661417245864868, 5, "<invalid>", "live.dial", "float", 93.0, 5, "obj-79", "live.dial", "float", 9.0, 5, "obj-80", "live.dial", "float", 42.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-6", "kslider", "int", 64, 5, "<invalid>", "flonum", "float", 1873.0, 5, "<invalid>", "flonum", "float", 0.173228353261948, 5, "<invalid>", "live.dial", "float", 79.0, 5, "<invalid>", "live.dial", "float", 22.0, 5, "obj-35", "flonum", "float", 329.6275634765625, 5, "<invalid>", "flonum", "float", 1850.0, 5, "<invalid>", "flonum", "float", 1991.0, 5, "<invalid>", "live.dial", "float", 78.0, 5, "<invalid>", "live.dial", "float", 84.0, 5, "<invalid>", "flonum", "float", 3.464566946029663, 5, "<invalid>", "live.dial", "float", 88.0, 5, "obj-79", "live.dial", "float", 58.0, 5, "obj-80", "live.dial", "float", 14.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-6", "kslider", "int", 59, 5, "<invalid>", "flonum", "float", 1826.0, 5, "<invalid>", "flonum", "float", 0.464566916227341, 5, "<invalid>", "live.dial", "float", 77.0, 5, "<invalid>", "live.dial", "float", 59.0, 5, "obj-35", "flonum", "float", 246.941650390625, 5, "<invalid>", "flonum", "float", 2601.0, 5, "<invalid>", "flonum", "float", 1991.0, 5, "<invalid>", "live.dial", "float", 110.0, 5, "<invalid>", "live.dial", "float", 84.0, 5, "<invalid>", "flonum", "float", 0.0, 5, "<invalid>", "live.dial", "float", 0.0, 5, "obj-79", "live.dial", "float", 10.0, 5, "obj-80", "live.dial", "float", 14.0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-6", "kslider", "int", 60, 5, "<invalid>", "flonum", "float", 1568.0, 5, "<invalid>", "flonum", "float", 0.88976377248764, 5, "<invalid>", "live.dial", "float", 66.0, 5, "<invalid>", "live.dial", "float", 113.0, 5, "obj-35", "flonum", "float", 261.625579833984375, 5, "<invalid>", "flonum", "float", 1498.0, 5, "<invalid>", "flonum", "float", 1991.0, 5, "<invalid>", "live.dial", "float", 63.0, 5, "<invalid>", "live.dial", "float", 84.0, 5, "<invalid>", "flonum", "float", 2.795275688171387, 5, "<invalid>", "live.dial", "float", 71.0, 5, "obj-79", "live.dial", "float", 39.0, 5, "obj-80", "live.dial", "float", 14.0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-6", "kslider", "int", 55, 5, "<invalid>", "flonum", "float", 2507.0, 5, "<invalid>", "flonum", "float", 0.669291317462921, 5, "<invalid>", "live.dial", "float", 106.0, 5, "<invalid>", "live.dial", "float", 85.0, 5, "obj-35", "flonum", "float", 195.997711181640625, 5, "<invalid>", "flonum", "float", 1521.0, 5, "<invalid>", "flonum", "float", 1991.0, 5, "<invalid>", "live.dial", "float", 64.0, 5, "<invalid>", "live.dial", "float", 84.0, 5, "<invalid>", "flonum", "float", 4.251968383789062, 5, "<invalid>", "live.dial", "float", 108.0, 5, "obj-79", "live.dial", "float", 127.0, 5, "obj-80", "live.dial", "float", 30.0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"id" : "obj-87",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 335.166703701019287, 394.00001186132431, 189.0, 20.0 ],
					"text" : "AMPLITUDE ENVELOPE"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"id" : "obj-86",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 301.333351850509644, 146.00001186132431, 54.0, 20.0 ],
					"text" : "FILTER"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"id" : "obj-85",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 706.333351850509644, 146.00001186132431, 53.0, 20.0 ],
					"text" : "LFO"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 772.333351850509644, 179.00001186132431, 52.66666454076767, 20.0 ],
					"text" : "depth"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 706.333351850509644, 179.00001186132431, 52.66666454076767, 20.0 ],
					"text" : "speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 778.666695356369019, 209.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[6]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.dial[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 706.333351850509644, 209.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[5]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.dial[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 301.333351850509644, 179.00001186132431, 49.0, 20.0 ],
					"text" : "detune."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 127.0, 711.0, 100.0, 22.0 ],
					"text" : "*~ 0.2"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-35",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 127.0, 238.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 127.0, 792.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 570.333351850509644, 179.00001186132431, 102.66666454076767, 20.0 ],
					"text" : "resonance (0.-1.)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 418.333351850509644, 179.00001186132431, 45.999996900558472, 20.0 ],
					"text" : "freq."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.000000894069672, 464.00001186132431, 48.0, 20.0 ],
					"text" : "VCF"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.000000894069672, 670.0, 48.0, 20.0 ],
					"text" : "VCA"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 127.0, 202.0, 100.0, 22.0 ],
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 127.0, 68.0, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.000000894069672, 380.00001186132431, 48.0, 20.0 ],
					"text" : "VCO"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 24.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 127.0, 15.0, 382.0, 34.0 ],
					"text" : "MAKE YOUR OWN PAD SOUND"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.717647058823529, 0.980392156862745, 0.462745098039216, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 691.333353936672211, 129.0, 177.000011503696442, 225.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"order" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"order" : 1,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 1 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-79" : [ "live.dial[5]", "live.dial", 0 ],
			"obj-80" : [ "live.dial[6]", "live.dial", 0 ],
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
