{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 193.0, 100.0, 1381.0, 937.0 ],
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
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 337.0, 485.0, 29.0, 20.0 ],
					"text" : "10."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 337.0, 440.0, 29.0, 20.0 ],
					"text" : "11."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 337.0, 392.0, 23.0, 20.0 ],
					"text" : "5."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 337.0, 333.0, 23.0, 20.0 ],
					"text" : "9."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 127.0, 333.0, 23.0, 20.0 ],
					"text" : "8."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 127.0, 199.0, 23.0, 20.0 ],
					"text" : "7."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 127.0, 651.0, 23.0, 20.0 ],
					"text" : "6."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 127.0, 584.0, 23.0, 20.0 ],
					"text" : "4."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 127.0, 540.0, 23.0, 20.0 ],
					"text" : "3."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 127.0, 485.0, 23.0, 20.0 ],
					"text" : "1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 127.0, 393.0, 23.0, 20.0 ],
					"text" : "2."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"linecount" : 79,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 657.0, 17.0, 735.0, 1079.0 ],
					"text" : "Let's build a very simple synnth to start:\n\nCreate a new patch by way of /file/new patcher.\n\nUnlock the patch using the lock icon at the bottom left of the patcher.  Unlock the patch to create new objects or to program. Lock your patch to turn on sound, listen to your synth, use any gui objects, and generally play your program/digital instrument.\n\nControl or Command click also locks and unlocks patches.\n\n1) Create a new object by tying \"n.\" In our instrument, first create the oscillator that will make the sinewave that we will listen to. This object is the cycle~ object. Type cycle~ into the box to instantiate that object.\n\nIn Max/MSP, we distinguishe between control rate and audio rate objects.  All objects with a \"~\" at the end are audio rate objects.  Audio rate objects update at the sample rate, which is set in /Options/Audio Status/ Sampling Rate. If our sampling rate is 48kHz then the computer is updating this object 48,000 times per second. As the name audio rate suggests, we use these values for objects that generate audio, like our cycle~ sinewave generator.\n\nControl rate objects have no tilde and run at much slower speads, updating maybe a 100 times per second.  These objects are used to do computation and control for aspects of our program that don't need the timing precision of audio rate objects.\n\nType 'c' to create a comment and label the object, if you want.\n\n2) Type \"f\" to receive a floating point number box object to set the frequency of the cycle~ object. Cycle~ expects the frequency in its leftmost inlet, so plug the outlet of the number box into that inlet in the cycle~.\n\nWhen you hover over an inlet, notice that objects have \"hints\" that tell you the data that they expect.\n\n3) We will *~ object to control the amplitude of the cycle~ object. Connect the outlet of the cycle~ to the inlet of the *~ object. We will multiply the output of this cycle~ by a constant to make it louder or softer. The amplitude here will be some scalar value, typically between 0. - 1. If we multiply the output of the cycle~ by 0. it is silent and if we multiply by 1. it will be the full output of the cycle~.  If the number is less than 1. we are turning down the volume from it's full output level.  If we use a number that is greater than 1 we would be amplifying the output of the cycle~.  We will set the value of the amplitude scaleing in the right inlet of the *~ object.\n\nNotice that patchcords for audio are striped, while control-rate Max messages travel down grey patch cords.  This is one clear way to know what type of data (audio or control rate) is running through the particular cables.\n\n4) To ensure that the output never gets too loud, we will further scale the output below using another *~ object that will be set with an argument, rather than a number coming in the right inlet.  Here we choose a value of 0.2, which value scales the output sound to be quieter. \n\nObjects without set arguments will assume a value of 0 for all their arguments unless otherwise set.\n\n5) Next we create a float number box to set the amplitude of our note and send this into the left inlet of the first *~ object.  \n\n6) We then create the output to our computer.  In the computer, we're working with digital audio signals. To hear this, we need to convert it to an analog signal, which is an electrical audio signals that can then be turned into a current to drive the speakers.\n\nTo convert from digital to audio signals in Max, we use the DAC (digital to audio converter). ezdac~ is the easiest object with which to do this. Turn audio on in your patch by locking the patch and then hitting the ezdac button. Ezdac~ has two inlets for the left and right channels. Connect the output of the second *~ to the ezdac~ inlets.\n\nThen turn the audio on in your patch by clicking the EZDAC~ object or by hitting the power button in the bottom right corner of the patch.\n\n7) Let's add a keyboard to play our sounds.  The kslider object works well for this.  Out of the left outlet of kslider, we receive the midipitch value and out of the right outlet the midivelocity value.\n\n8) The cycle~ object uses frequency in Hz, so we need to convert the midipitch value to frequency in Hz using the mtof object. Patch the left outlet of the kslider to the inlet of the mtof object.  The patch the outlet of the mtof object to our float box for frequency.\n\n9) Similarly, our amplitude scaling for the loudness of the synth is expecting values between 0.1., so we can use a scale object to scale the values for midipitch (1-127) into float values between 0. 1..  The scale areguments are for the input low, input high, output low, output high.\n\nLooking for help on an object? Simply select the object and press command-shift-H (or control-shift-H).\n\n10) Notice how our synthesizer is clicking from note to note.  This is due to the instantaneous change in values for amplitude that also move from conntrol rate to audio rate. In order to smooth these clicks, we can create a ramp the moves from the last amplitude value to the new one over a set period of time, say 100 ms.  To do this, we create a line~ object.  This object creates ramps as needed and outputs audio rate samples of the values. \n\n11) We can use a message to control the ramp from one amplitude value to the next.  Messages are a data type in Max. you can create one by pressing \"m\".  The line object expect a message with at least two values: the value to ramp to and the amount of time to do it in.  We want the time of the ramp to be fixed at 100 ms. And then we want the new target to be the new value for amplitude of the note, which will always be changing based on the way we play the kslider. To do this, we need to substitute in the new value for amplitude coming from kslider into the message.  We use $1 to do this. See the example at 12). \n\nOnce we have our message set, we're ready to go and play notes!\n\nBE SURE TO TAKE A SCREEN SHOT OF YOUR COMPLETED PATCH FOR CREDIT.\n"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-40",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 457.0, 617.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 457.0, 656.0, 50.0, 22.0 ],
					"text" : "$1 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 457.0, 583.5, 163.0, 20.0 ],
					"text" : "message box example"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 457.0, 697.0, 50.0, 22.0 ],
					"text" : "24. 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 33.0, 485.0, 61.0, 20.0 ],
					"text" : "oscillator"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 157.0, 67.0, 429.0, 33.0 ],
					"text" : "LAB 1, PART 1: SIMPLE SYNTH"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 231.0, 584.0, 163.0, 20.0 ],
					"text" : "secondary amplitude scaling"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 231.0, 540.0, 109.0, 20.0 ],
					"text" : "amplitude scaling"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 457.0, 440.0, 163.0, 20.0 ],
					"text" : "ramp params: move"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 457.0, 485.0, 159.0, 47.0 ],
					"text" : "amplitude envelope:\nramp from the previous amplitude to the new one"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 33.0, 333.0, 76.0, 33.0 ],
					"text" : "midi to freq. scaling"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 486.0, 293.0, 78.0, 20.0 ],
					"text" : "midivelocity"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 33.0, 293.0, 66.0, 20.0 ],
					"text" : "midipitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 457.0, 392.0, 76.0, 33.0 ],
					"text" : "amplitude 0.-1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 33.0, 393.0, 76.0, 33.0 ],
					"text" : "frequency\n20-20 kHz"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 1 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
