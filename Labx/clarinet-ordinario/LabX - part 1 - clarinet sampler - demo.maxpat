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
		"rect" : [ 134.0, 134.0, 1238.0, 921.0 ],
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
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 88.0, 518.0, 33.0, 27.0 ],
					"text" : "5)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 88.0, 425.0, 33.0, 27.0 ],
					"text" : "4)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 88.0, 338.5, 33.0, 27.0 ],
					"text" : "3)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 88.0, 86.5, 33.0, 27.0 ],
					"text" : "2)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 88.0, 41.5, 33.0, 27.0 ],
					"text" : "1)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-5",
					"linecount" : 30,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 624.0, 41.5, 616.0, 627.0 ],
					"text" : "Clarinet multisampler in Max\n\nIn the last demo, we made a simple drum sampler. Now, we're going to use\nour previous knowledge of \"sfizz~\" and .sfz files to have multiple samples\nassigned to each key. A sampler that works like this is called a \"multisampler.\" Instead of just changing the output volume, we have two\nsamples for each MIDI pitch: one quiet, one loud.\n\nNote that the \"kslider\" interface is already configured, so you don't have to\nmodify it, but you'll need to connect to and from it following the instructions.\n\n1) Create a \"midiin\" object. \"midiin\" recognizes all MIDI input received by \n    your computer.\n\n2) Create a \"notein\" object. Connect \"midiin\" to \"notein\". \"notein\" filters out\n    all MIDI information that isn't about pitch, velocity, and channel, but we're\n    only going to use pitch and velocity information, as per usual.\n\n3) Create an \"sfizz~\" object with the argument \"clarinet-demo.sfz\". Connect  \n    \"notein\"'s left and middle oulets to \"sfizz~\"'s inlets. Connect \"makenote\"'s \n    outlets to \"sfizz~\"'s inlets. \"sfizz~\" expects a .sfz file as an argument. You \n    double-click on \"sfizz~\" while the patch is locked to look at the file.   \n    Follow the instructions in the file, then once you're done editing, save the\n    file and continue to the next step.\n\n4) Create a \"live.gain~\" slider. Connect \"sfizz~\"'s outlets to \"live.gain~\"'s\n    inlets. \"live.gain~\" will be used to control all outgoing volume.\n\n5) Create an \"ezdac~\" object. Connect \"live.gain~\"'s leftmost outlets to\n    \"ezdac\"'s inlets. Toggle \"ezdac~\", and test out your sampler!"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 236.0, 44.0, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 236.0, 127.0, 115.0, 22.0 ],
					"text" : "makenote 127 1000"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"midpoints" : [ 562.5, 114.0, 293.5, 114.0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
 ],
		"parameters" : 		{
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
