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
		"rect" : [ 34.0, 79.0, 1342.0, 933.0 ],
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
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.428558349609375, 649.0, 59.0, 22.0 ],
					"text" : "pack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 75.428558349609375, 560.0, 59.0, 22.0 ],
					"text" : "unpack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 75.428558349609375, 604.0, 29.5, 22.0 ],
					"text" : "- 24"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 128.428558349609375, 481.0, 156.5, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 132.28570556640625, 808.0, 133.0, 22.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 219.0, 370.0, 74.0, 21.0 ],
					"text" : "Loop Mode",
					"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 156.0, 366.0, 61.0, 22.0 ],
					"text" : "delay 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 419.0, 1037.567626953125, 70.0, 22.0 ],
					"text" : "loadmess 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 326.0, 1108.567626953125, 130.0, 60.0 ],
					"presentation_linecount" : 4,
					"text" : "the midiformat object\nwill also automatically format midievent messages for you"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontname" : "Arial Bold",
					"hint" : "",
					"id" : "obj-22",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 137.5, 1230.067626953125, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "3",
					"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 137.5, 1252.067626953125, 109.0, 25.0 ],
					"text" : "turn on audio"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-123",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 179.0, 972.067626953125, 101.0, 51.0 ],
					"presentation_linecount" : 3,
					"text" : "double-click to choose\nMIDI input"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 126.0, 1073.567626953125, 122.0, 60.0 ],
					"presentation_linecount" : 4,
					"text" : "the midiparse object\nwill automatically format midievent messages for you"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 126.0, 1040.567626953125, 143.0, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 443.5, 1007.567626953125, 210.0, 47.0 ],
					"presentation_linecount" : 3,
					"style" : "helpfile_label",
					"text" : "The global transport must be running when a tempo-relative Max time format is used."
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-30",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "openTransport.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 493.5, 1067.567626953125, 160.0, 30.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 1242.567626953125, 44.0, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 2,
					"id" : "obj-32",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 1242.567626953125, 44.0, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 350.0, 1242.567626953125, 130.0, 23.0 ],
					"text" : "print midi @popup 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-90",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 350.0, 1271.567626953125, 165.0, 36.0 ],
					"presentation_linecount" : 2,
					"text" : "plug-in generated MIDI events (as raw MIDI bytes)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 912.567626953125, 138.0, 25.0 ],
					"text" : "load an instrument"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 33.0, 913.567626953125, 37.0, 23.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 250.0, 1208.567626953125, 194.0, 23.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[1]",
							"parameter_shortname" : "vst~[1]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "Equator.vst",
							"plugindisplayname" : "Equator",
							"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/Equator.vst",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "27377.CMlaKA....fQPMDZ....ATTbzIG...P2....A........................................nVsP.vQ+6GA..PuB..............................L1LSL2PlMwPiL0XCM4byMhQiMyjSLz.SMlcCNzPCN3.PQQUUPT8jTeAkTEMUQTAP.CXWYxMWZu4F.AbPAw3RNt.C.0UWZjAP.hT.L1LSL2PlMwPiL0XCM4byMhQiMyjSLz.SMlcCNzPCN3..cgc1b.DvmETjYlU1XzwBQocVZzEFarLzasAGakgGKGwVZzMFZrvTX4UlbkQFKM8Fco8lar.UYxMVcyMWZ1UFKAQWauMGbnUlboMFKBUmd5kGKC8VavwVY3wBQgI2ZrPTYzUmakQFKDk1by8lag4FcrPTZyQ2axQWYjwRSk0lXxElakwRSkQWXrwVZiwhSuk1b4whTkM2atElazwhToMFZrHURSUD.BDR.M8DQMEDURkDV..P.0MzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A.QAA0FbfTja1UFauAWY5.C.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.D.DEDTavARQtYWYr8FbkoSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.PTPPsAGHE4lckw1avUlNx.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A.QAA0FbfTja1UFauAWY5LC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.D.DEDTavARQtYWYr8FbkoSM.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.PTPPsAGHE4lckw1avUlN1.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.ATQAOM2XowFagQ2axAxPuElbyUlNw.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.ATQAOM2XowFagQ2axAxPuElbyUlNx.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.ALQAOM2XowFagQ2axAhQo4VY5.C.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DvDE7zbikFarEFcuIGHFklakoSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.STvSyMVZrwVXz8lbfXTZtUlNx.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.AHQASEVavwVYxAxPuElbyUlNv.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A.QASEVavwVYxAhQo4VY5.C.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfDELUXsAGakIGHC8VXxMWY5DC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.D.DELUXsAGakIGHFklakoSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.UTvSyMVZrwVXz8lbfLzagI2bkoCL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkAhL5.C.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfHiNw.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFHxniL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkAhL5LC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfHiNz.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFHxnSM.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkAhL5XC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfLiNv.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFHynSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkAxL5HC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfLiNy.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFHynCM.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkAxL5TC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfLiN1.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFHznCL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkABM5DC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfPiNx.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFHznyL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkABM5PC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfPiN0.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFHzniM.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.aTvSyMVZrwVXz8lbfDCHMkFdkIGHGEVZtoCL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.aTvSyMVZrwVXz8lbfDCHMkFdkIGHGEVZtoSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.aTvSyMVZrwVXz8lbfDCHMkFdkIGHGEVZtoiL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.aTvSyMVZrwVXz8lbfDCHMkFdkIGHGEVZtoyL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.aTvSyMVZrwVXz8lbfDCHMkFdkIGHGEVZtoCM.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.IT.SF8DHwnCL.bWYocFZzAP.FT.LtHSM.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.IT.SF8DHwnSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.IT.SF8DHwniL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkARM5.C.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfTiNw.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFH0niL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkARM5LC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfTiNz.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFH0nSM.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkARM5XC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.D.CELEcxk1ZkARL5.C.jU1bzAP.PTPPsAGHE4lckw1avUlNz.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AvPASQmbosVYfDiNv..YkMGc.DvDEXTZrQWYxAhLfLTcz8lYloCL.bWYocFZzAP.XT.LtDSLwDSLwDSLwjyL3jSMyLSN4XiM.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.LTvTzIWZqUFHwnCL.PVYyQG.A.QAA0FbfTja1UFauAWY5.C.2UVZmgFc.DPFEzBLtLCLv.CLv.SLwjiLvjiL3jSM0.CN.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.LTvTzIWZqUFHxnCL.PVYyQG.ArQAOM2XowFagQ2axARLfzTZ3UlbfbTXo4lNz.vckk1YnQG.AbQAv3hL3fCN3fSNvDCM2HCL4DiM2PCN.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.JT.SoYFcfDiNv..YkMGc.D.FEPTYrEVdfXTYkQlXgM1ZfHUZmgFc5.C.2UVZmgFc.D.AEzRL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.JT.SoYFcfDiNv..YkMGc.DvEEPTYrEVdfXTYkQlXgM1ZfvTYlQmNv.vckk1YnQG.APPAsDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DfBEvTZlQGHxnCL.PVYyQG.A3PAE4lckw1avUFHznyL.bWYocFZzAP.XT.LtPyM2byM2byM4DCLxLiL0PyL4PSM.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.JT.SoYFcfHiNv..YkMGc.DfCEXTSfPTYvQGZfHjNv.vckk1YnQG.AfQAv3RM1XiM1XyMxHiL4biM1fCM0bCLy.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AnPALklYzAhL5.C.jU1bzAP.STfQowFckIGHx.xP0Q2alYlNv.vckk1YnQG.AfQAv3hLyLyLyLyLyPyLxXyMzPCL2jSM4.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AnPALklYzAhL5.C.jU1bzAP.NTfQMABQkAGcnARP5.C.2UVZmgFc.D.FE.iKxbyM2byM2jSLvHyLxTCMyjCM0LC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DfBEvTZlQGHxnCL.PVYyQG.A3PAE4lckw1avUFHynyL.bWYocFZzAP.XT.LtHyLyLyLyLyLzLiL1bCMz.yM4TSN.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KTvQrkFYkARL5.C.jU1bzAP.UTvSyMVZrwVXz8lbfLzagI2bkoiL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KTvQrkFYkARL5.C.jU1bzAP.RTvTg0FbrUlbfLzagI2bkoCL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KTvQrkFYkARL5.C.jU1bzAP.RTvTg0FbrUlbfLzagI2bkoSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KTvQrkFYkARL5.C.jU1bzAP.PTPPsAGHE4lckw1avUlNx.vckk1YnQG.AfQAv3RNwDSLwDSLwXCMvjyLvDyM0bCNw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPAGwVZjUFHwnCL.PVYyQG.ATQAOM2XowFagQ2axAxPuElbyUlNw.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPAGwVZjUFHwnCL.PVYyQG.A3PAE4lckw1avUFHxniL.bWYocFZzAP.DTPKw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPAGwVZjUFHwnCL.PVYyQG.A.QAA0FbfTja1UFauAWY5PC.2UVZmgFc.DPFEzBLtDyLyLyLyLCMvHCN2HCL3TSM2DyL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KTvQrkFYkARL5.C.jU1bzAP.NTPQtYWYr8FbkAhL5PC.2UVZmgFc.DfFEzBLt.yM2byM2bCNvTSNxPCMwTSM3fyL3.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPAGwVZjUFHwnCL.PVYyQG.APQAOM2XowFagQ2axABSkYWYroCL.bWYocFZzAP.YTPKv3hL0TSM0TSM2.SLxTSM2jCNyLSN3.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPAGwVZjUFHxnCL.PVYyQG.A3PAE4lckw1avUFH0nSL.bWYocFZzAP.XT.LtTiLxHiLxHiLvfSN2XyMzTiMvTSM.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KT.TxU1byARL5.C.jU1bzAP.PTPPsAGHE4lckw1avUlNx.vckk1YnQG.AfQAv3xM2byM2byM4DCLxLiL0PyL4PSMy.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPAPIWYyMGHwnCL.PVYyQG.ATQAFkFazUlbfDCHC8VahARSogmNv.vckk1YnQG.AfQAv3RL2byM2byM3HCL3HSM0biM2fiLx.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPAPIWYyMGHwnCL.PVYyQG.AbQAN8VZyUFHFkFazUlbfLTcz8lYloCL.bWYocFZzAP.XT.LtbiM1XiM1XSMvbyMx.SNzbiL1TiM.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KT.TxU1byARL5.C.jU1bzAP.NTPQtYWYr8FbkABM5HC.2UVZmgFc.D.FE.iK1PCMzPCMzXSM1LyMx.yMvLSLxTC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DvBE.kbkM2bfDiNv..YkMGc.DPEE7zbikFarEFcuIGHC8VXxMWY5.C.2UVZmgFc.D.AEzRL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KTvTrkFYkARL5.C.jU1bzAP.NTPQtYWYr8FbkARM5PC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DvBELEaoQVYfDiNv..YkMGc.DfCETja1UFauAWYfTiNw.vckk1YnQG.AfQAs.iKyLyLyLyLyPyLxXyMzPCL2jSM4.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPASwVZjUFHwnCL.PVYyQG.APQAOM2XowFagQ2axABSkYWYroCL.bWYocFZzAP.YTPKv3RL0TSM0TSM1DSL3PCN3LSLwbiM3.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPASwVZjUFHwnCL.PVYyQG.APQAOM2XowFagQ2axABSkYWYroSL.bWYocFZzAP.YTPKv3hL0TSM0TSM2.SLxTSM2jCNyLSN3.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPASwVZjUFHwnCL.PVYyQG.APQAOM2XowFagQ2axABSkYWYroiL.bWYocFZzAP.YTPKv3RL1XiM1XiM2DiMyLyMx.yL4bSN0.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPASwVZjUFHwnCL.PVYyQG.A.QAA0FbfTja1UFauAWY5PC.2UVZmgFc.DPFEzBLtPSM0TSM0TSM3HCLzXSMvfyM3jSL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.ITPSgMlbuoCM.PVYyQG.A3PAE4lckw1avUFHxniL.bWYocFZzAP.XT.LtTyLyLyLyLCLwTCMzDCN4PSMyDiL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.ITPSgMlbuoCM.PVYyQG.ATQAOM2XowFagQ2axAxPuElbyUlNv.vckk1YnQG.APPAsDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPBEzTXiI2a5.C.jU1bzAP.PTPPsAGHE4lckw1avUlNv.vckk1YnQG.AfQAv3RMxHiLxHiLx.CN4biM2PSM1.SM0.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNv..YkMGc.DfCETja1UFauAWYfHiNv.vckk1YnQG.AfQAv3RM1XiM1XiM1HiM4LCLxLiM3DiMz.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNv..YkMGc.DfCETja1UFauAWYfLiNv.vckk1YnQG.AfQAv3RL1XiM1XiM2DiMyLyMx.yL4bSN0.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNy..YkMGc.D.FEPTYrEVdfXTYkQlXgM1ZfHUZmgFc5.C.2UVZmgFc.DPFEzBLtfCMzPCMzPSMybSL1HyM3.yM1DyM.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.ITPSgMlbuoyL.PVYyQG.AbQADUFagkGHFUVYjIVXisFHLUlYzoCL.bWYocFZzAP.DTPKw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNy..YkMGc.D.EEPTYrEVdfvTY1UFafvTYlQmNv.vckk1YnQG.AfQAv3RL0TSM0TSM1DSL3PCN3LSLwbiM3.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNy..YkMGc.DPEEHTZzMlb0MGZkIGHRUFY0MVY5.C.2UVZmgFc.D.FE.iK2XiM1XiM1TCL2biLvjCM2HiM0XC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPBEzTXiI2a5DC.jU1bzAP.ST.QkwVX4ABUo0VYfvTYlQmNv.vckk1YnQG.AfQAv3BMv.CLv.CLvTSN1.CM1PCM2bSMz.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNw..YkMGc.D.EEPTYrEVdfPUZsUFHRk1YnQmNv.vckk1YnQG.AfQAv3xL2byM2byM3TCL1HyM3jSNwXSN4.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNw..YkMGc.DvEEPTYrEVdfXTYkQlXgM1ZfvTYlQmNv.vckk1YnQG.AjQAs.iKx.CLv.CLv.iL4fCLxLiLxLCN2bC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPBEzTXiI2a5DC.jU1bzAP.XT.QkwVX4AhQkUFYhE1XqAhTocFZzoCL.bWYocFZzAP.YTPKv3hLxHiLxHiLxLCN2bSNvXyM4jyLx.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNz..YkMGc.DPEEXTZrQWYxARLfLzasIFHMkFd5.C.2UVZmgFc.D.FE.iK1DSLwDSLw.CMzfCNybiL3.iL2LC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPBEzTXiI2a5PC.jU1bzAP.WTfQowFckIGHw.xPu0lXfPTYrEVd5.C.2UVZmgFc.D.FEzBLtDCN3fCN3fSNxTyLwLSNzjSM3TC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPBEzTXiI2a5HC.jU1bzAP.IT.SF8DHwnSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.ITPSgMlbuoiL.PVYyQG.ATQABkFciIWcygVYxAhTkQVciUlNv.vckk1YnQG.AfQAv3RLyLyLyLyLz.iL3biLvfSM0bSLy.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNx..YkMGc.DfCELDZuIWcyAxUkQmNv.vckk1YnQG.AbQAv3BN2byM2byM0TiL1.CM1bSMxjyL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.ITPSgMlbuoiL.PVYyQG.A.QACg1axU2bfLEbkUFY5.C.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPBEzTXiI2a5HC.jU1bzAP.PTvPn8lb0MGHWkFYzglNv.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNx..YkMGc.DvCEHUY1UlbhAxTooWY5.C.2UVZmgFc.D.FE.iKwbyM2byM2fiLvfiL0TyM1bCNxHC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPBEzTXiI2a5HC.jU1bzAP.OTfTkYWYxIFHDEVavoCL.bWYocFZzAP.XTPKv3BN2byM2byM0TiL1.CM1bSMxjyL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.ITPSgMlbuoiL.PVYyQG.A3PARUlckImXfbUYzoCL.bWYocFZzAP.XT.LtTyLyLyLyLCLwTCMzDCN4PSMyDiL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.PTPPsAGHE4lckw1avUlNv..YkMGc.D.EE7zbikFarEFcuIGHLUlckwlNw.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.A.QAA0FbfTja1UFauAWY5.C.jU1bzAP.QTvTg0FbrUlbfvTY1UFa5.C.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.D.DEDTavARQtYWYr8FbkoCL.PVYyQG.ADQASEVavwVYxABSkYWYroSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.PTPPsAGHE4lckw1avUlNv..YkMGc.D.EE7zbikFarEFcuIGHLUlckwlNv.vckk1YnQG.AfQAv3RNwDyMwfyMxXSL0fSLzHCL3jCNz.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.A3PAE4lckw1avUFHxnCL.PVYyQG.A7PAN8VZyUFHLUlckwlNv.vckk1YnQG.AfQAv3RNvHCM2LSN3XSLzfCNyPiLxfSMx.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.A3PAE4lckw1avUFHynCL.PVYyQG.ALQAFkFazUlbfHCHCUGcuYlY5.C.2UVZmgFc.D.FE.iKyDSLwDSLwHiLyXSN2XiMxLSMyTC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DfCETja1UFauAWYfPiNv..YkMGc.D.EE7zbikFarEFcuIGHLUlckwlNx.vckk1YnQG.AfQAv3BMv.CLv.CLvTSN1.CM1PCM2bSMz.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.A3PAE4lckw1avUFH0nCL.PVYyQG.APQAOM2XowFagQ2axABSkYWYroiL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.NTPQtYWYr8FbkARM5.C.jU1bzAP.TTvSyMVZrwVXz8lbfvTY1UFa5DC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DfCETja1UFauAWYfTiNv..YkMGc.D.EE7zbikFarEFcuIGHLUlckwlNv.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..rTQYQkTAMzRI4zQ....PEjTA0D.AHPZjAP.LTvSSMDHwvTY1UFa.XWXrUWY.D.FE.iK4DSL2DCN2HiMwTCNwPiLvfSN3PC...UPRETS.Df.oQF.AnPAOM0PfDCTg4F.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.OTvSSMDHwXTZrQWYxARL.XWXrUWY.DvEE.iKzTSM2HSNwTiM2LiL0TSNx.CMw...PEjTA0D.AHPZjAP.OTvSSMDHwXTZrQWYxAhL.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AjPAOM0PfDiQXAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPCE7zTCARLRUlckImX.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AnPAOM0PfDCQxkG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.OTvSSMDHwbUX1UlYuIWa.XWXrUWY.Dv.EHC...UPRETS.Df.oQF.A3PAOM0PfDSQtElXrUFY.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AzPAOM0PfDyPuElbyUF.1EFa0UF.AfQAv3BM4XCLvXSN1TiMybiLvbCLyDiL0...PEjTA0D.AHPZjAP.KTvSSMDHwXTZtUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTvSSMDHw.UcrMWYWkFYzgF.1EFa0UF.AXPAv3hL0...PEjTA0D.AHPZjAP.LTvSSMDHxvTY1UFa.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AnPAOM0PfHCTg4F.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.OTvSSMDHxXTZrQWYxARL.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A7PAOM0PfHiQowFckIGHx.fcgwVckAP.CT.L...TAIUPMAP.BjFY.DPBE7zTCAhLFgE.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.MTvSSMDHxHUY1UlbhAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfBE7zTCAhLDIWd.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A7PAOM0PfHyUgYWYl8lbsAfcgwVckAP.CTfL...TAIUPMAP.BjFY.DfCE7zTCAhLE4VXhwVYjAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DPCE7zTCAhLC8VXxMWY.XWXrUWY.D.FE.iKzjyLz.iL4TyM4DiMxTSN2XSM1HC...UPRETS.Df.oQF.ArPAOM0PfHiQo4VY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.ADQAOM0PfHCT0w1bkcUZjQGZ.XWXrUWY.DfAE.iKxTC...UPRETS.Df.oQF.AvPAOM0PfLCSkYWYrAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DfBE7zTCAxLPEla.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A7PAOM0PfLiQowFckIGHw.fcgwVckAP.CTPL...TAIUPMAP.BjFY.DvCE7zTCAxLFkFazUlbfHC.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.ITvSSMDHyXDV.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AzPAOM0PfLiTkYWYxIF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.JTvSSMDHyPjb4AfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvCE7zTCAxLWElckY1ax0F.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.NTvSSMDHyTjagIFakQF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.MTvSSMDHyLzagI2bkAfcgwVckAP.YTPKv3hL0jCM1DCNx.SLxTSM2jCNyLSN3...PEjTA0D.AHPZjAP.KTvSSMDHyXTZtUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTvSSMDHy.UcrMWYWkFYzgF.1EFa0UF.AXPAv3hL0...PEjTA0D.AHPZjAP.KTfQMUjagIFakQF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.QTfTo41YM8FYFkFazUlbfDC.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTfTo41YM8FYFkFazUlbfHC.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.KTfTo41YM8FYFgE.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.OTfTo41YM8FYRUlckImX.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AvPARklam0zajQjb4AfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfDELUXsAGakIGHwTjagIFakQF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.PTvTg0FbrUlbfDCSkYWYrAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DfCELUXsAGakIGHw.UXtAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPDELUXsAGakIGHw7jYlMWYzAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvDELUXsAGakIGHwXTZrQWYxARL.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.ALQASEVavwVYxARLFkFazUlbfHC.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.MTvTg0FbrUlbfDiQXAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPDELUXsAGakIGHwHUY1UlbhAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfCELUXsAGakIGHwPjb4AfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPDELUXsAGakIGHwLzagI2bkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvCELUXsAGakIGHwXTZtUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.RTvTg0FbrUlbfHSQtElXrUFY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A.QASEVavwVYxAhLLUlckwF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.NTvTg0FbrUlbfHCTg4F.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTvTg0FbrUlbfHySlY1bkQG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.STvTg0FbrUlbfHiQowFckIGHw.fcgwVckAP.CTPL...TAIUPMAP.BjFY.DvDELUXsAGakIGHxXTZrQWYxAhL.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AzPASEVavwVYxAhLFgE.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTvTg0FbrUlbfHiTkYWYxIF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.NTvTg0FbrUlbfHCQxkG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTvTg0FbrUlbfHyPuElbyUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.OTvTg0FbrUlbfHiQo4VY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A3PAN8VZyUVQtElXrUFY.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AvPAN8VZyU1UoQFcnAfcgwVckAP.CT.L...TAIUPMAP.BjFY.D.CE3zaoMWYLUlckwF.1EFa0UF.AfQAv3RNvHCM2LSN3XSLzfCNyPiLxfSMx...PEjTA0D.AHPZjAP.OTfSuk1bkYTZrQWYxARL.XWXrUWY.D.FE.iK2LCM3TiLzLyLx.CM1TCL3bCN4DC...UPRETS.Df.oQF.A7PAN8VZyUlQowFckIGHx.fcgwVckAP.CTPL...TAIUPMAP.BjFY.DPBE3zaoMWYFgE.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.MTfSuk1bkIUY1UlbhAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfBE3zaoMWYDIWd.XWXrUWY.D.FE.iK0DSL2XiLwPiLwfSLyjiMzfCMyfC...UPRETS.Df.oQF.A3PAFkFazUlbfDCU4AWY.XWXrUWY.Dv.EXC...UPRETS.Df.oQF.ADQAFkFazUlbfDSQtElXrUFY.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.A.QAFkFazUlbfDyP0Q2SlYF.1EFa0UF.AfQAv3RL0LyMyHiM0bCMyHSM0XSL0HyLz...PEjTA0D.AHPZjAP.STfQowFckIGHwHUYy8lag41XkAfcgwVckAP.YT.Lt.CN2XyMyLiL3fSL1fSNvbSL1TSMy...PEjTA0D.AHPZjAP.STfQowFckIGHwLzasIFQkwVX4AfcgwVckAP.XT.LtHSMzPyMvPSN2LiM4biM1HyL0LSM...TAIUPMAP.BjFY.DPDEXTZrQWYxARLC8Vah0TZ3AfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfEEXTZrQWYxARLC8VahYTYkQlXgM1Z.XWXrUWY.D.FE.iK3DCMwPSNybSN2LCLxHCM1.SNyfC...UPRETS.Df.oQF.A3PAFkFazUlbfHCU4AWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.ADQAFkFazUlbfHSQtElXrUFY.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.A.QAFkFazUlbfHyP0Q2SlYF.1EFa0UF.AfQAv3hL0fyL2XyMzbyL1jyM1XiLyTyL0...PEjTA0D.AHPZjAP.STfQowFckIGHxHUYy8lag41XkAfcgwVckAP.WT.LtTCL3PiMyTiMwTyLzfCNwTSNwfC...UPRETS.Df.oQF.ALQAFkFazUlbfHyPu0lXDUFagkG.1EFa0UF.ATPAv3RM...TAIUPMAP.BjFY.DPDEXTZrQWYxAhLC8Vah0TZ3AfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfEEXTZrQWYxAhLC8VahYTYkQlXgM1Z.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AHQAN8VZyUFHFkFazUlbTkGbkAfcgwVckAP.CTPM...TAIUPMAP.BjFY.DPEE3zaoMWYfXTZrQWYxUjagIFakQF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.TTfSuk1bkAhQowFckI2P0Q2SlYF.1EFa0UF.AfQAv3xLwPiM2.SLzTSMwDiMxbSL4biL2...PEjTA0D.AHPZjAP.WTfSuk1bkAhQowFckImTkM2atElaiUF.1EFa0UF.AfQAv3hLzbyL0HCMyXSL3PCN3LSLwbiM3...PEjTA0D.AHPZjAP.WTfSuk1bkAhQowFckI2Pu0lXDUFagkG.1EFa0UF.ATPAv3RM...TAIUPMAP.BjFY.DPEE3zaoMWYfXTZrQWYxMzasIVSogG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.ZTfSuk1bkAhQowFckI2Pu0lXFUVYjIVXisF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.VTvTg0FbrUlbfXTZrQWYxARLTkGbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPFELUXsAGakIGHFkFazUlbfDSQtElXrUFY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AfQASEVavwVYxAhQowFckIGHwLTcz8jYlAfcgwVckAP.ET.LtTC...UPRETS.Df.oQF.ArQASEVavwVYxAhQowFckIGHwHUYy8lag41XkAfcgwVckAP.XT.LtDCLv.CLv.CLwPSNvDSL1DSL4LCN...TAIUPMAP.BjFY.DvFELUXsAGakIGHFkFazUlbfDyPu0lXDUFagkG.1EFa0UF.ATPAv3RM...TAIUPMAP.BjFY.DPFELUXsAGakIGHFkFazUlbfDyPu0lXMkFd.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A3QASEVavwVYxAhQowFckIGHwLzasIlQkUFYhE1XqAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfEELUXsAGakIGHFkFazUlbfHCU4AWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AjQASEVavwVYxAhQowFckIGHxTjagIFakQF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.XTvTg0FbrUlbfXTZrQWYxAhLCUGcOYlY.XWXrUWY.DPAE.iK0...PEjTA0D.AHPZjAP.aTvTg0FbrUlbfXTZrQWYxAhLRU1bu4VXtMVY.XWXrUWY.D.FE.iKw.CLv.CLv.SLzjCLwDiMwDSNyfC...UPRETS.Df.oQF.ArQASEVavwVYxAhQowFckIGHxLzasIFQkwVX4AfcgwVckAP.ET.LtTC...UPRETS.Df.oQF.AjQASEVavwVYxAhQowFckIGHxLzasIVSogG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.dTvTg0FbrUlbfXTZrQWYxAhLC8VahYTYkQlXgM1Z.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A3PADUFagkWQtElXrUFY.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.ArPADUFagkGSkYFc.XWXrUWY.DPFE.iKvPSN2DyM4bCLwjiLzLiLz.yL0XCM...TAIUPMAP.BjFY.D.CEPTYrEVdRk1YnQG.1EFa0UF.AnQAv3BLvPSN4.iLv.SN2byM2HCM2PiL3fSN...TAIUPMAP.BjFY.DfCEXTYkQlXgM1ZLUlYzAfcgwVckAP.XT.LtfSM1jCMzPCMwbSN0LCM4DiLw.SN...TAIUPMAP.BjFY.DvCEXTYkQlXgM1ZRk1YnQG.1EFa0UF.AfQAv3BN1.yL2LiL0fSM4.iM4fiLzHSL4...PEjTA0D.AHPZjAP.KT.SkYWYrwTYlQG.1EFa0UF.AfQAv3hLy.CN0jyL0PSLyfyL2PyLxfiMw...PEjTA0D.AHPZjAP.LT.SkYWYrIUZmgFc.XWXrUWY.D.FE.iK2DCNyDSM4TCN4biM2PSM1.SMzbC...UPRETS.Df.oQF.A7PACg1axU2bE4VXhwVYjAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DfCELDZuIWcyAxTvUVYjAfcgwVckAP.XT.LtDCLv.CLv.CLwPSNvDSL1DSL4LCN...TAIUPMAP.BjFY.DvCELDZuIWcyARPs8VctQG.1EFa0UF.ATPAv3RM...TAIUPMAP.BjFY.DfCELDZuIWcyAxUoQFcnAfcgwVckAP.XT.LtHCL0XCN0biMzTSMwDiMxbSL4byL...TAIUPMAP.BjFY.DfCELDZuIWcyABQkAGcnAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DvCEHUY1UlbhUjagIFakQF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.LTfTkYWYxIFHWUFc.XWXrUWY.D.FE.iKwPiLwPCMvjCN3byM4.iM2jSNyHC...UPRETS.Df.oQF.AHQARUlckImXf.kbkABQkwVX4AfcgwVckAP.XT.LtDiL2LCLvLSMwfSM3DyL4.yL3.SN...TAIUPMAP.BjFY.D.DEHUY1UlbhABQg0Fbo41Y.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AzPARUlckImXfLUZ5UF.1EFa0UF.AfQAv3xMzHSM2fSLzfCNzDCN0bSNw.SL1...PEjTA0D.AHPZjAP.KTPQQUjagIFakQF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.PTPQQAhQxUVb0UlaikGHw.fcgwVckAP.XT.LtDiM1XiM1XyMwXyLybiLvLSN2jSM...TAIUPMAP.BjFY.DvBETTTfbTXo4FHw.fcgwVckAP.CT.L...TAIUPMAP.BjFY.D.BETTTfDEHw.fcgwVckAP.XT.LtDSMv.CLv.CL0jiMvPiMzPyM2TCM...TAIUPMAP.BjFY.D.DETTTfXjbkEWck41X4AhL.XWXrUWY.DvEE.iKyLyLyLyLyPyLxXyMzPCL2jSM4...PEjTA0D.AHPZjAP.KTPQQAxQgklafHC.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.HTPQQARTfHC.1EFa0UF.AfQAv3RL0.CLv.CLvTSN1.CM1PCM2bSMz...PEjTA0D.AHPZjAP.PTPQQAhQxUVb0UlaikGHy.fcgwVckAP.XT.LtTSL2LSMyTSNzLCLyDyLwDCLyTiL...TAIUPMAP.BjFY.DvBETTTfbTXo4FHy.fcgwVckAP.YTPKv3RL2HSLyDSLxDSL0fSM4jCN0LSMx...PEjTA0D.AHPZjAP.HTPQQARTfLC.1EFa0UF.AfQAv3xLwHSNxjiM3jCN3PSL3TyM4DCLx...PEjTA0D.AHPZjAP.OT.SF8DHw.0arElboQWd.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A.QALYzSfDyUgYWYSgVXvUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.LT.SF8DHwvTY1UFa.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A.QALYzSfDiQxUVb0UlaikG.1EFa0UF.AXPAv3hL0...PEjTA0D.AHPZjAP.NT.SF8DHwPkboc1YkIG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.KT.SF8DHwXTXjUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.OT.SF8DHx.0arElboQWd.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A.QALYzSfHyUgYWYSgVXvUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.LT.SF8DHxvTY1UFa.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.A.QALYzSfHiQxUVb0UlaikG.1EFa0UF.AbPAv3RLxTC...UPRETS.Df.oQF.A3PALYzSfHCUxk1YmUlb.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.ArPALYzSfHiQgQVY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AfQAA0FbfTja1UFauAWYRUFbkEFcTkGbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.D.EEDTavARQtYWYr8FbkEDczE1XqAfcgwVckAP.YT.Lt.CNy.iL4TSL1.CMwHyM3fyL4DSLw...PEjTA0D.AHPZjAP.STPPsAGHE4lckw1avUFQkMVX4AfcgwVckAP.YT.Lt.CMzjCM3LSLyLCN0HCM3DCNzHCLz...PEjTA0D.AHPZjAP.UTPPsAGHE4lckw1avU1T0MGcgkla.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.ATQAA0FbfTja1UFauAWYRUFakE1bkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvDEDTavARQtYWYr8FbkwTY1UFa.XWXrUWY.D.FE.iKyDiM3PCLxjSLvHyLxTCMyjCM0LC...UPRETS.Df.oQF.ArQAA0FbfTja1UFauAWYPwVcis1SlYFSkYWYrAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DvFEDTavARQtYWYr8FbkAEa0M1ZOYlYWkFYzgF.1EFa0UF.AfQAv3RLv.CLv.CLvDCM4.SLwXSLwjyL3...PEjTA0D.AHPZjAP.VTPQtYWYr8FbkAhLRUFbkEFcTkGbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfDETja1UFauAWYfHSPzQWXisF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTPQtYWYr8FbkAhLDU1XgkG.1EFa0UF.AfQAv3RLwDCNzfCN2TCN3.iLzDyL4PCLz...PEjTA0D.AHPZjAP.STPQtYWYr8FbkAhLSU2bzEVZtAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvDETja1UFauAWYfHiTkwVYgMWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.ADQAE4lckw1avUFHxvTY1UFa.XWXrUWY.D.FE.iK0XCM4byL4TCLyfiMvPyMyXyLxfC...UPRETS.Df.oQF.AjQAE4lckw1avUFHx.Ea0M1ZOYlYLUlckwF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.YTPQtYWYr8FbkAhLPwVcis1SlY1UoQFcnAfcgwVckAP.XT.LtDCLv.CLv.CLwPSNvDSL1DSL4LCN...TAIUPMAP.BjFY.DfEETja1UFauAWYfLiTkAWYgQGU4AWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AHQAE4lckw1avUFHyDDczE1XqAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPDETja1UFauAWYfLCQkMVX4AfcgwVckAP.YT.Lt.yL4PSN1PSN1LSL4byMvfSLxjCN3...PEjTA0D.AHPZjAP.STPQtYWYr8FbkAxLSU2bzEVZtAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvDETja1UFauAWYfLiTkwVYgMWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.ADQAE4lckw1avUFHyvTY1UFa.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AjQAE4lckw1avUFHy.Ea0M1ZOYlYLUlckwF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.YTPQtYWYr8FbkAxLPwVcis1SlY1UoQFcnAfcgwVckAP.XT.LtDCLv.CLv.CLwPSNvDSL1DSL4LCN...TAIUPMAP.BjFY.DfEETja1UFauAWYfPiTkAWYgQGU4AWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AHQAE4lckw1avUFHzDDczE1XqAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPDETja1UFauAWYfPCQkMVX4AfcgwVckAP.XT.LtLiL3LiL0TyL4fiL2LCM1fCLwbiM...TAIUPMAP.BjFY.DvDETja1UFauAWYfPyT0MGcgkla.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.ALQAE4lckw1avUFHzHUYrUVXyUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTPQtYWYr8FbkABMLUlckwF.1EFa0UF.AfQAv3hLyfCN3fCN3jSM0DSL1HyMwjyMy...PEjTA0D.AHPZjAP.YTPQtYWYr8FbkABMPwVcis1SlYFSkYWYrAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DPFETja1UFauAWYfPCTrU2Xq8jYlcUZjQGZ.XWXrUWY.D.FE.iKw.CLv.CLv.SLzjCLwDiMwDSNyfC...UPRETS.Df.oQF.AXQAE4lckw1avUFH0HUYvUVXzQUdvUF.1EFa0UF.ALPAx...PEjTA0D.AHPZjAP.RTPQtYWYr8FbkARMAQGcgM1Z.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.ADQAE4lckw1avUFH0PTYiEVd.XWXrUWY.D.FE.iKyLSMybyLxfiLzLiL0TiMwTiLyPC...UPRETS.Df.oQF.ALQAE4lckw1avUFH0LUcyQWXo4F.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.STPQtYWYr8FbkARMRUFakE1bkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPDETja1UFauAWYfTCSkYWYrAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPFETja1UFauAWYfTCTrU2Xq8jYlwTY1UFa.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AjQAE4lckw1avUFH0.Ea0M1ZOYlYWkFYzgF.1EFa0UF.AfQAv3RLv.CLv.CLvDCM4.SLwXSLwjyL3...PEjTA0D.AHPZjAP.bTfQowFckIGHBw1aisFHC8lalk1Y0IWXzk1atAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DvCEjjavUGcfDCHz8FHFgE.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.STPRtAWczARLfP2afHUY1UlbhAfcgwVckAP.CT.L...TAIUPMAP.BjFY.D.DEjjavUGcfDCHz8FHDIWd.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A7PAI4Fb0QGHx.BcuAhQXAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvDEjjavUGcfHCHz8FHRUlckImX.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.A.QAI4Fb0QGHx.BcuABQxkG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.RTfQMAxPu4lYocVcxEFco8la.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AvPAF0DHDUFbzgFHAAfcgwVckAP.CT.L...TAIUPMAP.BjFY.D.CEXTSfPTYvQGZfHD.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.PTPQQAhQxUVb0UlaikGHz.fcgwVckAP.WT.LtXiM1XiM1XCN1TyLzfCNwTSNwfC...UPRETS.Df.oQF.ArPAEEEHGEVZtABM.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AfPAEEEHQABM.XWXrUWY.D.FE.iKx.CLv.CLv.iL4fCLxLiLxLCN2bC...UPRETS.Df.oQF.A.QAEEEHFIWYwUWYtMVdfTC.1EFa0UF.AfQAv3RNzHSMwXiL1biL4jiM0HCL4jiMw...PEjTA0D.AHPZjAP.KTPQQAxQgklafTC.1EFa0UF.AfQAv3RLxHSN0.yM4HyLwHiMxHCL2.yLw...PEjTA0D.AHPZjAP.HTPQQARTfTC.1EFa0UF.AjQAv3BL4bSNxjiM4LyM0fCM3byMvDCMwXC...UPRETS.Df.oQF.ALQAI4Fb0QGHw.BcuAxS0QGb0QG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.STPRtAWczAhLfP2af7TczAWczAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvDE7TczAWczAxYgklafP2afXDV.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AbQAOUGcvUGcfbVXo4FHz8FHRUlckImX.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.APQAOUGcvUGcfbVXo4FHz8FHDIWd.XWXrUWY.D.FE.iK3DCL3.yMxfyM1jyLvHyL1fSL1PC...UPRETS.Df.oQF.A3PAOMFcgYWYfLEZoYFc.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A.QARklam0zajUjagIFakQF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.OTfSuk1bkcUX1UlYuIWa.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.ALQABkFciIWcygVYxUjagIFakQF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.RTfPoQ2XxU2bnUlbfPjboYWY.XWXrUWY.DPFE.iKvDSLwDSLwDSLyfCLwTSN3TCM3fSN...TAIUPMAP.BjFY.DfDEHTZzMlb0MGZkIGHCIWcygF.1EFa0UF.AfQAv3hL2byLv.yL0bCNwfiMvLSMwTiMx...PEjTA0D.AHPZjAP.STfPoQ2XxU2bnUlbfHUYjU2XkAfcgwVckAP.XT.LtDyM4DiM1XSM4bSLxbSNwPCMxfyM...TAIUPMAP.BjFY.DPDEHTZzMlb0MGZkIGHT8lakAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DfDEHTZzMlb0MGZkIGHLUlckwF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.ST.QoMGcuIGco8laE4VXhwVYjAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DfDEPTZyQ2axQWZu4FHDIWZ1UF.1EFa0UF.AfQAv3hL0XyLyXCNvfiLvPiM0.CN2fSNw...PEjTA0D.AHPZjAP.QT.QoMGcuIGco8lafHTXyMG.1EFa0UF.AbQAv3xM0XSN3bCN1jyMyjSMyHCM2.yM...TAIUPMAP.BjFY.DPDEPTZyQ2axQWZu4FHT8lakAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DPDEPTZyQ2axQWZu4FHFUmd5AfcgwVckAP.XT.LtHCMxDCMz.iMyDSL0DSL4jyLz.CN...TAIUPMAP.BjFY.DPDEPTZyQ2axQWZu4FHBkFckAfcgwVckAP.XT.LtDyMwDCNvTiMwDCNzfCNyDSL2XCN...TAIUPMAP.BjFY.DfDEPTZyQ2axQWZu4FHLUlckwF.1EFa0UF.AfQAv3BMwPiMxXyMzbyL1jyM1XiLyTyL0...PIUQSMEL..P.C.0ao4Fc.Dv.XAP.CT.L.jE.ALPAv.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.CfE.AfQAv3RM0PSL1XiM2PiMwLSN0HiMyXyMx.PV.Dv.E.C.C8VYlYVZikVYtQG.AjQAs.iKzPiLzbyM3fSL4.CNzDiM2PCNvTC...0ao4Fc.Df.XAP.CTPL.jE.ALPAw...SQkTIsTQv...AH.TuklazAP.CfE.ALPAv.PV.Dv.E.C.C8VYlYVZikVYtQG.ALPAv...P8VZtQG.AH.V.Dv.EDC.YAP.CTPL...SIYDUv...AP.TuklazAP.CfE.ALPAv.PV.Dv.E.C.C8VYlYVZikVYtQG.AjQAs.iK0DyLxbCMyDiLvDSNyPCNwPCM0LC...0ao4Fc.Dv.XAP.XT.LtHCN4jSL0jyM3jCL3TyL3fSL3LiM.jE.ALPAv.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.CfE.AfQAv3RM4HCMyXSN1jiL3.iLzHSNwjSNx.PV.Dv.EDC.C8VYlYVZikVYtQG.ALPAv...P8VZtQG.AH.V.Dv.EDC.YAP.CTPL..fPE4DQv...AL.TuklazAP.CfE.APPAsDC.YAP.DTPKw.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.CfE.ALPAv.PV.Dv.E.C.C8VYlYVZikVYtQG.APPAs.C...0ao4Fc.Df.XAP.CTPL.jE.ALPAw...PIUQSMUL..P.B.0ao4Fc.Dv.XAP.CT.L.jE.ALPAv.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.BfE.ALPAw.PV.Dv.EDC..LEURkzREEC..Df.P8VZtQG.AL.V.Dv.E.C.YAP.CT.L.LzakYlYoMVZk4Fc.DPFEzBLtPiLzbyM3bSM4PyM4TiLxbCL0.CN...TuklazAP.BfE.ALPAw.PV.Dv.EDC..vTRFQUL..P.C.0ao4Fc.Dv.XAP.CT.L.jE.ALPAv.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.CfE.AfQAv3BM3LSL4LiL2fyLwHiM3LSLvTCM2.PV.Dv.E.C.C8VYlYVZikVYtQG.AfQAv3hLyjyLwXiLyjSN0LCLzDCL2XiM1...P8VZtQG.AH.V.Dv.EDC.YAP.CTPL..fPE4DQw...AL.TuklazAP.CfE.APPAsDC.YAP.CTPL.LzakYlYoMVZk4Fc.Dv.E.C...0ao4Fc.Dv.XAP.CT.L.jE.ALPAv.vPuUlYlk1XoUlazAP.DTPKv...P8VZtQG.AH.V.Dv.EDC.YAP.CTPL...TRUzTSIC..Df.P8VZtQG.AL.V.Dv.E.C.YAP.CT.L.LzakYlYoMVZk4Fc.Dv.E.C...0ao4Fc.Df.XAP.CTPL.jE.ALPAw...SQkTIsTQx...AH.TuklazAP.CfE.ALPAv.PV.Dv.E.C.C8VYlYVZikVYtQG.ALPAv...P8VZtQG.AH.V.Dv.EDC.YAP.CTPL...SIYDUx...AH.TuklazAP.CfE.ALPAv.PV.Dv.E.C.C8VYlYVZikVYtQG.ALPAv...P8VZtQG.AH.V.Dv.EDC.YAP.CTPL..fPE4DQx...AL.TuklazAP.CfE.APPAsDC.YAP.DTPKw.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.CfE.ALPAv.PV.Dv.E.C.C8VYlYVZikVYtQG.APPAs.C...0ao4Fc.Df.XAP.CTPL.jE.ALPAw...PIUQSM0L..P.B.0ao4Fc.Dv.XAP.CT.L.jE.ALPAv.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.BfE.ALPAw.PV.Dv.EDC..LEURkzREMC..Df.P8VZtQG.AL.V.Dv.E.C.YAP.CT.L.LzakYlYoMVZk4Fc.Dv.E.C...0ao4Fc.Df.XAP.CTPL.jE.ALPAw...LkjQTMC..Df.P8VZtQG.AL.V.Dv.E.C.YAP.CT.L.LzakYlYoMVZk4Fc.Dv.E.C...0ao4Fc.Df.XAP.CTPL.jE.ALPAw...BUjSDMC..Dv.P8VZtQG.AL.V.D.AEzRL.jE.APPAsDC.C8VYlYVZikVYtQG.ALPAv...P8VZtQG.AL.V.Dv.E.C.YAP.CT.L.LzakYlYoMVZk4Fc.D.AEzBL...TuklazAP.BfE.ALPAw.PV.Dv.EDC...UPRETS.Df.oQF.AvPAV8VZiUFHM8FYkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfDEHTZzMlb0MGZkIGHBwVYtQF.1EFa0UF.AfQAv3BNzXSLybSL1XCLxLiL0PyL4PSMy...PEjTA0D.AHPZjAP.RT.QoMGcuIGco8lafHDak4FY.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AnQAA0FbfTja1UFauAWYAQGcgM1ZfLEauAWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AjQAA0FbfTja1UFauAWYDU1XgkGHSw1avUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.aTPPsAGHE4lckw1avUlTkwVYgMWYfLEauAWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AfQAE4lckw1avUFHxDDczE1XqAxTr8FbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvEETja1UFauAWYfHCQkMVX4AxTr8FbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPFETja1UFauAWYfHiTkwVYgMWYfLEauAWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AfQAE4lckw1avUFHyDDczE1XqAxTr8FbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvEETja1UFauAWYfLCQkMVX4AxTr8FbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPFETja1UFauAWYfLiTkwVYgMWYfLEauAWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AfQAE4lckw1avUFHzDDczE1XqAxTr8FbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvEETja1UFauAWYfPCQkMVX4AxTr8FbkAfcgwVckAP.XTPKv3hM1XiM1XiM3XSMyPCN3DSM4DCN...TAIUPMAP.BjFY.DPFETja1UFauAWYfPiTkwVYgMWYfLEauAWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AfQAE4lckw1avUFH0DDczE1XqAxTr8FbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvEETja1UFauAWYfTCQkMVX4AxTr8FbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPFETja1UFauAWYfTiTkwVYgMWYfLEauAWY.XWXrUWY.Dv.E.C...UPRETS.DP.oQF.ArPATIWXtMGbuMWY...TAIUPMAP.AjFY.DvBEXTZtUFHTUmakA..PEjTA0D.AHPZjAP.XTPQlYVYiQGHM8FY0wVXzk1atARSuQVY.XWXrUWY.Dv.ELC...UPRETS.Df.oQF.AzPAPIWYyUFcLUlckwF.1EFa0UF.AfQAv3xLvTSNwXCN2TiMv.CNwPCNwjyLz...KUTVTIUPCsTRNcjL....KUTVTIUPCsTRNczL....KUTVTIUPCsTRNcDM.DP.s8FYkAP.CTfL.Dv.N8DQEAP.B.WZzMFZ.Dv.E.C.g01a04Fc.Dv.E.C..3zSDUD.AH.boQ2XnAP.YT.Lt.iLxfSMxPiLxXiM4TiL4jSLzfSM1.PXs8VctQG.ALPAv...N8DQEAP.B.WZzMFZ.Dv.EDC.g01a04Fc.Dv.EDC..HURSUTVv...AP.TuklazAP.CfE.APPAsDC.YAP.DTPKw.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.CfE.ALPAv.PV.Dv.E.C.C8VYlYVZikVYtQG.ALPAv...P8VZtQG.AL.V.D.FE.iK0TCM1HSL3DSM1fSLzTyM0DSN0LC.YAP.CTPL.LzakYlYoMVZk4Fc.Dv.E.C...0ao4Fc.Df.XAP.CTPL.jE.ALPAw...RkzTEkUL....RkzTEkkL....RkzTEk0L....ME1Xx8FUuEDaoE1bSQWXzUF..DPAMEDTPkjSGAP.BzTXiI2aIQD.AjPAME1Xx8lNv.PPrkVXykDQ.DPDEHURSUDHLUlYzAhQgQVYxA..MEDTPkjSGAP.BzTXiI2aIQD.AjPAME1Xx8lNw.PPrkVXykDQ.DvDEHURSUDHMkFYjwVYfXTXjUlb..PSAAETI4zQ.Df.ME1Xx8VRDAP.ITPSgMlbuoiL.DDaoE1bIQD.AHQARkzTEAhTocFZzAhQgQVYxA..MEDTPkjSGAP.BzTXiI2aIQD.AjPAME1Xx8lNy.PPrkVXykDQ.DPEEHURSUDHPEFYffzaxkldu4FcgwF..zTPPAURNcD.AHPSgMlbukDQ.DPBEzTXiI2a5PC.AwVZgMWRDAP.STfTIMUQf.UXjAhUkIGcoMVXrA..ME1Xx8lUgwVckMG..DPAME1Xx8lNv.P.AXUXrUWY.Dv.E.C..zTXiI2a5DC.ADfUgwVckAP.CT.L..PSgMlbuoiL.DP.VEFa0UF.ALPAv...ME1Xx8lNy.P.AXUXrUWY.Dv.E.C..zTXiI2a5PC.ADfUgwVckAP.CT.L..vTA0DTLUjT..P.BzzajUGak8EL..P.AjjayQmb00VYtQG.AHPUUkDQ.DfIETCMhEyMwXVLsH1Lx.SKzDlXh0RXw.SLsfyM0.CMybiYjEFLhAfSg0VY.DvEEDDcrElazk1bfLEcxklamABTrU2XqA..M8FY0wVYeEC..DP.I41bzIWcsUlazAP.BTUUIQD.AXRA0PiXwbSLlESKhMiLvzBMgIlXsDVLvDSK3bSMvPyL2XFYgAiX.3TXsUF.AbQAAQGag4FcoMGHSQmbo41Yf.Ea0M1Z...TAIUPMAP.AjFY.DPDELUXsAGakIGHw.kbkMWYzA..PEjTA0D.ADPZjAP.QTvTg0FbrUlbfHCTxU1bkQG...UPRETS.Df.oQF.ATQADUFagkmPP0zT441XE4VXhwVYjAfcgwVckAP.IP.............TAIUPMAP.BjFY.DvEEvjQOARLBAUSfLUdtMFHE4VXhwVYjAfcgwVckAP.IP.............TAIUPMAP.BjFY.DvEEvjQOAhLBAUSfLUdtMFHE4VXhwVYjAfcgwVckAP.IP.............TAIUPMAP.AjFY.DfGEDTavARQtYWYr8FbkIDTMAxT441XfTjagIFakQF...UPRETS.DP.oQF.AvQAE4lckw1avUFHxHDTMAxT441XfTjagIFakQF...UPRETS.DP.oQF.AvQAE4lckw1avUFHyHDTMAxT441XfTjagIFakQF...UPRETS.DP.oQF.AvQAE4lckw1avUFHzHDTMAxT441XfTjagIFakQF...UPRETS.DP.oQF.AvQAE4lckw1avUFH0HDTMAxT441XfTjagIFakQF..P0a0MFZDkVak41bo8layMzatYVZmUmbgQWZu4F..DP.SUlaykFcoYWZzkVYyA..ATvTzIWZqUF.ADfUgwVckAP.CTPL..vQrkFYkAP.AXUXrUWY.Dv.EDC..LEaoQVY.DP.VEFa0UF.ALPAw...PIWYyMG.ADfUgwVckAP.XT.LtjCNzHSMwjyM1.SLyDCNyTSNybSM...SoYFc.DP.VEFa0UF.ALPAw...PEjTA0D.ADPZjAP.oTvTrkFYkARPhM2arUGckABUuAhTkwVXzklckARSuQVYfTjagIFakQF...UPRETS.DP.oQF.A7PALIESo41ZE4VXhwVYjA..PEjTA0D.ADPZjAP.RT.TxU1bkQGHP8Fa4AGZu4Vd...TAIUPMAP.AjFY.DvGEzzat8FHV8VZiUFHPI2aiU1byklamARQtElXrUFY...TAIUPMAP.AjFY.DvFEzzat8FHV8VZiUFHPI2aiU1byklamABTg4F..zTXiI2aT81Pu4Fcx8FaMEFbvklamMG...PSPUzPu4lYocVcxEFco8la..P.JzDTEUjagIFakQF.ADfUgwVckAP.AH..MAUQME1bzUlbCgVXt4VYrAP.AXUXrUWY.DPAAD......MAUQNUWaN8FckMDZg4lakw1b.DP.VEFa0UF.ATP.O.....PSPUDTkImSuQWYPIjTg41YkAP.AXUXrUWY.DPAA.C.....MAUQME1bzUlbPIjTg41YkAP.AXUXrUWY.DPAAH......LU1YgMVdM8FYk0TcrQWZE4VXhwVYjAP.AXUXrUWY.DP.B..SkcVXikWSuQVYSklamwVY.DP.VEFa0UF.ATP.A......SkcVXikWSuQVYFklbyQ2PnElatUFa.DP.VEFa0UF.ATP.A......SkcVXikWSuQVYLE1bzMDZg4lakwF.ADfUgwVckAP.ED.D.....vTYmE1X40zajUFToQ2XnITYtQlTg41YkAP.AXUXrUWY.DPAA.C.....RkzTEAUXtUFaC8lalk1Y0IWXzk1atA..Av.akYFcCMD.ADfUgwVckAP.EDvZ.....zVZjQFakMzP.DP.VEFa0UF.ATP.sA....fbocFZzMzP.DP.VEFa0UF.ATP.uA.....akYFcP8zT.DP.VEFa0UF.Aj.A............skFYjwVYP8zT.DP.VEFa0UF.Aj.A............xk1YnQGTOME.ADfUgwVckAP.IP.............cxE1XqAWXjg0PCAP.AXUXrUWY.DPAADG.....zIWXisFbgQVVCMD.ADfUgwVckAP.EDfb.....PmbgM1ZvEFYZMzP.DP.VEFa0UF.ATP.yA.....cxE1XqAWXjgETOME.ADfUgwVckAP.IP.............cxE1XqAWXjkETOME.ADfUgwVckAP.IP.............cxE1XqAWXjoETOME.ADfUgwVckAP.IP............."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Equator",
									"origin" : "Equator.vst",
									"type" : "VST",
									"subtype" : "Instrument",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "Equator.vst",
										"plugindisplayname" : "Equator",
										"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/Equator.vst",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "27377.CMlaKA....fQPMDZ....ATTbzIG...P2....A........................................nVsP.vQ+6GA..PuB..............................L1LSL2PlMwPiL0XCM4byMhQiMyjSLz.SMlcCNzPCN3.PQQUUPT8jTeAkTEMUQTAP.CXWYxMWZu4F.AbPAw3RNt.C.0UWZjAP.hT.L1LSL2PlMwPiL0XCM4byMhQiMyjSLz.SMlcCNzPCN3..cgc1b.DvmETjYlU1XzwBQocVZzEFarLzasAGakgGKGwVZzMFZrvTX4UlbkQFKM8Fco8lar.UYxMVcyMWZ1UFKAQWauMGbnUlboMFKBUmd5kGKC8VavwVY3wBQgI2ZrPTYzUmakQFKDk1by8lag4FcrPTZyQ2axQWYjwRSk0lXxElakwRSkQWXrwVZiwhSuk1b4whTkM2atElazwhToMFZrHURSUD.BDR.M8DQMEDURkDV..P.0MzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A.QAA0FbfTja1UFauAWY5.C.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.D.DEDTavARQtYWYr8FbkoSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.PTPPsAGHE4lckw1avUlNx.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A.QAA0FbfTja1UFauAWY5LC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.D.DEDTavARQtYWYr8FbkoSM.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.PTPPsAGHE4lckw1avUlN1.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.ATQAOM2XowFagQ2axAxPuElbyUlNw.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.ATQAOM2XowFagQ2axAxPuElbyUlNx.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.ALQAOM2XowFagQ2axAhQo4VY5.C.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DvDE7zbikFarEFcuIGHFklakoSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.STvSyMVZrwVXz8lbfXTZtUlNx.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.AHQASEVavwVYxAxPuElbyUlNv.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A.QASEVavwVYxAhQo4VY5.C.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfDELUXsAGakIGHC8VXxMWY5DC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.D.DELUXsAGakIGHFklakoSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.UTvSyMVZrwVXz8lbfLzagI2bkoCL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkAhL5.C.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfHiNw.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFHxniL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkAhL5LC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfHiNz.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFHxnSM.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkAhL5XC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfLiNv.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFHynSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkAxL5HC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfLiNy.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFHynCM.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkAxL5TC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfLiN1.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFHznCL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkABM5DC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfPiNx.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFHznyL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkABM5PC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfPiN0.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFHzniM.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.aTvSyMVZrwVXz8lbfDCHMkFdkIGHGEVZtoCL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.aTvSyMVZrwVXz8lbfDCHMkFdkIGHGEVZtoSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.aTvSyMVZrwVXz8lbfDCHMkFdkIGHGEVZtoiL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.aTvSyMVZrwVXz8lbfDCHMkFdkIGHGEVZtoyL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.aTvSyMVZrwVXz8lbfDCHMkFdkIGHGEVZtoCM.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.IT.SF8DHwnCL.bWYocFZzAP.FT.LtHSM.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.IT.SF8DHwnSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.IT.SF8DHwniL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkARM5.C.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfTiNw.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFH0niL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkARM5LC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPDE3zafzzajUGagQWZu4lNv..YkMGc.DfCETja1UFauAWYfTiNz.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ADQAN8FHM8FY0wVXzk1atoCL.PVYyQG.A3PAE4lckw1avUFH0nSM.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.QTfSuARSuQVcrEFco8la5.C.jU1bzAP.NTPQtYWYr8FbkARM5XC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.D.CELEcxk1ZkARL5.C.jU1bzAP.PTPPsAGHE4lckw1avUlNz.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AvPASQmbosVYfDiNv..YkMGc.DvDEXTZrQWYxAhLfLTcz8lYloCL.bWYocFZzAP.XT.LtDSLwDSLwDSLwjyL3jSMyLSN4XiM.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.LTvTzIWZqUFHwnCL.PVYyQG.A.QAA0FbfTja1UFauAWY5.C.2UVZmgFc.DPFEzBLtLCLv.CLv.SLwjiLvjiL3jSM0.CN.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.LTvTzIWZqUFHxnCL.PVYyQG.ArQAOM2XowFagQ2axARLfzTZ3UlbfbTXo4lNz.vckk1YnQG.AbQAv3hL3fCN3fSNvDCM2HCL4DiM2PCN.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.JT.SoYFcfDiNv..YkMGc.D.FEPTYrEVdfXTYkQlXgM1ZfHUZmgFc5.C.2UVZmgFc.D.AEzRL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.JT.SoYFcfDiNv..YkMGc.DvEEPTYrEVdfXTYkQlXgM1ZfvTYlQmNv.vckk1YnQG.APPAsDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DfBEvTZlQGHxnCL.PVYyQG.A3PAE4lckw1avUFHznyL.bWYocFZzAP.XT.LtPyM2byM2byM4DCLxLiL0PyL4PSM.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.JT.SoYFcfHiNv..YkMGc.DfCEXTSfPTYvQGZfHjNv.vckk1YnQG.AfQAv3RM1XiM1XyMxHiL4biM1fCM0bCLy.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AnPALklYzAhL5.C.jU1bzAP.STfQowFckIGHx.xP0Q2alYlNv.vckk1YnQG.AfQAv3hLyLyLyLyLyPyLxXyMzPCL2jSM4.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AnPALklYzAhL5.C.jU1bzAP.NTfQMABQkAGcnARP5.C.2UVZmgFc.D.FE.iKxbyM2byM2jSLvHyLxTCMyjCM0LC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DfBEvTZlQGHxnCL.PVYyQG.A3PAE4lckw1avUFHynyL.bWYocFZzAP.XT.LtHyLyLyLyLyLzLiL1bCMz.yM4TSN.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KTvQrkFYkARL5.C.jU1bzAP.UTvSyMVZrwVXz8lbfLzagI2bkoiL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KTvQrkFYkARL5.C.jU1bzAP.RTvTg0FbrUlbfLzagI2bkoCL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KTvQrkFYkARL5.C.jU1bzAP.RTvTg0FbrUlbfLzagI2bkoSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KTvQrkFYkARL5.C.jU1bzAP.PTPPsAGHE4lckw1avUlNx.vckk1YnQG.AfQAv3RNwDSLwDSLwXCMvjyLvDyM0bCNw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPAGwVZjUFHwnCL.PVYyQG.ATQAOM2XowFagQ2axAxPuElbyUlNw.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPAGwVZjUFHwnCL.PVYyQG.A3PAE4lckw1avUFHxniL.bWYocFZzAP.DTPKw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPAGwVZjUFHwnCL.PVYyQG.A.QAA0FbfTja1UFauAWY5PC.2UVZmgFc.DPFEzBLtDyLyLyLyLCMvHCN2HCL3TSM2DyL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KTvQrkFYkARL5.C.jU1bzAP.NTPQtYWYr8FbkAhL5PC.2UVZmgFc.DfFEzBLt.yM2byM2bCNvTSNxPCMwTSM3fyL3.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPAGwVZjUFHwnCL.PVYyQG.APQAOM2XowFagQ2axABSkYWYroCL.bWYocFZzAP.YTPKv3hL0TSM0TSM2.SLxTSM2jCNyLSN3.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPAGwVZjUFHxnCL.PVYyQG.A3PAE4lckw1avUFH0nSL.bWYocFZzAP.XT.LtTiLxHiLxHiLvfSN2XyMzTiMvTSM.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KT.TxU1byARL5.C.jU1bzAP.PTPPsAGHE4lckw1avUlNx.vckk1YnQG.AfQAv3xM2byM2byM4DCLxLiL0PyL4PSMy.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPAPIWYyMGHwnCL.PVYyQG.ATQAFkFazUlbfDCHC8VahARSogmNv.vckk1YnQG.AfQAv3RL2byM2byM3HCL3HSM0biM2fiLx.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPAPIWYyMGHwnCL.PVYyQG.AbQAN8VZyUFHFkFazUlbfLTcz8lYloCL.bWYocFZzAP.XT.LtbiM1XiM1XSMvbyMx.SNzbiL1TiM.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KT.TxU1byARL5.C.jU1bzAP.NTPQtYWYr8FbkABM5HC.2UVZmgFc.D.FE.iK1PCMzPCMzXSM1LyMx.yMvLSLxTC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DvBE.kbkM2bfDiNv..YkMGc.DPEE7zbikFarEFcuIGHC8VXxMWY5.C.2UVZmgFc.D.AEzRL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.KTvTrkFYkARL5.C.jU1bzAP.NTPQtYWYr8FbkARM5PC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DvBELEaoQVYfDiNv..YkMGc.DfCETja1UFauAWYfTiNw.vckk1YnQG.AfQAs.iKyLyLyLyLyPyLxXyMzPCL2jSM4.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPASwVZjUFHwnCL.PVYyQG.APQAOM2XowFagQ2axABSkYWYroCL.bWYocFZzAP.YTPKv3RL0TSM0TSM1DSL3PCN3LSLwbiM3.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPASwVZjUFHwnCL.PVYyQG.APQAOM2XowFagQ2axABSkYWYroSL.bWYocFZzAP.YTPKv3hL0TSM0TSM2.SLxTSM2jCNyLSN3.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPASwVZjUFHwnCL.PVYyQG.APQAOM2XowFagQ2axABSkYWYroiL.bWYocFZzAP.YTPKv3RL1XiM1XiM2DiMyLyMx.yL4bSN0.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.ArPASwVZjUFHwnCL.PVYyQG.A.QAA0FbfTja1UFauAWY5PC.2UVZmgFc.DPFEzBLtPSM0TSM0TSM3HCLzXSMvfyM3jSL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.ITPSgMlbuoCM.PVYyQG.A3PAE4lckw1avUFHxniL.bWYocFZzAP.XT.LtTyLyLyLyLCLwTCMzDCN4PSMyDiL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.ITPSgMlbuoCM.PVYyQG.ATQAOM2XowFagQ2axAxPuElbyUlNv.vckk1YnQG.APPAsDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPBEzTXiI2a5.C.jU1bzAP.PTPPsAGHE4lckw1avUlNv.vckk1YnQG.AfQAv3RMxHiLxHiLx.CN4biM2PSM1.SM0.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNv..YkMGc.DfCETja1UFauAWYfHiNv.vckk1YnQG.AfQAv3RM1XiM1XiM1HiM4LCLxLiM3DiMz.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNv..YkMGc.DfCETja1UFauAWYfLiNv.vckk1YnQG.AfQAv3RL1XiM1XiM2DiMyLyMx.yL4bSN0.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNy..YkMGc.D.FEPTYrEVdfXTYkQlXgM1ZfHUZmgFc5.C.2UVZmgFc.DPFEzBLtfCMzPCMzPSMybSL1HyM3.yM1DyM.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.ITPSgMlbuoyL.PVYyQG.AbQADUFagkGHFUVYjIVXisFHLUlYzoCL.bWYocFZzAP.DTPKw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNy..YkMGc.D.EEPTYrEVdfvTY1UFafvTYlQmNv.vckk1YnQG.AfQAv3RL0TSM0TSM1DSL3PCN3LSLwbiM3.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNy..YkMGc.DPEEHTZzMlb0MGZkIGHRUFY0MVY5.C.2UVZmgFc.D.FE.iK2XiM1XiM1TCL2biLvjCM2HiM0XC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPBEzTXiI2a5DC.jU1bzAP.ST.QkwVX4ABUo0VYfvTYlQmNv.vckk1YnQG.AfQAv3BMv.CLv.CLvTSN1.CM1PCM2bSMz.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNw..YkMGc.D.EEPTYrEVdfPUZsUFHRk1YnQmNv.vckk1YnQG.AfQAv3xL2byM2byM3TCL1HyM3jSNwXSN4.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNw..YkMGc.DvEEPTYrEVdfXTYkQlXgM1ZfvTYlQmNv.vckk1YnQG.AjQAs.iKx.CLv.CLv.iL4fCLxLiLxLCN2bC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPBEzTXiI2a5DC.jU1bzAP.XT.QkwVX4AhQkUFYhE1XqAhTocFZzoCL.bWYocFZzAP.YTPKv3hLxHiLxHiLxLCN2bSNvXyM4jyLx.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNz..YkMGc.DPEEXTZrQWYxARLfLzasIFHMkFd5.C.2UVZmgFc.D.FE.iK1DSLwDSLw.CMzfCNybiL3.iL2LC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPBEzTXiI2a5PC.jU1bzAP.WTfQowFckIGHw.xPu0lXfPTYrEVd5.C.2UVZmgFc.D.FEzBLtDCN3fCN3fSNxTyLwLSNzjSM3TC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPBEzTXiI2a5HC.jU1bzAP.IT.SF8DHwnSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.ITPSgMlbuoiL.PVYyQG.ATQABkFciIWcygVYxAhTkQVciUlNv.vckk1YnQG.AfQAv3RLyLyLyLyLz.iL3biLvfSM0bSLy.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNx..YkMGc.DfCELDZuIWcyAxUkQmNv.vckk1YnQG.AbQAv3BN2byM2byM0TiL1.CM1bSMxjyL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.ITPSgMlbuoiL.PVYyQG.A.QACg1axU2bfLEbkUFY5.C.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPBEzTXiI2a5HC.jU1bzAP.PTvPn8lb0MGHWkFYzglNv.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.AjPAME1Xx8lNx..YkMGc.DvCEHUY1UlbhAxTooWY5.C.2UVZmgFc.D.FE.iKwbyM2byM2fiLvfiL0TyM1bCNxHC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DPBEzTXiI2a5HC.jU1bzAP.OTfTkYWYxIFHDEVavoCL.bWYocFZzAP.XTPKv3BN2byM2byM0TiL1.CM1bSMxjyL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.ITPSgMlbuoiL.PVYyQG.A3PARUlckImXfbUYzoCL.bWYocFZzAP.XT.LtTyLyLyLyLCLwTCMzDCN4PSMyDiL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.PTPPsAGHE4lckw1avUlNv..YkMGc.D.EE7zbikFarEFcuIGHLUlckwlNw.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.A.QAA0FbfTja1UFauAWY5.C.jU1bzAP.QTvTg0FbrUlbfvTY1UFa5.C.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.D.DEDTavARQtYWYr8FbkoCL.PVYyQG.ADQASEVavwVYxABSkYWYroSL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.PTPPsAGHE4lckw1avUlNv..YkMGc.D.EE7zbikFarEFcuIGHLUlckwlNv.vckk1YnQG.AfQAv3RNwDyMwfyMxXSL0fSLzHCL3jCNz.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.A3PAE4lckw1avUFHxnCL.PVYyQG.A7PAN8VZyUFHLUlckwlNv.vckk1YnQG.AfQAv3RNvHCM2LSN3XSLzfCNyPiLxfSMx.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.A3PAE4lckw1avUFHynCL.PVYyQG.ALQAFkFazUlbfHCHCUGcuYlY5.C.2UVZmgFc.D.FE.iKyDSLwDSLwHiLyXSN2XiMxLSMyTC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DfCETja1UFauAWYfPiNv..YkMGc.D.EE7zbikFarEFcuIGHLUlckwlNx.vckk1YnQG.AfQAv3BMv.CLv.CLvTSN1.CM1PCM2bSMz.PagAGbo41Y.Dv.E.C..LzSN4TQCQURO4D.APvbuUmbiUF.A3PAE4lckw1avUFH0nCL.PVYyQG.APQAOM2XowFagQ2axABSkYWYroiL.bWYocFZzAP.CTPL.zVXvAWZtcF.ALPAv...C8jSNUzPTkzSNAP.DL2a0I2XkAP.NTPQtYWYr8FbkARM5.C.jU1bzAP.TTvSyMVZrwVXz8lbfvTY1UFa5DC.2UVZmgFc.Dv.EDC.sEFbvklamAP.CT.L..vPO4jSEMDUI8jS.D.Ay8VcxMVY.DfCETja1UFauAWYfTiNv..YkMGc.D.EE7zbikFarEFcuIGHLUlckwlNv.vckk1YnQG.ALPAw.PagAGbo41Y.Dv.E.C..rTQYQkTAMzRI4zQ....PEjTA0D.AHPZjAP.LTvSSMDHwvTY1UFa.XWXrUWY.D.FE.iK4DSL2DCN2HiMwTCNwPiLvfSN3PC...UPRETS.Df.oQF.AnPAOM0PfDCTg4F.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.OTvSSMDHwXTZrQWYxARL.XWXrUWY.DvEE.iKzTSM2HSNwTiM2LiL0TSNx.CMw...PEjTA0D.AHPZjAP.OTvSSMDHwXTZrQWYxAhL.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AjPAOM0PfDiQXAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPCE7zTCARLRUlckImX.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AnPAOM0PfDCQxkG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.OTvSSMDHwbUX1UlYuIWa.XWXrUWY.Dv.EHC...UPRETS.Df.oQF.A3PAOM0PfDSQtElXrUFY.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AzPAOM0PfDyPuElbyUF.1EFa0UF.AfQAv3BM4XCLvXSN1TiMybiLvbCLyDiL0...PEjTA0D.AHPZjAP.KTvSSMDHwXTZtUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTvSSMDHw.UcrMWYWkFYzgF.1EFa0UF.AXPAv3hL0...PEjTA0D.AHPZjAP.LTvSSMDHxvTY1UFa.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AnPAOM0PfHCTg4F.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.OTvSSMDHxXTZrQWYxARL.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A7PAOM0PfHiQowFckIGHx.fcgwVckAP.CT.L...TAIUPMAP.BjFY.DPBE7zTCAhLFgE.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.MTvSSMDHxHUY1UlbhAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfBE7zTCAhLDIWd.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A7PAOM0PfHyUgYWYl8lbsAfcgwVckAP.CTfL...TAIUPMAP.BjFY.DfCE7zTCAhLE4VXhwVYjAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DPCE7zTCAhLC8VXxMWY.XWXrUWY.D.FE.iKzjyLz.iL4TyM4DiMxTSN2XSM1HC...UPRETS.Df.oQF.ArPAOM0PfHiQo4VY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.ADQAOM0PfHCT0w1bkcUZjQGZ.XWXrUWY.DfAE.iKxTC...UPRETS.Df.oQF.AvPAOM0PfLCSkYWYrAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DfBE7zTCAxLPEla.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A7PAOM0PfLiQowFckIGHw.fcgwVckAP.CTPL...TAIUPMAP.BjFY.DvCE7zTCAxLFkFazUlbfHC.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.ITvSSMDHyXDV.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AzPAOM0PfLiTkYWYxIF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.JTvSSMDHyPjb4AfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvCE7zTCAxLWElckY1ax0F.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.NTvSSMDHyTjagIFakQF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.MTvSSMDHyLzagI2bkAfcgwVckAP.YTPKv3hL0jCM1DCNx.SLxTSM2jCNyLSN3...PEjTA0D.AHPZjAP.KTvSSMDHyXTZtUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTvSSMDHy.UcrMWYWkFYzgF.1EFa0UF.AXPAv3hL0...PEjTA0D.AHPZjAP.KTfQMUjagIFakQF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.QTfTo41YM8FYFkFazUlbfDC.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTfTo41YM8FYFkFazUlbfHC.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.KTfTo41YM8FYFgE.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.OTfTo41YM8FYRUlckImX.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AvPARklam0zajQjb4AfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfDELUXsAGakIGHwTjagIFakQF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.PTvTg0FbrUlbfDCSkYWYrAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DfCELUXsAGakIGHw.UXtAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPDELUXsAGakIGHw7jYlMWYzAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvDELUXsAGakIGHwXTZrQWYxARL.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.ALQASEVavwVYxARLFkFazUlbfHC.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.MTvTg0FbrUlbfDiQXAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPDELUXsAGakIGHwHUY1UlbhAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfCELUXsAGakIGHwPjb4AfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPDELUXsAGakIGHwLzagI2bkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvCELUXsAGakIGHwXTZtUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.RTvTg0FbrUlbfHSQtElXrUFY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A.QASEVavwVYxAhLLUlckwF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.NTvTg0FbrUlbfHCTg4F.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTvTg0FbrUlbfHySlY1bkQG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.STvTg0FbrUlbfHiQowFckIGHw.fcgwVckAP.CTPL...TAIUPMAP.BjFY.DvDELUXsAGakIGHxXTZrQWYxAhL.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AzPASEVavwVYxAhLFgE.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTvTg0FbrUlbfHiTkYWYxIF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.NTvTg0FbrUlbfHCQxkG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTvTg0FbrUlbfHyPuElbyUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.OTvTg0FbrUlbfHiQo4VY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A3PAN8VZyUVQtElXrUFY.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AvPAN8VZyU1UoQFcnAfcgwVckAP.CT.L...TAIUPMAP.BjFY.D.CE3zaoMWYLUlckwF.1EFa0UF.AfQAv3RNvHCM2LSN3XSLzfCNyPiLxfSMx...PEjTA0D.AHPZjAP.OTfSuk1bkYTZrQWYxARL.XWXrUWY.D.FE.iK2LCM3TiLzLyLx.CM1TCL3bCN4DC...UPRETS.Df.oQF.A7PAN8VZyUlQowFckIGHx.fcgwVckAP.CTPL...TAIUPMAP.BjFY.DPBE3zaoMWYFgE.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.MTfSuk1bkIUY1UlbhAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfBE3zaoMWYDIWd.XWXrUWY.D.FE.iK0DSL2XiLwPiLwfSLyjiMzfCMyfC...UPRETS.Df.oQF.A3PAFkFazUlbfDCU4AWY.XWXrUWY.Dv.EXC...UPRETS.Df.oQF.ADQAFkFazUlbfDSQtElXrUFY.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.A.QAFkFazUlbfDyP0Q2SlYF.1EFa0UF.AfQAv3RL0LyMyHiM0bCMyHSM0XSL0HyLz...PEjTA0D.AHPZjAP.STfQowFckIGHwHUYy8lag41XkAfcgwVckAP.YT.Lt.CN2XyMyLiL3fSL1fSNvbSL1TSMy...PEjTA0D.AHPZjAP.STfQowFckIGHwLzasIFQkwVX4AfcgwVckAP.XT.LtHSMzPyMvPSN2LiM4biM1HyL0LSM...TAIUPMAP.BjFY.DPDEXTZrQWYxARLC8Vah0TZ3AfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfEEXTZrQWYxARLC8VahYTYkQlXgM1Z.XWXrUWY.D.FE.iK3DCMwPSNybSN2LCLxHCM1.SNyfC...UPRETS.Df.oQF.A3PAFkFazUlbfHCU4AWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.ADQAFkFazUlbfHSQtElXrUFY.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.A.QAFkFazUlbfHyP0Q2SlYF.1EFa0UF.AfQAv3hL0fyL2XyMzbyL1jyM1XiLyTyL0...PEjTA0D.AHPZjAP.STfQowFckIGHxHUYy8lag41XkAfcgwVckAP.WT.LtTCL3PiMyTiMwTyLzfCNwTSNwfC...UPRETS.Df.oQF.ALQAFkFazUlbfHyPu0lXDUFagkG.1EFa0UF.ATPAv3RM...TAIUPMAP.BjFY.DPDEXTZrQWYxAhLC8Vah0TZ3AfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfEEXTZrQWYxAhLC8VahYTYkQlXgM1Z.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AHQAN8VZyUFHFkFazUlbTkGbkAfcgwVckAP.CTPM...TAIUPMAP.BjFY.DPEE3zaoMWYfXTZrQWYxUjagIFakQF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.TTfSuk1bkAhQowFckI2P0Q2SlYF.1EFa0UF.AfQAv3xLwPiM2.SLzTSMwDiMxbSL4biL2...PEjTA0D.AHPZjAP.WTfSuk1bkAhQowFckImTkM2atElaiUF.1EFa0UF.AfQAv3hLzbyL0HCMyXSL3PCN3LSLwbiM3...PEjTA0D.AHPZjAP.WTfSuk1bkAhQowFckI2Pu0lXDUFagkG.1EFa0UF.ATPAv3RM...TAIUPMAP.BjFY.DPEE3zaoMWYfXTZrQWYxMzasIVSogG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.ZTfSuk1bkAhQowFckI2Pu0lXFUVYjIVXisF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.VTvTg0FbrUlbfXTZrQWYxARLTkGbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPFELUXsAGakIGHFkFazUlbfDSQtElXrUFY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AfQASEVavwVYxAhQowFckIGHwLTcz8jYlAfcgwVckAP.ET.LtTC...UPRETS.Df.oQF.ArQASEVavwVYxAhQowFckIGHwHUYy8lag41XkAfcgwVckAP.XT.LtDCLv.CLv.CLwPSNvDSL1DSL4LCN...TAIUPMAP.BjFY.DvFELUXsAGakIGHFkFazUlbfDyPu0lXDUFagkG.1EFa0UF.ATPAv3RM...TAIUPMAP.BjFY.DPFELUXsAGakIGHFkFazUlbfDyPu0lXMkFd.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A3QASEVavwVYxAhQowFckIGHwLzasIlQkUFYhE1XqAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfEELUXsAGakIGHFkFazUlbfHCU4AWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AjQASEVavwVYxAhQowFckIGHxTjagIFakQF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.XTvTg0FbrUlbfXTZrQWYxAhLCUGcOYlY.XWXrUWY.DPAE.iK0...PEjTA0D.AHPZjAP.aTvTg0FbrUlbfXTZrQWYxAhLRU1bu4VXtMVY.XWXrUWY.D.FE.iKw.CLv.CLv.SLzjCLwDiMwDSNyfC...UPRETS.Df.oQF.ArQASEVavwVYxAhQowFckIGHxLzasIFQkwVX4AfcgwVckAP.ET.LtTC...UPRETS.Df.oQF.AjQASEVavwVYxAhQowFckIGHxLzasIVSogG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.dTvTg0FbrUlbfXTZrQWYxAhLC8VahYTYkQlXgM1Z.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A3PADUFagkWQtElXrUFY.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.ArPADUFagkGSkYFc.XWXrUWY.DPFE.iKvPSN2DyM4bCLwjiLzLiLz.yL0XCM...TAIUPMAP.BjFY.D.CEPTYrEVdRk1YnQG.1EFa0UF.AnQAv3BLvPSN4.iLv.SN2byM2HCM2PiL3fSN...TAIUPMAP.BjFY.DfCEXTYkQlXgM1ZLUlYzAfcgwVckAP.XT.LtfSM1jCMzPCMwbSN0LCM4DiLw.SN...TAIUPMAP.BjFY.DvCEXTYkQlXgM1ZRk1YnQG.1EFa0UF.AfQAv3BN1.yL2LiL0fSM4.iM4fiLzHSL4...PEjTA0D.AHPZjAP.KT.SkYWYrwTYlQG.1EFa0UF.AfQAv3hLy.CN0jyL0PSLyfyL2PyLxfiMw...PEjTA0D.AHPZjAP.LT.SkYWYrIUZmgFc.XWXrUWY.D.FE.iK2DCNyDSM4TCN4biM2PSM1.SMzbC...UPRETS.Df.oQF.A7PACg1axU2bE4VXhwVYjAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DfCELDZuIWcyAxTvUVYjAfcgwVckAP.XT.LtDCLv.CLv.CLwPSNvDSL1DSL4LCN...TAIUPMAP.BjFY.DvCELDZuIWcyARPs8VctQG.1EFa0UF.ATPAv3RM...TAIUPMAP.BjFY.DfCELDZuIWcyAxUoQFcnAfcgwVckAP.XT.LtHCL0XCN0biMzTSMwDiMxbSL4byL...TAIUPMAP.BjFY.DfCELDZuIWcyABQkAGcnAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DvCEHUY1UlbhUjagIFakQF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.LTfTkYWYxIFHWUFc.XWXrUWY.D.FE.iKwPiLwPCMvjCN3byM4.iM2jSNyHC...UPRETS.Df.oQF.AHQARUlckImXf.kbkABQkwVX4AfcgwVckAP.XT.LtDiL2LCLvLSMwfSM3DyL4.yL3.SN...TAIUPMAP.BjFY.D.DEHUY1UlbhABQg0Fbo41Y.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AzPARUlckImXfLUZ5UF.1EFa0UF.AfQAv3xMzHSM2fSLzfCNzDCN0bSNw.SL1...PEjTA0D.AHPZjAP.KTPQQUjagIFakQF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.PTPQQAhQxUVb0UlaikGHw.fcgwVckAP.XT.LtDiM1XiM1XyMwXyLybiLvLSN2jSM...TAIUPMAP.BjFY.DvBETTTfbTXo4FHw.fcgwVckAP.CT.L...TAIUPMAP.BjFY.D.BETTTfDEHw.fcgwVckAP.XT.LtDSMv.CLv.CL0jiMvPiMzPyM2TCM...TAIUPMAP.BjFY.D.DETTTfXjbkEWck41X4AhL.XWXrUWY.DvEE.iKyLyLyLyLyPyLxXyMzPCL2jSM4...PEjTA0D.AHPZjAP.KTPQQAxQgklafHC.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.HTPQQARTfHC.1EFa0UF.AfQAv3RL0.CLv.CLvTSN1.CM1PCM2bSMz...PEjTA0D.AHPZjAP.PTPQQAhQxUVb0UlaikGHy.fcgwVckAP.XT.LtTSL2LSMyTSNzLCLyDyLwDCLyTiL...TAIUPMAP.BjFY.DvBETTTfbTXo4FHy.fcgwVckAP.YTPKv3RL2HSLyDSLxDSL0fSM4jCN0LSMx...PEjTA0D.AHPZjAP.HTPQQARTfLC.1EFa0UF.AfQAv3xLwHSNxjiM3jCN3PSL3TyM4DCLx...PEjTA0D.AHPZjAP.OT.SF8DHw.0arElboQWd.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A.QALYzSfDyUgYWYSgVXvUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.LT.SF8DHwvTY1UFa.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A.QALYzSfDiQxUVb0UlaikG.1EFa0UF.AXPAv3hL0...PEjTA0D.AHPZjAP.NT.SF8DHwPkboc1YkIG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.KT.SF8DHwXTXjUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.OT.SF8DHx.0arElboQWd.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A.QALYzSfHyUgYWYSgVXvUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.LT.SF8DHxvTY1UFa.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.A.QALYzSfHiQxUVb0UlaikG.1EFa0UF.AbPAv3RLxTC...UPRETS.Df.oQF.A3PALYzSfHCUxk1YmUlb.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.ArPALYzSfHiQgQVY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AfQAA0FbfTja1UFauAWYRUFbkEFcTkGbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.D.EEDTavARQtYWYr8FbkEDczE1XqAfcgwVckAP.YT.Lt.CNy.iL4TSL1.CMwHyM3fyL4DSLw...PEjTA0D.AHPZjAP.STPPsAGHE4lckw1avUFQkMVX4AfcgwVckAP.YT.Lt.CMzjCM3LSLyLCN0HCM3DCNzHCLz...PEjTA0D.AHPZjAP.UTPPsAGHE4lckw1avU1T0MGcgkla.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.ATQAA0FbfTja1UFauAWYRUFakE1bkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvDEDTavARQtYWYr8FbkwTY1UFa.XWXrUWY.D.FE.iKyDiM3PCLxjSLvHyLxTCMyjCM0LC...UPRETS.Df.oQF.ArQAA0FbfTja1UFauAWYPwVcis1SlYFSkYWYrAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DvFEDTavARQtYWYr8FbkAEa0M1ZOYlYWkFYzgF.1EFa0UF.AfQAv3RLv.CLv.CLvDCM4.SLwXSLwjyL3...PEjTA0D.AHPZjAP.VTPQtYWYr8FbkAhLRUFbkEFcTkGbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfDETja1UFauAWYfHSPzQWXisF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTPQtYWYr8FbkAhLDU1XgkG.1EFa0UF.AfQAv3RLwDCNzfCN2TCN3.iLzDyL4PCLz...PEjTA0D.AHPZjAP.STPQtYWYr8FbkAhLSU2bzEVZtAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvDETja1UFauAWYfHiTkwVYgMWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.ADQAE4lckw1avUFHxvTY1UFa.XWXrUWY.D.FE.iK0XCM4byL4TCLyfiMvPyMyXyLxfC...UPRETS.Df.oQF.AjQAE4lckw1avUFHx.Ea0M1ZOYlYLUlckwF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.YTPQtYWYr8FbkAhLPwVcis1SlY1UoQFcnAfcgwVckAP.XT.LtDCLv.CLv.CLwPSNvDSL1DSL4LCN...TAIUPMAP.BjFY.DfEETja1UFauAWYfLiTkAWYgQGU4AWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AHQAE4lckw1avUFHyDDczE1XqAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPDETja1UFauAWYfLCQkMVX4AfcgwVckAP.YT.Lt.yL4PSN1PSN1LSL4byMvfSLxjCN3...PEjTA0D.AHPZjAP.STPQtYWYr8FbkAxLSU2bzEVZtAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvDETja1UFauAWYfLiTkwVYgMWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.ADQAE4lckw1avUFHyvTY1UFa.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AjQAE4lckw1avUFHy.Ea0M1ZOYlYLUlckwF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.YTPQtYWYr8FbkAxLPwVcis1SlY1UoQFcnAfcgwVckAP.XT.LtDCLv.CLv.CLwPSNvDSL1DSL4LCN...TAIUPMAP.BjFY.DfEETja1UFauAWYfPiTkAWYgQGU4AWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AHQAE4lckw1avUFHzDDczE1XqAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPDETja1UFauAWYfPCQkMVX4AfcgwVckAP.XT.LtLiL3LiL0TyL4fiL2LCM1fCLwbiM...TAIUPMAP.BjFY.DvDETja1UFauAWYfPyT0MGcgkla.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.ALQAE4lckw1avUFHzHUYrUVXyUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.QTPQtYWYr8FbkABMLUlckwF.1EFa0UF.AfQAv3hLyfCN3fCN3jSM0DSL1HyMwjyMy...PEjTA0D.AHPZjAP.YTPQtYWYr8FbkABMPwVcis1SlYFSkYWYrAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DPFETja1UFauAWYfPCTrU2Xq8jYlcUZjQGZ.XWXrUWY.D.FE.iKw.CLv.CLv.SLzjCLwDiMwDSNyfC...UPRETS.Df.oQF.AXQAE4lckw1avUFH0HUYvUVXzQUdvUF.1EFa0UF.ALPAx...PEjTA0D.AHPZjAP.RTPQtYWYr8FbkARMAQGcgM1Z.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.ADQAE4lckw1avUFH0PTYiEVd.XWXrUWY.D.FE.iKyLSMybyLxfiLzLiL0TiMwTiLyPC...UPRETS.Df.oQF.ALQAE4lckw1avUFH0LUcyQWXo4F.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.STPQtYWYr8FbkARMRUFakE1bkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPDETja1UFauAWYfTCSkYWYrAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPFETja1UFauAWYfTCTrU2Xq8jYlwTY1UFa.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AjQAE4lckw1avUFH0.Ea0M1ZOYlYWkFYzgF.1EFa0UF.AfQAv3RLv.CLv.CLvDCM4.SLwXSLwjyL3...PEjTA0D.AHPZjAP.bTfQowFckIGHBw1aisFHC8lalk1Y0IWXzk1atAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DvCEjjavUGcfDCHz8FHFgE.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.STPRtAWczARLfP2afHUY1UlbhAfcgwVckAP.CT.L...TAIUPMAP.BjFY.D.DEjjavUGcfDCHz8FHDIWd.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A7PAI4Fb0QGHx.BcuAhQXAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvDEjjavUGcfHCHz8FHRUlckImX.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.A.QAI4Fb0QGHx.BcuABQxkG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.RTfQMAxPu4lYocVcxEFco8la.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AvPAF0DHDUFbzgFHAAfcgwVckAP.CT.L...TAIUPMAP.BjFY.D.CEXTSfPTYvQGZfHD.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.PTPQQAhQxUVb0UlaikGHz.fcgwVckAP.WT.LtXiM1XiM1XCN1TyLzfCNwTSNwfC...UPRETS.Df.oQF.ArPAEEEHGEVZtABM.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AfPAEEEHQABM.XWXrUWY.D.FE.iKx.CLv.CLv.iL4fCLxLiLxLCN2bC...UPRETS.Df.oQF.A.QAEEEHFIWYwUWYtMVdfTC.1EFa0UF.AfQAv3RNzHSMwXiL1biL4jiM0HCL4jiMw...PEjTA0D.AHPZjAP.KTPQQAxQgklafTC.1EFa0UF.AfQAv3RLxHSN0.yM4HyLwHiMxHCL2.yLw...PEjTA0D.AHPZjAP.HTPQQARTfTC.1EFa0UF.AjQAv3BL4bSNxjiM4LyM0fCM3byMvDCMwXC...UPRETS.Df.oQF.ALQAI4Fb0QGHw.BcuAxS0QGb0QG.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.STPRtAWczAhLfP2af7TczAWczAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvDE7TczAWczAxYgklafP2afXDV.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AbQAOUGcvUGcfbVXo4FHz8FHRUlckImX.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.APQAOUGcvUGcfbVXo4FHz8FHDIWd.XWXrUWY.D.FE.iK3DCL3.yMxfyM1jyLvHyL1fSL1PC...UPRETS.Df.oQF.A3PAOMFcgYWYfLEZoYFc.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.A.QARklam0zajUjagIFakQF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.OTfSuk1bkcUX1UlYuIWa.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.ALQABkFciIWcygVYxUjagIFakQF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.RTfPoQ2XxU2bnUlbfPjboYWY.XWXrUWY.DPFE.iKvDSLwDSLwDSLyfCLwTSN3TCM3fSN...TAIUPMAP.BjFY.DfDEHTZzMlb0MGZkIGHCIWcygF.1EFa0UF.AfQAv3hL2byLv.yL0bCNwfiMvLSMwTiMx...PEjTA0D.AHPZjAP.STfPoQ2XxU2bnUlbfHUYjU2XkAfcgwVckAP.XT.LtDyM4DiM1XSM4bSLxbSNwPCMxfyM...TAIUPMAP.BjFY.DPDEHTZzMlb0MGZkIGHT8lakAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DfDEHTZzMlb0MGZkIGHLUlckwF.1EFa0UF.ALPAw...PEjTA0D.AHPZjAP.ST.QoMGcuIGco8laE4VXhwVYjAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DfDEPTZyQ2axQWZu4FHDIWZ1UF.1EFa0UF.AfQAv3hL0XyLyXCNvfiLvPiM0.CN2fSNw...PEjTA0D.AHPZjAP.QT.QoMGcuIGco8lafHTXyMG.1EFa0UF.AbQAv3xM0XSN3bCN1jyMyjSMyHCM2.yM...TAIUPMAP.BjFY.DPDEPTZyQ2axQWZu4FHT8lakAfcgwVckAP.CTPL...TAIUPMAP.BjFY.DPDEPTZyQ2axQWZu4FHFUmd5AfcgwVckAP.XT.LtHCMxDCMz.iMyDSL0DSL4jyLz.CN...TAIUPMAP.BjFY.DPDEPTZyQ2axQWZu4FHBkFckAfcgwVckAP.XT.LtDyMwDCNvTiMwDCNzfCNyDSL2XCN...TAIUPMAP.BjFY.DfDEPTZyQ2axQWZu4FHLUlckwF.1EFa0UF.AfQAv3BMwPiMxXyMzbyL1jyM1XiLyTyL0...PIUQSMEL..P.C.0ao4Fc.Dv.XAP.CT.L.jE.ALPAv.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.CfE.AfQAv3RM0PSL1XiM2PiMwLSN0HiMyXyMx.PV.Dv.E.C.C8VYlYVZikVYtQG.AjQAs.iKzPiLzbyM3fSL4.CNzDiM2PCNvTC...0ao4Fc.Df.XAP.CTPL.jE.ALPAw...SQkTIsTQv...AH.TuklazAP.CfE.ALPAv.PV.Dv.E.C.C8VYlYVZikVYtQG.ALPAv...P8VZtQG.AH.V.Dv.EDC.YAP.CTPL...SIYDUv...AP.TuklazAP.CfE.ALPAv.PV.Dv.E.C.C8VYlYVZikVYtQG.AjQAs.iK0DyLxbCMyDiLvDSNyPCNwPCM0LC...0ao4Fc.Dv.XAP.XT.LtHCN4jSL0jyM3jCL3TyL3fSL3LiM.jE.ALPAv.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.CfE.AfQAv3RM4HCMyXSN1jiL3.iLzHSNwjSNx.PV.Dv.EDC.C8VYlYVZikVYtQG.ALPAv...P8VZtQG.AH.V.Dv.EDC.YAP.CTPL..fPE4DQv...AL.TuklazAP.CfE.APPAsDC.YAP.DTPKw.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.CfE.ALPAv.PV.Dv.E.C.C8VYlYVZikVYtQG.APPAs.C...0ao4Fc.Df.XAP.CTPL.jE.ALPAw...PIUQSMUL..P.B.0ao4Fc.Dv.XAP.CT.L.jE.ALPAv.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.BfE.ALPAw.PV.Dv.EDC..LEURkzREEC..Df.P8VZtQG.AL.V.Dv.E.C.YAP.CT.L.LzakYlYoMVZk4Fc.DPFEzBLtPiLzbyM3bSM4PyM4TiLxbCL0.CN...TuklazAP.BfE.ALPAw.PV.Dv.EDC..vTRFQUL..P.C.0ao4Fc.Dv.XAP.CT.L.jE.ALPAv.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.CfE.AfQAv3BM3LSL4LiL2fyLwHiM3LSLvTCM2.PV.Dv.E.C.C8VYlYVZikVYtQG.AfQAv3hLyjyLwXiLyjSN0LCLzDCL2XiM1...P8VZtQG.AH.V.Dv.EDC.YAP.CTPL..fPE4DQw...AL.TuklazAP.CfE.APPAsDC.YAP.CTPL.LzakYlYoMVZk4Fc.Dv.E.C...0ao4Fc.Dv.XAP.CT.L.jE.ALPAv.vPuUlYlk1XoUlazAP.DTPKv...P8VZtQG.AH.V.Dv.EDC.YAP.CTPL...TRUzTSIC..Df.P8VZtQG.AL.V.Dv.E.C.YAP.CT.L.LzakYlYoMVZk4Fc.Dv.E.C...0ao4Fc.Df.XAP.CTPL.jE.ALPAw...SQkTIsTQx...AH.TuklazAP.CfE.ALPAv.PV.Dv.E.C.C8VYlYVZikVYtQG.ALPAv...P8VZtQG.AH.V.Dv.EDC.YAP.CTPL...SIYDUx...AH.TuklazAP.CfE.ALPAv.PV.Dv.E.C.C8VYlYVZikVYtQG.ALPAv...P8VZtQG.AH.V.Dv.EDC.YAP.CTPL..fPE4DQx...AL.TuklazAP.CfE.APPAsDC.YAP.DTPKw.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.CfE.ALPAv.PV.Dv.E.C.C8VYlYVZikVYtQG.APPAs.C...0ao4Fc.Df.XAP.CTPL.jE.ALPAw...PIUQSM0L..P.B.0ao4Fc.Dv.XAP.CT.L.jE.ALPAv.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.BfE.ALPAw.PV.Dv.EDC..LEURkzREMC..Df.P8VZtQG.AL.V.Dv.E.C.YAP.CT.L.LzakYlYoMVZk4Fc.Dv.E.C...0ao4Fc.Df.XAP.CTPL.jE.ALPAw...LkjQTMC..Df.P8VZtQG.AL.V.Dv.E.C.YAP.CT.L.LzakYlYoMVZk4Fc.Dv.E.C...0ao4Fc.Df.XAP.CTPL.jE.ALPAw...BUjSDMC..Dv.P8VZtQG.AL.V.D.AEzRL.jE.APPAsDC.C8VYlYVZikVYtQG.ALPAv...P8VZtQG.AL.V.Dv.E.C.YAP.CT.L.LzakYlYoMVZk4Fc.D.AEzBL...TuklazAP.BfE.ALPAw.PV.Dv.EDC...UPRETS.Df.oQF.AvPAV8VZiUFHM8FYkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DfDEHTZzMlb0MGZkIGHBwVYtQF.1EFa0UF.AfQAv3BNzXSLybSL1XCLxLiL0PyL4PSMy...PEjTA0D.AHPZjAP.RT.QoMGcuIGco8lafHDak4FY.XWXrUWY.Dv.EDC...UPRETS.Df.oQF.AnQAA0FbfTja1UFauAWYAQGcgM1ZfLEauAWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AjQAA0FbfTja1UFauAWYDU1XgkGHSw1avUF.1EFa0UF.ALPAv...PEjTA0D.AHPZjAP.aTPPsAGHE4lckw1avUlTkwVYgMWYfLEauAWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AfQAE4lckw1avUFHxDDczE1XqAxTr8FbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvEETja1UFauAWYfHCQkMVX4AxTr8FbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPFETja1UFauAWYfHiTkwVYgMWYfLEauAWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AfQAE4lckw1avUFHyDDczE1XqAxTr8FbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvEETja1UFauAWYfLCQkMVX4AxTr8FbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPFETja1UFauAWYfLiTkwVYgMWYfLEauAWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AfQAE4lckw1avUFHzDDczE1XqAxTr8FbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvEETja1UFauAWYfPCQkMVX4AxTr8FbkAfcgwVckAP.XTPKv3hM1XiM1XiM3XSMyPCN3DSM4DCN...TAIUPMAP.BjFY.DPFETja1UFauAWYfPiTkwVYgMWYfLEauAWY.XWXrUWY.Dv.E.C...UPRETS.Df.oQF.AfQAE4lckw1avUFH0DDczE1XqAxTr8FbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DvEETja1UFauAWYfTCQkMVX4AxTr8FbkAfcgwVckAP.CT.L...TAIUPMAP.BjFY.DPFETja1UFauAWYfTiTkwVYgMWYfLEauAWY.XWXrUWY.Dv.E.C...UPRETS.DP.oQF.ArPATIWXtMGbuMWY...TAIUPMAP.AjFY.DvBEXTZtUFHTUmakA..PEjTA0D.AHPZjAP.XTPQlYVYiQGHM8FY0wVXzk1atARSuQVY.XWXrUWY.Dv.ELC...UPRETS.Df.oQF.AzPAPIWYyUFcLUlckwF.1EFa0UF.AfQAv3xLvTSNwXCN2TiMv.CNwPCNwjyLz...KUTVTIUPCsTRNcjL....KUTVTIUPCsTRNczL....KUTVTIUPCsTRNcDM.DP.s8FYkAP.CTfL.Dv.N8DQEAP.B.WZzMFZ.Dv.E.C.g01a04Fc.Dv.E.C..3zSDUD.AH.boQ2XnAP.YT.Lt.iLxfSMxPiLxXiM4TiL4jSLzfSM1.PXs8VctQG.ALPAv...N8DQEAP.B.WZzMFZ.Dv.EDC.g01a04Fc.Dv.EDC..HURSUTVv...AP.TuklazAP.CfE.APPAsDC.YAP.DTPKw.vPuUlYlk1XoUlazAP.CT.L...TuklazAP.CfE.ALPAv.PV.Dv.E.C.C8VYlYVZikVYtQG.ALPAv...P8VZtQG.AL.V.D.FE.iK0TCM1HSL3DSM1fSLzTyM0DSN0LC.YAP.CTPL.LzakYlYoMVZk4Fc.Dv.E.C...0ao4Fc.Df.XAP.CTPL.jE.ALPAw...RkzTEkUL....RkzTEkkL....RkzTEk0L....ME1Xx8FUuEDaoE1bSQWXzUF..DPAMEDTPkjSGAP.BzTXiI2aIQD.AjPAME1Xx8lNv.PPrkVXykDQ.DPDEHURSUDHLUlYzAhQgQVYxA..MEDTPkjSGAP.BzTXiI2aIQD.AjPAME1Xx8lNw.PPrkVXykDQ.DvDEHURSUDHMkFYjwVYfXTXjUlb..PSAAETI4zQ.Df.ME1Xx8VRDAP.ITPSgMlbuoiL.DDaoE1bIQD.AHQARkzTEAhTocFZzAhQgQVYxA..MEDTPkjSGAP.BzTXiI2aIQD.AjPAME1Xx8lNy.PPrkVXykDQ.DPEEHURSUDHPEFYffzaxkldu4FcgwF..zTPPAURNcD.AHPSgMlbukDQ.DPBEzTXiI2a5PC.AwVZgMWRDAP.STfTIMUQf.UXjAhUkIGcoMVXrA..ME1Xx8lUgwVckMG..DPAME1Xx8lNv.P.AXUXrUWY.Dv.E.C..zTXiI2a5DC.ADfUgwVckAP.CT.L..PSgMlbuoiL.DP.VEFa0UF.ALPAv...ME1Xx8lNy.P.AXUXrUWY.Dv.E.C..zTXiI2a5PC.ADfUgwVckAP.CT.L..vTA0DTLUjT..P.BzzajUGak8EL..P.AjjayQmb00VYtQG.AHPUUkDQ.DfIETCMhEyMwXVLsH1Lx.SKzDlXh0RXw.SLsfyM0.CMybiYjEFLhAfSg0VY.DvEEDDcrElazk1bfLEcxklamABTrU2XqA..M8FY0wVYeEC..DP.I41bzIWcsUlazAP.BTUUIQD.AXRA0PiXwbSLlESKhMiLvzBMgIlXsDVLvDSK3bSMvPyL2XFYgAiX.3TXsUF.AbQAAQGag4FcoMGHSQmbo41Yf.Ea0M1Z...TAIUPMAP.AjFY.DPDELUXsAGakIGHw.kbkMWYzA..PEjTA0D.ADPZjAP.QTvTg0FbrUlbfHCTxU1bkQG...UPRETS.Df.oQF.ATQADUFagkmPP0zT441XE4VXhwVYjAfcgwVckAP.IP.............TAIUPMAP.BjFY.DvEEvjQOARLBAUSfLUdtMFHE4VXhwVYjAfcgwVckAP.IP.............TAIUPMAP.BjFY.DvEEvjQOAhLBAUSfLUdtMFHE4VXhwVYjAfcgwVckAP.IP.............TAIUPMAP.AjFY.DfGEDTavARQtYWYr8FbkIDTMAxT441XfTjagIFakQF...UPRETS.DP.oQF.AvQAE4lckw1avUFHxHDTMAxT441XfTjagIFakQF...UPRETS.DP.oQF.AvQAE4lckw1avUFHyHDTMAxT441XfTjagIFakQF...UPRETS.DP.oQF.AvQAE4lckw1avUFHzHDTMAxT441XfTjagIFakQF...UPRETS.DP.oQF.AvQAE4lckw1avUFH0HDTMAxT441XfTjagIFakQF..P0a0MFZDkVak41bo8layMzatYVZmUmbgQWZu4F..DP.SUlaykFcoYWZzkVYyA..ATvTzIWZqUF.ADfUgwVckAP.CTPL..vQrkFYkAP.AXUXrUWY.Dv.EDC..LEaoQVY.DP.VEFa0UF.ALPAw...PIWYyMG.ADfUgwVckAP.XT.LtjCNzHSMwjyM1.SLyDCNyTSNybSM...SoYFc.DP.VEFa0UF.ALPAw...PEjTA0D.ADPZjAP.oTvTrkFYkARPhM2arUGckABUuAhTkwVXzklckARSuQVYfTjagIFakQF...UPRETS.DP.oQF.A7PALIESo41ZE4VXhwVYjA..PEjTA0D.ADPZjAP.RT.TxU1bkQGHP8Fa4AGZu4Vd...TAIUPMAP.AjFY.DvGEzzat8FHV8VZiUFHPI2aiU1byklamARQtElXrUFY...TAIUPMAP.AjFY.DvFEzzat8FHV8VZiUFHPI2aiU1byklamABTg4F..zTXiI2aT81Pu4Fcx8FaMEFbvklamMG...PSPUzPu4lYocVcxEFco8la..P.JzDTEUjagIFakQF.ADfUgwVckAP.AH..MAUQME1bzUlbCgVXt4VYrAP.AXUXrUWY.DPAAD......MAUQNUWaN8FckMDZg4lakw1b.DP.VEFa0UF.ATP.O.....PSPUDTkImSuQWYPIjTg41YkAP.AXUXrUWY.DPAA.C.....MAUQME1bzUlbPIjTg41YkAP.AXUXrUWY.DPAAH......LU1YgMVdM8FYk0TcrQWZE4VXhwVYjAP.AXUXrUWY.DP.B..SkcVXikWSuQVYSklamwVY.DP.VEFa0UF.ATP.A......SkcVXikWSuQVYFklbyQ2PnElatUFa.DP.VEFa0UF.ATP.A......SkcVXikWSuQVYLE1bzMDZg4lakwF.ADfUgwVckAP.ED.D.....vTYmE1X40zajUFToQ2XnITYtQlTg41YkAP.AXUXrUWY.DPAA.C.....RkzTEAUXtUFaC8lalk1Y0IWXzk1atA..Av.akYFcCMD.ADfUgwVckAP.EDvZ.....zVZjQFakMzP.DP.VEFa0UF.ATP.sA....fbocFZzMzP.DP.VEFa0UF.ATP.uA.....akYFcP8zT.DP.VEFa0UF.Aj.A............skFYjwVYP8zT.DP.VEFa0UF.Aj.A............xk1YnQGTOME.ADfUgwVckAP.IP.............cxE1XqAWXjg0PCAP.AXUXrUWY.DPAADG.....zIWXisFbgQVVCMD.ADfUgwVckAP.EDfb.....PmbgM1ZvEFYZMzP.DP.VEFa0UF.ATP.yA.....cxE1XqAWXjgETOME.ADfUgwVckAP.IP.............cxE1XqAWXjkETOME.ADfUgwVckAP.IP.............cxE1XqAWXjoETOME.ADfUgwVckAP.IP............."
									}
,
									"fileref" : 									{
										"name" : "Equator",
										"filename" : "Equator.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "26593260b505aed74538ebac60a9e35c"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~[1]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 326.0, 1067.567626953125, 108.0, 23.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 326.0, 1037.567626953125, 32.5, 23.0 ],
					"text" : "join"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 326.0, 1007.567626953125, 107.0, 23.0 ],
					"text" : "makenote 60 4n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 326.0, 918.067626953125, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 39.0, 160.333343505859375, 25.0, 22.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 70.0, 267.0, 62.0, 22.0 ],
					"text" : "midiflush"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-12",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 198.46795654296875, 285.0, 141.0, 50.0 ],
					"text" : "bang sent out right outlet when sequence comes to the end",
					"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 51.333343505859375, 199.0, 25.0 ],
					"text" : "'bang' to play at default speed"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 78.0, 259.0, 25.0 ],
					"text" : "'start' (tempo) with 1024 = normal speed"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 108.0, 59.0, 23.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 46.0, 30.333343505859375, 44.0, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 81.0, 59.0, 23.0 ],
					"text" : "start 512"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 70.0, 232.0, 105.0, 23.0 ],
					"text" : "seq seq_sc.midi"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.428558349609375, 142.333343505859375, 57.0, 23.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 156.0, 300.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "helpargs.js",
					"id" : "obj-4",
					"ignoreclick" : 1,
					"jsarguments" : [ "seq" ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 175.0, 232.0, 187.921981811523438, 39.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontface" : 1,
					"fontsize" : 13.0,
					"hint" : "",
					"id" : "obj-93",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 199.0, 949.067626953125, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "2",
					"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontface" : 1,
					"fontsize" : 13.0,
					"hint" : "",
					"id" : "obj-48",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 93.0, 890.567626953125, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "1",
					"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 79.5, 133.166672000000005, 48.5, 133.166672000000005 ],
					"order" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 55.5, 79.833344000000011, 48.5, 79.833344000000011 ],
					"order" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 79.5, 106.666672000000005, 48.5, 106.666672000000005 ],
					"order" : 1,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 48.5, 258.666687000000024, 79.5, 258.666687000000024 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 259.5, 1172.567626953125, 259.5, 1172.567626953125 ],
					"source" : [ "obj-28", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 42.5, 1190.067626953125, 259.5, 1190.067626953125 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"source" : [ "obj-41", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-41", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 424.5, 1099.067626953125, 259.5, 1099.067626953125 ],
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"midpoints" : [ 335.5, 1062.567626953125, 335.5, 1062.567626953125 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"midpoints" : [ 423.5, 1033.567626953125, 349.0, 1033.567626953125 ],
					"source" : [ "obj-46", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 335.5, 1032.567626953125, 335.5, 1032.567626953125 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 1 ],
					"midpoints" : [ 652.5, 982.067626953125, 379.5, 982.067626953125 ],
					"source" : [ "obj-47", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 6 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 6 ],
					"source" : [ "obj-53", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 5 ],
					"source" : [ "obj-53", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 4 ],
					"source" : [ "obj-53", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 3 ],
					"source" : [ "obj-53", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 2 ],
					"source" : [ "obj-53", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"source" : [ "obj-53", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-41" : [ "vst~[1]", "vst~[1]", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "helpargs.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "Equator.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "openTransport.maxpat",
				"bootpath" : "C74:/help/max",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "ksliderWhite",
				"default" : 				{
					"color" : [ 1, 1, 1, 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-1",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-1",
				"default" : 				{
					"accentcolor" : [ 0, 0.533333, 0.168627, 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold-1",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
