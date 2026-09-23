{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34, 100, 1480, 1430 ],
        "openinpresentation": 1,
        "gridsize": [ 10, 10 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 928, 953, 150, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 920, 942.5, 150, 20 ],
                    "text": "Spat coordinates"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 32,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24, 18, 530, 42 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 18, 530, 42 ],
                    "text": "De-symmetrical Core",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "title"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 18,
                    "id": "subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 575, 29, 490, 27 ],
                    "presentation": 1,
                    "presentation_rect": [ 575, 29, 490, 27 ],
                    "text": "17-FEED SPATIAL AUDIO EXPLORER",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "subtitle"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 14,
                    "id": "strap",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24, 67, 1400, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 67, 1400, 22 ],
                    "text": "Core: Keigo Yoshida · Original software: Guillaume Piccarreta · github.com/gllmp",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "strap"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 18,
                    "id": "h1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24, 105, 610, 27 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 105, 610, 27 ],
                    "text": "01  INSTALLATION / MOVE THE LIGHT",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "h1"
                }
            },
            {
                "box": {
                    "filename": "dot_area_view.js",
                    "id": "installation",
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24, 145, 610, 350 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 145, 610, 350 ],
                    "varname": "installation"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "l_azimuth",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24, 511, 145, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 511, 145, 19 ],
                    "text": "AZIMUTH ° CW",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "l_azimuth"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "azimuth",
                    "maxclass": "flonum",
                    "maximum": 360,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24, 543, 125, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 543, 125, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "azimuth"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_azimuth",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24, 1760, 216, 22 ],
                    "text": "prepend azimuth"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "l_lightdistance",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 179, 511, 145, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 179, 511, 145, 19 ],
                    "text": "DISTANCE / proxy",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "l_lightdistance"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "lightdistance",
                    "maxclass": "flonum",
                    "maximum": 3,
                    "minimum": 0.4,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 179, 543, 125, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 179, 543, 125, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "lightdistance"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_lightdistance",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 266, 1760, 216, 22 ],
                    "text": "prepend lightdistance"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "l_height",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 334, 511, 145, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 334, 511, 145, 19 ],
                    "text": "HEIGHT / proxy",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "l_height"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "height",
                    "maxclass": "flonum",
                    "maximum": 2,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 334, 543, 125, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 334, 543, 125, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "height"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_height",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 508, 1760, 216, 22 ],
                    "text": "prepend height"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "l_intensity",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 489, 511, 145, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 489, 511, 145, 19 ],
                    "text": "INTENSITY",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "l_intensity"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "intensity",
                    "maxclass": "flonum",
                    "maximum": 1,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 489, 543, 125, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 489, 543, 125, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "intensity"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_intensity",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 750, 1760, 216, 22 ],
                    "text": "prepend intensity"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 18,
                    "id": "h2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670, 105, 460, 27 ],
                    "presentation": 1,
                    "presentation_rect": [ 670, 105, 460, 27 ],
                    "text": "02  SHADOW FEATURES",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "h2"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.12, 0.17, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1 ],
                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "mode",
                    "items": [ "MANUAL", ",", "LIGHT-DERIVED" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1165, 107, 291, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 1165, 107, 291, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "mode"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_mode",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 992, 1760, 216, 22 ],
                    "text": "prepend mode"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 14,
                    "id": "simulation",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670, 145, 785, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 670, 145, 785, 22 ],
                    "text": "SIMULATED SHADOW FEATURES",
                    "textcolor": [ 0.75, 0.69, 1, 1 ],
                    "varname": "simulation"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "mode_status",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670, 177, 785, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 670, 177, 785, 20 ],
                    "text": "LIGHT-DERIVED · Copy to manual to isolate a feature",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "mode_status"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "l_cx",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670, 219, 207, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 670, 219, 207, 20 ],
                    "text": "CENTROID X",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "l_cx"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "cx",
                    "maxclass": "flonum",
                    "maximum": 1,
                    "minimum": -1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 893, 219, 148, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 893, 219, 148, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "cx"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_cx",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1234, 1760, 216, 22 ],
                    "text": "prepend cx"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "l_cy",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670, 257, 207, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 670, 257, 207, 20 ],
                    "text": "CENTROID Y",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "l_cy"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "cy",
                    "maxclass": "flonum",
                    "maximum": 1,
                    "minimum": -1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 893, 257, 148, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 893, 257, 148, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "cy"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_cy",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24, 1832, 216, 22 ],
                    "text": "prepend cy"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "l_cz",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670, 295, 207, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 670, 295, 207, 20 ],
                    "text": "CENTROID Z",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "l_cz"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "cz",
                    "maxclass": "flonum",
                    "maximum": 1,
                    "minimum": -1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 893, 295, 148, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 893, 295, 148, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "cz"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_cz",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 266, 1832, 216, 22 ],
                    "text": "prepend cz"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "l_area",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670, 333, 207, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 670, 333, 207, 20 ],
                    "text": "AREA",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "l_area"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "area",
                    "maxclass": "flonum",
                    "maximum": 1,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 893, 333, 148, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 893, 333, 148, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "area"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_area",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 508, 1832, 216, 22 ],
                    "text": "prepend area"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "l_penumbra",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1072, 219, 207, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 1072, 219, 207, 20 ],
                    "text": "PENUMBRA",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "l_penumbra"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "penumbra",
                    "maxclass": "flonum",
                    "maximum": 1,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1295, 219, 148, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 1295, 219, 148, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "penumbra"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_penumbra",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 750, 1832, 216, 22 ],
                    "text": "prepend penumbra"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "l_contour",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1072, 257, 207, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 1072, 257, 207, 20 ],
                    "text": "CONTOUR / EDGE",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "l_contour"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "contour",
                    "maxclass": "flonum",
                    "maximum": 1,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1295, 257, 148, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 1295, 257, 148, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "contour"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_contour",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 992, 1832, 216, 22 ],
                    "text": "prepend contour"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "l_density",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1072, 295, 207, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 1072, 295, 207, 20 ],
                    "text": "DENSITY / DARK",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "l_density"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "density",
                    "maxclass": "flonum",
                    "maximum": 1,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1295, 295, 148, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 1295, 295, 148, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "density"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_density",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1234, 1832, 216, 22 ],
                    "text": "prepend density"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "l_entropy",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1072, 333, 207, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 1072, 333, 207, 20 ],
                    "text": "ENTROPY",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "l_entropy"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "entropy",
                    "maxclass": "flonum",
                    "maximum": 1,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1295, 333, 148, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 1295, 333, 148, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "entropy"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_entropy",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24, 1904, 216, 22 ],
                    "text": "prepend entropy"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.13, 0.21, 0.24, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "copy",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 670, 379, 295, 28 ],
                    "presentation": 1,
                    "presentation_rect": [ 670, 379, 295, 28 ],
                    "text": "COPY PROXY → MANUAL",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "texton": "COPY PROXY → MANUAL",
                    "varname": "copy"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_copy",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 266, 1904, 216, 22 ],
                    "text": "prepend copy"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "editing_hint",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 982, 382, 473, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 982, 382, 473, 20 ],
                    "text": "Editing any feature also switches to MANUAL.",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "editing_hint"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 18,
                    "id": "h5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670, 413, 780, 27 ],
                    "presentation": 1,
                    "presentation_rect": [ 670, 413, 780, 27 ],
                    "text": "05  EXPERIMENT / SOUND",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "h5"
                }
            },
            {
                "box": {
                    "checkedcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "id": "sound",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 670, 477, 24, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 670, 477, 24, 24 ],
                    "varname": "sound"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_sound",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 508, 1904, 216, 22 ],
                    "text": "prepend sound"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "lsound",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 704, 478, 110, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 704, 478, 110, 20 ],
                    "text": "SOUND ON",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "lsound"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "gain",
                    "maxclass": "flonum",
                    "maximum": 1,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 843, 477, 102, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 843, 477, 102, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "gain"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_gain",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 750, 1904, 216, 22 ],
                    "text": "prepend gain"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "lgain",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 825, 447, 145, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 825, 447, 145, 19 ],
                    "text": "MASTER 0–1 / UNITY",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "lgain"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "frequency",
                    "maxclass": "flonum",
                    "maximum": 12000,
                    "minimum": 20,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 984, 477, 105, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 984, 477, 105, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "frequency"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_frequency",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 992, 1904, 216, 22 ],
                    "text": "prepend frequency"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "lfrequency",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 984, 447, 104, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 984, 447, 104, 19 ],
                    "text": "BASE Hz",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "lfrequency"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "activity",
                    "maxclass": "flonum",
                    "maximum": 1,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1120, 477, 105, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 1120, 477, 105, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "activity"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_activity",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1234, 1904, 216, 22 ],
                    "text": "prepend activity"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "lactivity",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1120, 447, 106, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 1120, 447, 106, 19 ],
                    "text": "ACTIVITY",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "lactivity"
                }
            },
            {
                "box": {
                    "id": "dsp",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 1280, 473, 44, 44 ],
                    "presentation": 1,
                    "presentation_rect": [ 1280, 473, 44, 44 ],
                    "varname": "dsp"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "ldsp",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1340, 484, 116, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 1340, 484, 116, 19 ],
                    "text": "DSP ON/OFF",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "ldsp"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.12, 0.17, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1 ],
                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "resolution",
                    "items": [ "1 / CORE", ",", "4 / REGIONS" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 670, 544, 145, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 670, 544, 145, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "resolution"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_resolution",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24, 1976, 216, 22 ],
                    "text": "prepend resolution"
                }
            },
            {
                "box": {
                    "checkedcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "id": "orbit",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 845, 545, 24, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 845, 545, 24, 24 ],
                    "varname": "orbit"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_orbit",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 266, 1976, 216, 22 ],
                    "text": "prepend orbit"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "lorbit",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 879, 546, 70, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 879, 546, 70, 19 ],
                    "text": "ORBIT",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "lorbit"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "speed",
                    "maxclass": "flonum",
                    "maximum": 30,
                    "minimum": -30,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 959, 544, 83, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 959, 544, 83, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "speed"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_speed",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 508, 1976, 216, 22 ],
                    "text": "prepend speed"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "lspeed",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1052, 546, 65, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 1052, 546, 65, 19 ],
                    "text": "° / sec",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "lspeed"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.13, 0.21, 0.24, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "panic",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1135, 543, 147, 29 ],
                    "presentation": 1,
                    "presentation_rect": [ 1135, 543, 147, 29 ],
                    "text": "MUTE / STOP",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "texton": "MUTE / STOP",
                    "varname": "panic"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_panic",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 750, 1976, 216, 22 ],
                    "text": "prepend panic"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.13, 0.21, 0.24, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "reset",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1298, 543, 158, 29 ],
                    "presentation": 1,
                    "presentation_rect": [ 1298, 543, 158, 29 ],
                    "text": "NEUTRAL",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "texton": "NEUTRAL",
                    "varname": "reset"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_reset",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 992, 1976, 216, 22 ],
                    "text": "prepend reset"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 18,
                    "id": "h3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24, 615, 856, 27 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 615, 856, 27 ],
                    "text": "03  MAPPING / HOW SOUND OCCUPIES SPACE",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "h3"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "mh0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24, 657, 36, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 657, 36, 19 ],
                    "text": "ON",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "mh0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "mh1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68, 657, 256, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 68, 657, 256, 19 ],
                    "text": "FEATURE → TARGET",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "mh1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "mh2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 339, 657, 178, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 339, 657, 178, 19 ],
                    "text": "INPUT",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "mh2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "mh3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 532, 657, 75, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 532, 657, 75, 19 ],
                    "text": "MIN",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "mh3"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "mh4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 618, 657, 75, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 618, 657, 75, 19 ],
                    "text": "MAX",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "mh4"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "mh5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 712, 657, 175, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 712, 657, 175, 19 ],
                    "text": "OUTPUT",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "mh5"
                }
            },
            {
                "box": {
                    "checkedcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "id": "m0on",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24, 697, 24, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 697, 24, 24 ],
                    "varname": "m0on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m0on",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1234, 1976, 216, 22 ],
                    "text": "prepend m0on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "m0label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68, 697, 258, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 68, 697, 258, 20 ],
                    "text": "CENTROID → XYZ / m",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "m0label"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "m0input",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 339, 697, 181, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 339, 697, 181, 19 ],
                    "text": "-0.52 / -0.75 / 0.00",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "m0input"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "m0min",
                    "maxclass": "flonum",
                    "maximum": 5,
                    "minimum": -5,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 532, 697, 74, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 532, 697, 74, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "m0min"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m0min",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24, 2048, 216, 22 ],
                    "text": "prepend m0min"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "m0max",
                    "maxclass": "flonum",
                    "maximum": 5,
                    "minimum": -5,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 618, 697, 74, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 618, 697, 74, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "m0max"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m0max",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 266, 2048, 216, 22 ],
                    "text": "prepend m0max"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "m0out",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 712, 697, 178, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 712, 697, 178, 19 ],
                    "text": "-1.3 / -1.9 / 0.0",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "m0out"
                }
            },
            {
                "box": {
                    "checkedcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "id": "m1on",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24, 738, 24, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 738, 24, 24 ],
                    "varname": "m1on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m1on",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 508, 2048, 216, 22 ],
                    "text": "prepend m1on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "m1label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68, 738, 258, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 68, 738, 258, 20 ],
                    "text": "AREA → SPREAD / %",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "m1label"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "m1input",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 339, 738, 181, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 339, 738, 181, 19 ],
                    "text": "0.48",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "m1input"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "m1min",
                    "maxclass": "flonum",
                    "maximum": 100,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 532, 738, 74, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 532, 738, 74, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "m1min"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m1min",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 750, 2048, 216, 22 ],
                    "text": "prepend m1min"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "m1max",
                    "maxclass": "flonum",
                    "maximum": 100,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 618, 738, 74, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 618, 738, 74, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "m1max"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m1max",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 992, 2048, 216, 22 ],
                    "text": "prepend m1max"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "m1out",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 712, 738, 178, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 712, 738, 178, 19 ],
                    "text": "48.13",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "m1out"
                }
            },
            {
                "box": {
                    "checkedcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "id": "m2on",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24, 779, 24, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 779, 24, 24 ],
                    "varname": "m2on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m2on",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1234, 2048, 216, 22 ],
                    "text": "prepend m2on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "m2label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68, 779, 258, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 68, 779, 258, 20 ],
                    "text": "PENUMBRA → ROOM",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "m2label"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "m2input",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 339, 779, 181, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 339, 779, 181, 19 ],
                    "text": "0.39",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "m2input"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "m2min",
                    "maxclass": "flonum",
                    "maximum": 85,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 532, 779, 74, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 532, 779, 74, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "m2min"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m2min",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24, 2120, 216, 22 ],
                    "text": "prepend m2min"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "m2max",
                    "maxclass": "flonum",
                    "maximum": 85,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 618, 779, 74, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 618, 779, 74, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "m2max"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m2max",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 266, 2120, 216, 22 ],
                    "text": "prepend m2max"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "m2out",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 712, 779, 178, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 712, 779, 178, 19 ],
                    "text": "38.15",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "m2out"
                }
            },
            {
                "box": {
                    "checkedcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "id": "m3on",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24, 820, 24, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 820, 24, 24 ],
                    "varname": "m3on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m3on",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 508, 2120, 216, 22 ],
                    "text": "prepend m3on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "m3label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68, 820, 258, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 68, 820, 258, 20 ],
                    "text": "DENSITY → DISTANCE / m",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "m3label"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "m3input",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 339, 820, 181, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 339, 820, 181, 19 ],
                    "text": "0.76",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "m3input"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "m3min",
                    "maxclass": "flonum",
                    "maximum": 8,
                    "minimum": 0.35,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 532, 820, 74, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 532, 820, 74, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "m3min"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m3min",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 750, 2120, 216, 22 ],
                    "text": "prepend m3min"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "m3max",
                    "maxclass": "flonum",
                    "maximum": 8,
                    "minimum": 0.35,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 618, 820, 74, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 618, 820, 74, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "m3max"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m3max",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 992, 2120, 216, 22 ],
                    "text": "prepend m3max"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "m3out",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 712, 820, 178, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 712, 820, 178, 19 ],
                    "text": "2.28 [base]",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "m3out"
                }
            },
            {
                "box": {
                    "checkedcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "id": "m4on",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24, 861, 24, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 861, 24, 24 ],
                    "varname": "m4on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m4on",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1234, 2120, 216, 22 ],
                    "text": "prepend m4on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "m4label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68, 861, 258, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 68, 861, 258, 20 ],
                    "text": "CONTOUR → EDGE TONE",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "m4label"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "m4input",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 339, 861, 181, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 339, 861, 181, 19 ],
                    "text": "0.68",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "m4input"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "m4min",
                    "maxclass": "flonum",
                    "maximum": 1,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 532, 861, 74, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 532, 861, 74, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "m4min"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m4min",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24, 2192, 216, 22 ],
                    "text": "prepend m4min"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "m4max",
                    "maxclass": "flonum",
                    "maximum": 1,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 618, 861, 74, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 618, 861, 74, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "m4max"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m4max",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 266, 2192, 216, 22 ],
                    "text": "prepend m4max"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "m4out",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 712, 861, 178, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 712, 861, 178, 19 ],
                    "text": "0.25 [base]",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "m4out"
                }
            },
            {
                "box": {
                    "checkedcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "id": "m5on",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24, 902, 24, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 902, 24, 24 ],
                    "varname": "m5on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m5on",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 508, 2192, 216, 22 ],
                    "text": "prepend m5on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "m5label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68, 902, 258, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 68, 902, 258, 20 ],
                    "text": "ENTROPY → ENVELOPMENT",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "m5label"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "m5input",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 339, 902, 181, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 339, 902, 181, 19 ],
                    "text": "0.49",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "m5input"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "m5min",
                    "maxclass": "flonum",
                    "maximum": 85,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 532, 902, 74, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 532, 902, 74, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "m5min"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m5min",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 750, 2192, 216, 22 ],
                    "text": "prepend m5min"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "m5max",
                    "maxclass": "flonum",
                    "maximum": 85,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 618, 902, 74, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 618, 902, 74, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "m5max"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m5max",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 992, 2192, 216, 22 ],
                    "text": "prepend m5max"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "m5out",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 712, 902, 178, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 712, 902, 178, 19 ],
                    "text": "25.00 [base]",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "m5out"
                }
            },
            {
                "box": {
                    "checkedcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "id": "m6on",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24, 943, 24, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 943, 24, 24 ],
                    "varname": "m6on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m6on",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1234, 2192, 216, 22 ],
                    "text": "prepend m6on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "m6label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68, 943, 258, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 68, 943, 258, 20 ],
                    "text": "LIGHT AZ → ROTATION / °",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "m6label"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "m6input",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 339, 943, 181, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 339, 943, 181, 19 ],
                    "text": "0.10",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "m6input"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "m6min",
                    "maxclass": "flonum",
                    "maximum": 360,
                    "minimum": -360,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 532, 943, 74, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 532, 943, 74, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "m6min"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m6min",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24, 2264, 216, 22 ],
                    "text": "prepend m6min"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "m6max",
                    "maxclass": "flonum",
                    "maximum": 360,
                    "minimum": -360,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 618, 943, 74, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 618, 943, 74, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "m6max"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_m6max",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 266, 2264, 216, 22 ],
                    "text": "prepend m6max"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "m6out",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 712, 943, 178, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 712, 943, 178, 19 ],
                    "text": "0.00 [base]",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "m6out"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "matrixnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24, 990, 861, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 990, 861, 19 ],
                    "text": "OFF = baseline · XYZ input −1…1; others 0…1 · reversed MIN/MAX inverts a mapping",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "matrixnote"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "spreadnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24, 1020, 861, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 1020, 861, 19 ],
                    "text": "Headphones: spread also opens the 4-source fan (0–150°). At 1 voice, use 4 to hear width.",
                    "textcolor": [ 0.75, 0.69, 1, 1 ],
                    "varname": "spreadnote"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 18,
                    "id": "h4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 920, 615, 536, 27 ],
                    "presentation": 1,
                    "presentation_rect": [ 920, 615, 536, 27 ],
                    "text": "04  SPAT / HEADPHONE MONITORING",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "h4"
                }
            },
            {
                "box": {
                    "embed": 0,
                    "id": "viewer",
                    "maxclass": "spat5.viewer.embedded",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 920, 657, 536, 236 ],
                    "presentation": 1,
                    "presentation_rect": [ 920, 657, 536, 236 ],
                    "varname": "viewer"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "scene_readout",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 920, 904, 536, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 920, 904, 536, 20 ],
                    "text": "Centre -145° CW  ·  elev 0°  ·  2.28 m",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "scene_readout"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.13, 0.21, 0.24, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "inspect",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 920, 977, 253, 28 ],
                    "presentation": 1,
                    "presentation_rect": [ 920, 977, 253, 28 ],
                    "text": "OPEN SPAT INSPECTOR",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "texton": "OPEN SPAT INSPECTOR",
                    "varname": "inspect"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_inspect",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 508, 2264, 216, 22 ],
                    "text": "trigger bang"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.13, 0.21, 0.24, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "reapply",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1191, 977, 265, 28 ],
                    "presentation": 1,
                    "presentation_rect": [ 1191, 977, 265, 28 ],
                    "text": "REAPPLY MAPPINGS",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "texton": "REAPPLY MAPPINGS",
                    "varname": "reapply"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_reapply",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 750, 2264, 216, 22 ],
                    "text": "prepend reapply"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11,
                    "id": "lroom",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 920, 1020, 285, 19 ],
                    "presentation": 1,
                    "presentation_rect": [ 920, 1020, 285, 19 ],
                    "text": "ROOM DECAY / perceptual units",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "lroom"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "fontname": "Arial",
                    "fontsize": 12,
                    "format": 6,
                    "id": "reverberance",
                    "maxclass": "flonum",
                    "maximum": 75,
                    "minimum": 15,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1240, 1018, 110, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 1240, 1018, 110, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "triscale": 0.8,
                    "varname": "reverberance"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_reverberance",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 992, 2264, 216, 22 ],
                    "text": "prepend reverberance"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "presetslabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24, 1067, 219, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 1067, 219, 20 ],
                    "text": "EXPERIMENT PRESETS",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ],
                    "varname": "presetslabel"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.17, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.12, 0.17, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1 ],
                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "preset",
                    "items": [ "01_NEUTRAL", ",", "02_NARROW_SHADOW", ",", "03_WIDE_PENUMBRA", ",", "04_STRONG_EDGE", ",", "05_UNSTABLE" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 265, 1064, 316, 22 ],
                    "presentation": 1,
                    "presentation_rect": [ 265, 1064, 316, 22 ],
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "preset"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "pre_preset",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1234, 2264, 216, 22 ],
                    "text": "prepend preset"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13,
                    "id": "preset_status",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 605, 1069, 849, 21 ],
                    "presentation": 1,
                    "presentation_rect": [ 605, 1069, 849, 21 ],
                    "text": "01_NEUTRAL · light-derived",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "preset_status"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "footer",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24, 1110, 1420, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 1110, 1420, 20 ],
                    "text": "1  Enable DSP     2  Sound ON     3  Raise MASTER slowly     4  Drag light     |     Presets keep your audio switch and gain.",
                    "textcolor": [ 0.52, 0.62, 0.69, 1 ],
                    "varname": "footer"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 22,
                    "id": "shelf",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24, 2416, 1410, 31 ],
                    "text": "IMPLEMENTATION / open subpatchers to inspect signal flow",
                    "textcolor": [ 0.3, 0.85, 0.72, 1 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "engine",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 24, 2486, 270, 22 ],
                    "saved_object_attributes": {
                        "filename": "dot_area_engine.js",
                        "parameter_enable": 0
                    },
                    "text": "js dot_area_engine.js"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "oper",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 350, 2486, 1090, 22 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.oper @internals 8 @initwith \"/source/number 4, /room/number 1, /speaker/number 17, /listener/editable 0, /listener/headphones/visible 1, /source/*/radius 0.2, /source/*/doppler 0\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "synthesis",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 30, 60, 1340, 440 ],
                        "gridsize": [ 10, 10 ],
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 20,
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24, 20, 1250, 30 ],
                                    "text": "FOUR SHADOW SAMPLES / independent mono signals",
                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24, 80, 30, 30 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12,
                                    "id": "route",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 24, 145, 650, 24 ],
                                    "text": "route f1 f2 f3 f4 a1 a2 a3 a4 edge cutoff"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12,
                                    "id": "v0",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 30, 60, 890, 680 ],
                                        "gridsize": [ 10, 10 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 18,
                                                    "id": "title",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24, 20, 760, 30 ],
                                                    "text": "1 / TRACE / SINE — experimental assignment",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in0",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 24, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label0",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24, 110, 190, 24 ],
                                                    "text": "frequency Hz",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in1",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 234, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 234, 110, 190, 24 ],
                                                    "text": "amplitude 0–0.16",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in2",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 444, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 444, 110, 190, 24 ],
                                                    "text": "edge harmonics",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in3",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 654, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 654, 110, 190, 24 ],
                                                    "text": "filter cutoff Hz",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "fp",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 24, 157, 140, 24 ],
                                                    "text": "pack 0. 150"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "fl",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 24, 207, 140, 24 ],
                                                    "text": "line~ 165."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "fund",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 24, 264, 105, 24 ],
                                                    "text": "cycle~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "ap",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 234, 157, 140, 24 ],
                                                    "text": "pack 0. 150"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "al",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 234, 207, 140, 24 ],
                                                    "text": "line~ 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "amp",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 234, 564, 100, 24 ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 234, 622, 30, 30 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "amp", 1 ],
                                                    "source": [ "al", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "out", 0 ],
                                                    "source": [ "amp", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "al", 0 ],
                                                    "source": [ "ap", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fund", 0 ],
                                                    "source": [ "fl", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fl", 0 ],
                                                    "source": [ "fp", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "amp", 0 ],
                                                    "source": [ "fund", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fp", 0 ],
                                                    "source": [ "in0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ap", 0 ],
                                                    "source": [ "in1", 0 ]
                                                }
                                            }
                                        ],
                                        "bgcolor": [ 0.055, 0.073, 0.092, 1 ],
                                        "editing_bgcolor": [ 0.055, 0.073, 0.092, 1 ]
                                    },
                                    "patching_rect": [ 24, 235, 260, 24 ],
                                    "saved_object_attributes": {
                                        "editing_bgcolor": [ 0.055, 0.073, 0.092, 1 ],
                                        "locked_bgcolor": [ 0.055, 0.073, 0.092, 1 ]
                                    },
                                    "text": "p CORE_A"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "out0",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24, 355, 30, 30 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12,
                                    "id": "v1",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 30, 60, 890, 680 ],
                                        "gridsize": [ 10, 10 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 18,
                                                    "id": "title",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24, 20, 760, 30 ],
                                                    "text": "2 / PENUMBRA / FILTERED NOISE — experimental assignment",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in0",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 24, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label0",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24, 110, 190, 24 ],
                                                    "text": "frequency Hz",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in1",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 234, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 234, 110, 190, 24 ],
                                                    "text": "amplitude 0–0.16",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in2",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 444, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 444, 110, 190, 24 ],
                                                    "text": "edge harmonics",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in3",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 654, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 654, 110, 190, 24 ],
                                                    "text": "filter cutoff Hz",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "fp",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 24, 157, 140, 24 ],
                                                    "text": "pack 0. 150"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "fl",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 24, 207, 140, 24 ],
                                                    "text": "line~ 165."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "fund",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 24, 264, 105, 24 ],
                                                    "text": "noise~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "ap",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 234, 157, 140, 24 ],
                                                    "text": "pack 0. 150"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "al",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 234, 207, 140, 24 ],
                                                    "text": "line~ 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "amp",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 234, 564, 100, 24 ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 234, 622, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "noiseLP",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 24, 364, 180, 24 ],
                                                    "text": "onepole~ 900."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "amp", 1 ],
                                                    "source": [ "al", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "out", 0 ],
                                                    "source": [ "amp", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "al", 0 ],
                                                    "source": [ "ap", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fl", 0 ],
                                                    "source": [ "fp", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "noiseLP", 0 ],
                                                    "source": [ "fund", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fp", 0 ],
                                                    "source": [ "in0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ap", 0 ],
                                                    "source": [ "in1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "noiseLP", 1 ],
                                                    "source": [ "in3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "amp", 0 ],
                                                    "source": [ "noiseLP", 0 ]
                                                }
                                            }
                                        ],
                                        "bgcolor": [ 0.055, 0.073, 0.092, 1 ],
                                        "editing_bgcolor": [ 0.055, 0.073, 0.092, 1 ]
                                    },
                                    "patching_rect": [ 344, 235, 260, 24 ],
                                    "saved_object_attributes": {
                                        "editing_bgcolor": [ 0.055, 0.073, 0.092, 1 ],
                                        "locked_bgcolor": [ 0.055, 0.073, 0.092, 1 ]
                                    },
                                    "text": "p CORE_B"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "out1",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 344, 355, 30, 30 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12,
                                    "id": "v2",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 30, 60, 1180, 780 ],
                                        "gridsize": [ 10, 10 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 18,
                                                    "id": "title",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24, 20, 1100, 30 ],
                                                    "text": "3 / EDGE A / SOFT CLICK — experimental assignment",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in0",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 24, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label0",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24, 110, 190, 24 ],
                                                    "text": "frequency Hz",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in1",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 234, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 234, 110, 190, 24 ],
                                                    "text": "amplitude 0–0.16",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in2",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 444, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 444, 110, 190, 24 ],
                                                    "text": "edge harmonics",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in3",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 654, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 654, 110, 190, 24 ],
                                                    "text": "filter cutoff Hz",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "fp",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 24, 157, 140, 24 ],
                                                    "text": "pack 0. 150"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "fl",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 24, 207, 140, 24 ],
                                                    "text": "line~ 165."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "fund",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 24, 264, 105, 24 ],
                                                    "text": "cycle~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "ap",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 234, 157, 140, 24 ],
                                                    "text": "pack 0. 150"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "al",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 234, 207, 140, 24 ],
                                                    "text": "line~ 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "ep",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 444, 157, 140, 24 ],
                                                    "text": "pack 0. 150"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "el",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 444, 207, 140, 24 ],
                                                    "text": "line~ 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "third",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 444, 264, 105, 24 ],
                                                    "text": "*~ 3."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "fifth",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 654, 264, 105, 24 ],
                                                    "text": "*~ 5."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "c3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 444, 314, 105, 24 ],
                                                    "text": "cycle~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "c5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 654, 314, 105, 24 ],
                                                    "text": "cycle~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "g3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 444, 364, 140, 24 ],
                                                    "text": "*~ 0.333333"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "g5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 654, 364, 105, 24 ],
                                                    "text": "*~ 0.2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "odd",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 444, 414, 105, 24 ],
                                                    "text": "+~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "edge",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 444, 464, 105, 24 ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "sum",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 24, 464, 105, 24 ],
                                                    "text": "+~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "norm",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 24, 514, 105, 24 ],
                                                    "text": "*~ 0.65"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "amp",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 234, 564, 100, 24 ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 540, 720, 90, 24 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pulseClock",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 900, 160, 210, 24 ],
                                                    "text": "phasor~ 1.4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pulseGate",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 900, 225, 210, 24 ],
                                                    "text": "<~ .045"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "soften",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 900, 300, 210, 24 ],
                                                    "text": "slide~ 96 700"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pulseAmp",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 540, 640, 120, 24 ],
                                                    "text": "*~"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "amp", 1 ],
                                                    "source": [ "al", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pulseAmp", 0 ],
                                                    "source": [ "amp", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "al", 0 ],
                                                    "source": [ "ap", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "g3", 0 ],
                                                    "source": [ "c3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "g5", 0 ],
                                                    "source": [ "c5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "sum", 1 ],
                                                    "source": [ "edge", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "edge", 1 ],
                                                    "source": [ "el", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "el", 0 ],
                                                    "source": [ "ep", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "c5", 0 ],
                                                    "source": [ "fifth", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fifth", 0 ],
                                                    "order": 0,
                                                    "source": [ "fl", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fund", 0 ],
                                                    "order": 2,
                                                    "source": [ "fl", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "third", 0 ],
                                                    "order": 1,
                                                    "source": [ "fl", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fl", 0 ],
                                                    "source": [ "fp", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "sum", 0 ],
                                                    "source": [ "fund", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "odd", 0 ],
                                                    "source": [ "g3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "odd", 1 ],
                                                    "source": [ "g5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fp", 0 ],
                                                    "source": [ "in0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ap", 0 ],
                                                    "source": [ "in1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ep", 0 ],
                                                    "source": [ "in2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "amp", 0 ],
                                                    "source": [ "norm", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "edge", 0 ],
                                                    "source": [ "odd", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "out", 0 ],
                                                    "source": [ "pulseAmp", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pulseGate", 0 ],
                                                    "source": [ "pulseClock", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "soften", 0 ],
                                                    "source": [ "pulseGate", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pulseAmp", 1 ],
                                                    "source": [ "soften", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "norm", 0 ],
                                                    "source": [ "sum", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "c3", 0 ],
                                                    "source": [ "third", 0 ]
                                                }
                                            }
                                        ],
                                        "bgcolor": [ 0.055, 0.073, 0.092, 1 ],
                                        "editing_bgcolor": [ 0.055, 0.073, 0.092, 1 ]
                                    },
                                    "patching_rect": [ 664, 235, 260, 24 ],
                                    "saved_object_attributes": {
                                        "editing_bgcolor": [ 0.055, 0.073, 0.092, 1 ],
                                        "locked_bgcolor": [ 0.055, 0.073, 0.092, 1 ]
                                    },
                                    "text": "p EDGE"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "out2",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 664, 355, 30, 30 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12,
                                    "id": "v3",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 30, 60, 1180, 780 ],
                                        "gridsize": [ 10, 10 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 18,
                                                    "id": "title",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24, 20, 1100, 30 ],
                                                    "text": "4 / EDGE B / SOFT CLICK — experimental assignment",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in0",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 24, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label0",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24, 110, 190, 24 ],
                                                    "text": "frequency Hz",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in1",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 234, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 234, 110, 190, 24 ],
                                                    "text": "amplitude 0–0.16",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in2",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 444, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 444, 110, 190, 24 ],
                                                    "text": "edge harmonics",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in3",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 654, 76, 30, 30 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "label3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 654, 110, 190, 24 ],
                                                    "text": "filter cutoff Hz",
                                                    "textcolor": [ 0.86, 0.9, 0.94, 1 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "fp",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 24, 157, 140, 24 ],
                                                    "text": "pack 0. 150"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "fl",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 24, 207, 140, 24 ],
                                                    "text": "line~ 165."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "fund",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 24, 264, 105, 24 ],
                                                    "text": "cycle~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "ap",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 234, 157, 140, 24 ],
                                                    "text": "pack 0. 150"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "al",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 234, 207, 140, 24 ],
                                                    "text": "line~ 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "cut",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 654, 157, 140, 24 ],
                                                    "text": "pack 0. 150"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "cl",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 654, 207, 140, 24 ],
                                                    "text": "line~ 800."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "filter",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 24, 364, 170, 24 ],
                                                    "text": "onepole~ 800."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12,
                                                    "id": "amp",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 234, 564, 100, 24 ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 540, 720, 90, 24 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pulseClock",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 900, 160, 210, 24 ],
                                                    "text": "phasor~ .83"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pulseGate",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 900, 225, 210, 24 ],
                                                    "text": "<~ .07"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "soften",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 900, 300, 210, 24 ],
                                                    "text": "slide~ 96 1400"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pulseAmp",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 540, 640, 120, 24 ],
                                                    "text": "*~"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "amp", 1 ],
                                                    "source": [ "al", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pulseAmp", 0 ],
                                                    "source": [ "amp", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "al", 0 ],
                                                    "source": [ "ap", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "filter", 1 ],
                                                    "source": [ "cl", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "cl", 0 ],
                                                    "source": [ "cut", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "amp", 0 ],
                                                    "source": [ "filter", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fund", 0 ],
                                                    "source": [ "fl", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fl", 0 ],
                                                    "source": [ "fp", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "filter", 0 ],
                                                    "source": [ "fund", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fp", 0 ],
                                                    "source": [ "in0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ap", 0 ],
                                                    "source": [ "in1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "cut", 0 ],
                                                    "source": [ "in3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "out", 0 ],
                                                    "source": [ "pulseAmp", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pulseGate", 0 ],
                                                    "source": [ "pulseClock", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "soften", 0 ],
                                                    "source": [ "pulseGate", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pulseAmp", 1 ],
                                                    "source": [ "soften", 0 ]
                                                }
                                            }
                                        ],
                                        "bgcolor": [ 0.055, 0.073, 0.092, 1 ],
                                        "editing_bgcolor": [ 0.055, 0.073, 0.092, 1 ]
                                    },
                                    "patching_rect": [ 984, 235, 260, 24 ],
                                    "saved_object_attributes": {
                                        "editing_bgcolor": [ 0.055, 0.073, 0.092, 1 ],
                                        "locked_bgcolor": [ 0.055, 0.073, 0.092, 1 ]
                                    },
                                    "text": "p PENUMBRA"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "out3",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 984, 355, 30, 30 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "route", 0 ],
                                    "source": [ "in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "v0", 1 ],
                                    "source": [ "route", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "v0", 0 ],
                                    "source": [ "route", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "v1", 3 ],
                                    "order": 1,
                                    "source": [ "route", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "v1", 1 ],
                                    "source": [ "route", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "v1", 0 ],
                                    "source": [ "route", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "v2", 2 ],
                                    "source": [ "route", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "v2", 1 ],
                                    "source": [ "route", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "v2", 0 ],
                                    "source": [ "route", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "v3", 3 ],
                                    "order": 0,
                                    "source": [ "route", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "v3", 1 ],
                                    "source": [ "route", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "v3", 0 ],
                                    "source": [ "route", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out0", 0 ],
                                    "source": [ "v0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out1", 0 ],
                                    "source": [ "v1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out2", 0 ],
                                    "source": [ "v2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out3", 0 ],
                                    "source": [ "v3", 0 ]
                                }
                            }
                        ],
                        "bgcolor": [ 0.055, 0.073, 0.092, 1 ],
                        "editing_bgcolor": [ 0.055, 0.073, 0.092, 1 ]
                    },
                    "patching_rect": [ 24, 2566, 270, 22 ],
                    "saved_object_attributes": {
                        "editing_bgcolor": [ 0.055, 0.073, 0.092, 1 ],
                        "locked_bgcolor": [ 0.055, 0.073, 0.092, 1 ]
                    },
                    "text": "p FOUR_VOICES"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "audio",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 0,
                            "revision": 0,
                            "architecture": "arm64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 50, 70, 1610, 1050 ],
                        "openinpresentation": 0,
                        "bgcolor": [ 0.075, 0.12, 0.12, 1 ],
                        "default_fontname": "Arial",
                        "default_fontsize": 12,
                        "boxes": [
                            {
                                "box": {
                                    "id": "h",
                                    "maxclass": "comment",
                                    "text": "DIRECT A / MULTICHANNEL + VIRTUALSPEAKERS B / 200 ms crossfade",
                                    "patching_rect": [ 24, 20, 1540, 30 ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "textcolor": [ 0.78, 0.88, 0.83, 1 ],
                                    "fontsize": 22
                                }
                            },
                            {
                                "box": {
                                    "id": "in0",
                                    "maxclass": "newobj",
                                    "text": "inlet",
                                    "patching_rect": [ 24, 80, 55, 24 ],
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "index": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "l0",
                                    "maxclass": "comment",
                                    "text": "oper control",
                                    "patching_rect": [ 24, 114, 125, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "textcolor": [ 0.78, 0.88, 0.83, 1 ],
                                    "fontsize": 10
                                }
                            },
                            {
                                "box": {
                                    "id": "in1",
                                    "maxclass": "newobj",
                                    "text": "inlet",
                                    "patching_rect": [ 156, 80, 55, 24 ],
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "index": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "l1",
                                    "maxclass": "comment",
                                    "text": "virtual coordinates",
                                    "patching_rect": [ 156, 114, 125, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "textcolor": [ 0.78, 0.88, 0.83, 1 ],
                                    "fontsize": 10
                                }
                            },
                            {
                                "box": {
                                    "id": "in2",
                                    "maxclass": "newobj",
                                    "text": "inlet",
                                    "patching_rect": [ 288, 80, 55, 24 ],
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "index": 3
                                }
                            },
                            {
                                "box": {
                                    "id": "l2",
                                    "maxclass": "comment",
                                    "text": "source 1",
                                    "patching_rect": [ 288, 114, 125, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "textcolor": [ 0.78, 0.88, 0.83, 1 ],
                                    "fontsize": 10
                                }
                            },
                            {
                                "box": {
                                    "id": "in3",
                                    "maxclass": "newobj",
                                    "text": "inlet",
                                    "patching_rect": [ 420, 80, 55, 24 ],
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "index": 4
                                }
                            },
                            {
                                "box": {
                                    "id": "l3",
                                    "maxclass": "comment",
                                    "text": "source 2",
                                    "patching_rect": [ 420, 114, 125, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "textcolor": [ 0.78, 0.88, 0.83, 1 ],
                                    "fontsize": 10
                                }
                            },
                            {
                                "box": {
                                    "id": "in4",
                                    "maxclass": "newobj",
                                    "text": "inlet",
                                    "patching_rect": [ 552, 80, 55, 24 ],
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "index": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "l4",
                                    "maxclass": "comment",
                                    "text": "source 3",
                                    "patching_rect": [ 552, 114, 125, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "textcolor": [ 0.78, 0.88, 0.83, 1 ],
                                    "fontsize": 10
                                }
                            },
                            {
                                "box": {
                                    "id": "in5",
                                    "maxclass": "newobj",
                                    "text": "inlet",
                                    "patching_rect": [ 684, 80, 55, 24 ],
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "index": 6
                                }
                            },
                            {
                                "box": {
                                    "id": "l5",
                                    "maxclass": "comment",
                                    "text": "source 4",
                                    "patching_rect": [ 684, 114, 125, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "textcolor": [ 0.78, 0.88, 0.83, 1 ],
                                    "fontsize": 10
                                }
                            },
                            {
                                "box": {
                                    "id": "in10",
                                    "maxclass": "newobj",
                                    "text": "inlet",
                                    "patching_rect": [ 1344, 80, 55, 24 ],
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "index": 7
                                }
                            },
                            {
                                "box": {
                                    "id": "l10",
                                    "maxclass": "comment",
                                    "text": "A/B 0…1",
                                    "patching_rect": [ 1344, 114, 125, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "textcolor": [ 0.78, 0.88, 0.83, 1 ],
                                    "fontsize": 10
                                }
                            },
                            {
                                "box": {
                                    "id": "in11",
                                    "maxclass": "newobj",
                                    "text": "inlet",
                                    "patching_rect": [ 1476, 80, 55, 24 ],
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "index": 8
                                }
                            },
                            {
                                "box": {
                                    "id": "l11",
                                    "maxclass": "comment",
                                    "text": "master 0…1 / unity",
                                    "patching_rect": [ 1476, 114, 125, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "textcolor": [ 0.78, 0.88, 0.83, 1 ],
                                    "fontsize": 10
                                }
                            },
                            {
                                "box": {
                                    "id": "filter",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.ignore /speaker /speakers",
                                    "patching_rect": [ 24, 190, 390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "direct",
                                    "maxclass": "newobj",
                                    "text": "spat5.spat~ @inputs 4 @outputs 2 @rooms 1 @internals 8 @initwith \"/panning/type binaural\"",
                                    "patching_rect": [ 24, 260, 760, 24 ],
                                    "numinlets": 4,
                                    "numoutlets": 3
                                }
                            },
                            {
                                "box": {
                                    "id": "multi",
                                    "maxclass": "newobj",
                                    "text": "spat5.spat~ @inputs 4 @outputs 17 @rooms 1 @internals 8 @initwith \"/panning/type knn\"",
                                    "patching_rect": [ 830, 260, 760, 24 ],
                                    "numinlets": 4,
                                    "numoutlets": 18
                                }
                            },
                            {
                                "box": {
                                    "id": "virtual",
                                    "maxclass": "newobj",
                                    "text": "spat5.virtualspeakers~ @speakers 17",
                                    "patching_rect": [ 830, 375, 520, 24 ],
                                    "numinlets": 17,
                                    "numoutlets": 3
                                }
                            },
                            {
                                "box": {
                                    "id": "mixpack",
                                    "maxclass": "newobj",
                                    "text": "pack 0. 200",
                                    "patching_rect": [ 24, 445, 175, 24 ],
                                    "numinlets": 2,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "mixline",
                                    "maxclass": "newobj",
                                    "text": "line~ 0.",
                                    "patching_rect": [ 235, 445, 160, 24 ],
                                    "numinlets": 2,
                                    "numoutlets": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "inverse",
                                    "maxclass": "newobj",
                                    "text": "!-~ 1.",
                                    "patching_rect": [ 435, 445, 160, 24 ],
                                    "numinlets": 2,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "gainpack",
                                    "maxclass": "newobj",
                                    "text": "pack 0. 150",
                                    "patching_rect": [ 1060, 445, 180, 24 ],
                                    "numinlets": 2,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "gainline",
                                    "maxclass": "newobj",
                                    "text": "line~ 0.",
                                    "patching_rect": [ 1280, 445, 180, 24 ],
                                    "numinlets": 2,
                                    "numoutlets": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "a0",
                                    "maxclass": "newobj",
                                    "text": "*~",
                                    "patching_rect": [ 24, 550, 140, 24 ],
                                    "numinlets": 2,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "b0",
                                    "maxclass": "newobj",
                                    "text": "*~",
                                    "patching_rect": [ 254, 550, 140, 24 ],
                                    "numinlets": 2,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "sum0",
                                    "maxclass": "newobj",
                                    "text": "+~",
                                    "patching_rect": [ 24, 650, 140, 24 ],
                                    "numinlets": 2,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "gain0",
                                    "maxclass": "newobj",
                                    "text": "*~",
                                    "patching_rect": [ 24, 740, 140, 24 ],
                                    "numinlets": 2,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "clip0",
                                    "maxclass": "newobj",
                                    "text": "clip~ -0.95 0.95",
                                    "patching_rect": [ 24, 830, 190, 24 ],
                                    "numinlets": 3,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "out0",
                                    "maxclass": "newobj",
                                    "text": "outlet",
                                    "patching_rect": [ 24, 935, 80, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "index": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "a1",
                                    "maxclass": "newobj",
                                    "text": "*~",
                                    "patching_rect": [ 844, 550, 140, 24 ],
                                    "numinlets": 2,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "b1",
                                    "maxclass": "newobj",
                                    "text": "*~",
                                    "patching_rect": [ 1074, 550, 140, 24 ],
                                    "numinlets": 2,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "sum1",
                                    "maxclass": "newobj",
                                    "text": "+~",
                                    "patching_rect": [ 844, 650, 140, 24 ],
                                    "numinlets": 2,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "gain1",
                                    "maxclass": "newobj",
                                    "text": "*~",
                                    "patching_rect": [ 844, 740, 140, 24 ],
                                    "numinlets": 2,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "clip1",
                                    "maxclass": "newobj",
                                    "text": "clip~ -0.95 0.95",
                                    "patching_rect": [ 844, 830, 190, 24 ],
                                    "numinlets": 3,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "out1",
                                    "maxclass": "newobj",
                                    "text": "outlet",
                                    "patching_rect": [ 844, 935, 80, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "index": 2
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [ "in0", 0 ],
                                    "destination": [ "filter", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "filter", 0 ],
                                    "destination": [ "direct", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in0", 0 ],
                                    "destination": [ "multi", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in2", 0 ],
                                    "destination": [ "direct", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in2", 0 ],
                                    "destination": [ "multi", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in3", 0 ],
                                    "destination": [ "direct", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in3", 0 ],
                                    "destination": [ "multi", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in4", 0 ],
                                    "destination": [ "direct", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in4", 0 ],
                                    "destination": [ "multi", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in5", 0 ],
                                    "destination": [ "direct", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in5", 0 ],
                                    "destination": [ "multi", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in1", 0 ],
                                    "destination": [ "virtual", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 0 ],
                                    "destination": [ "virtual", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 1 ],
                                    "destination": [ "virtual", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 2 ],
                                    "destination": [ "virtual", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 3 ],
                                    "destination": [ "virtual", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 4 ],
                                    "destination": [ "virtual", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 5 ],
                                    "destination": [ "virtual", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 6 ],
                                    "destination": [ "virtual", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 7 ],
                                    "destination": [ "virtual", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 8 ],
                                    "destination": [ "virtual", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 9 ],
                                    "destination": [ "virtual", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 10 ],
                                    "destination": [ "virtual", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 11 ],
                                    "destination": [ "virtual", 11 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 12 ],
                                    "destination": [ "virtual", 12 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 13 ],
                                    "destination": [ "virtual", 13 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 14 ],
                                    "destination": [ "virtual", 14 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 15 ],
                                    "destination": [ "virtual", 15 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "multi", 16 ],
                                    "destination": [ "virtual", 16 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in10", 0 ],
                                    "destination": [ "mixpack", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "mixpack", 0 ],
                                    "destination": [ "mixline", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "mixline", 0 ],
                                    "destination": [ "inverse", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in11", 0 ],
                                    "destination": [ "gainpack", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "gainpack", 0 ],
                                    "destination": [ "gainline", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "direct", 0 ],
                                    "destination": [ "a0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "inverse", 0 ],
                                    "destination": [ "a0", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "virtual", 0 ],
                                    "destination": [ "b0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "mixline", 0 ],
                                    "destination": [ "b0", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "a0", 0 ],
                                    "destination": [ "sum0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "b0", 0 ],
                                    "destination": [ "sum0", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "sum0", 0 ],
                                    "destination": [ "gain0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "gainline", 0 ],
                                    "destination": [ "gain0", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "gain0", 0 ],
                                    "destination": [ "clip0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "clip0", 0 ],
                                    "destination": [ "out0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "direct", 1 ],
                                    "destination": [ "a1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "inverse", 0 ],
                                    "destination": [ "a1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "virtual", 1 ],
                                    "destination": [ "b1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "mixline", 0 ],
                                    "destination": [ "b1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "a1", 0 ],
                                    "destination": [ "sum1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "b1", 0 ],
                                    "destination": [ "sum1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "sum1", 0 ],
                                    "destination": [ "gain1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "gainline", 0 ],
                                    "destination": [ "gain1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "gain1", 0 ],
                                    "destination": [ "clip1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "clip1", 0 ],
                                    "destination": [ "out1", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 350, 2566, 330, 22 ],
                    "saved_object_attributes": {
                        "editing_bgcolor": [ 0.055, 0.073, 0.092, 1 ],
                        "locked_bgcolor": [ 0.055, 0.073, 0.092, 1 ]
                    },
                    "text": "p HEADPHONE_A_B"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 24, 2646, 120, 22 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "defer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 180, 2646, 130, 22 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "delay",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 350, 2646, 130, 22 ],
                    "text": "delay 100"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "init",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 520, 2646, 100, 22 ],
                    "text": "init"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "clock",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 720, 2646, 140, 22 ],
                    "text": "qmetro 40"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "clock_on",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920, 2646, 150, 22 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "tick",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1130, 2646, 100, 22 ],
                    "text": "tick"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "openoper",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 720, 2566, 180, 22 ],
                    "text": "/window/open"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "monlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24, 1163, 355, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 1163, 355, 24 ],
                    "text": "HEADPHONE MONITORING",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "monlabel"
                }
            },
            {
                "box": {
                    "id": "monitoring",
                    "items": [ "DIRECT BINAURAL", ",", "VIRTUAL SPEAKERS" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24, 1200, 350, 28 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 1200, 350, 28 ],
                    "varname": "monitoring"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "mutelabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 410, 1163, 600, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 410, 1163, 600, 24 ],
                    "text": "INDIVIDUAL MUTE · experimental source identities",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "mutelabel"
                }
            },
            {
                "box": {
                    "id": "mute1",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 410, 1200, 24, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 410, 1200, 24, 24 ],
                    "varname": "mute1"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "mutetext0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 447, 1201, 100, 23 ],
                    "presentation": 1,
                    "presentation_rect": [ 447, 1201, 100, 23 ],
                    "text": "SINE",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "mutetext0"
                }
            },
            {
                "box": {
                    "id": "pre_mute0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24, 3620, 325, 24 ],
                    "text": "prepend mute1"
                }
            },
            {
                "box": {
                    "id": "mute2",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 560, 1200, 24, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 560, 1200, 24, 24 ],
                    "varname": "mute2"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "mutetext1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 597, 1201, 100, 23 ],
                    "presentation": 1,
                    "presentation_rect": [ 597, 1201, 100, 23 ],
                    "text": "NOISE",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "mutetext1"
                }
            },
            {
                "box": {
                    "id": "pre_mute1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 384, 3620, 325, 24 ],
                    "text": "prepend mute2"
                }
            },
            {
                "box": {
                    "id": "mute3",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 710, 1200, 24, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 710, 1200, 24, 24 ],
                    "varname": "mute3"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "mutetext2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 747, 1201, 100, 23 ],
                    "presentation": 1,
                    "presentation_rect": [ 747, 1201, 100, 23 ],
                    "text": "CLICK A",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "mutetext2"
                }
            },
            {
                "box": {
                    "id": "pre_mute2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 744, 3620, 325, 24 ],
                    "text": "prepend mute3"
                }
            },
            {
                "box": {
                    "id": "mute4",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 860, 1200, 24, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 860, 1200, 24, 24 ],
                    "varname": "mute4"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "mutetext3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 897, 1201, 100, 23 ],
                    "presentation": 1,
                    "presentation_rect": [ 897, 1201, 100, 23 ],
                    "text": "CLICK B",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "mutetext3"
                }
            },
            {
                "box": {
                    "id": "pre_mute3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1104, 3620, 325, 24 ],
                    "text": "prepend mute4"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "meterslabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1050, 1163, 390, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 1050, 1163, 390, 24 ],
                    "text": "STEREO MASTER / BEFORE DAC",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "meterslabel"
                }
            },
            {
                "box": {
                    "id": "meterL",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1050, 1200, 365, 18 ],
                    "presentation": 1,
                    "presentation_rect": [ 1050, 1200, 365, 18 ],
                    "varname": "meterL"
                }
            },
            {
                "box": {
                    "id": "meterR",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1050, 1235, 365, 18 ],
                    "presentation": 1,
                    "presentation_rect": [ 1050, 1235, 365, 18 ],
                    "varname": "meterR"
                }
            },
            {
                "box": {
                    "id": "web",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24, 1280, 24, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 1280, 24, 24 ],
                    "varname": "web"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "weblabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 64, 1280, 385, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 64, 1280, 385, 24 ],
                    "text": "WEB / INSPECTOR OWNS POSITION",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "weblabel"
                }
            },
            {
                "box": {
                    "id": "pre_web",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24, 3685, 325, 24 ],
                    "text": "prepend web"
                }
            },
            {
                "box": {
                    "id": "local",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470, 1278, 200, 27 ],
                    "presentation": 1,
                    "presentation_rect": [ 470, 1278, 200, 27 ],
                    "text": "local",
                    "varname": "local"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "localhint",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 470, 1316, 245, 23 ],
                    "presentation": 1,
                    "presentation_rect": [ 470, 1316, 245, 23 ],
                    "text": "↑ LOCAL MAPPINGS",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "localhint"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "rxlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 930, 1278, 130, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 930, 1278, 130, 24 ],
                    "text": "MAX RECEIVE UDP",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "rxlabel"
                }
            },
            {
                "box": {
                    "id": "receiveport",
                    "maxclass": "number",
                    "maximum": 65535,
                    "minimum": 1024,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1070, 1278, 90, 27 ],
                    "presentation": 1,
                    "presentation_rect": [ 1070, 1278, 90, 27 ],
                    "varname": "receiveport"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "txlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1170, 1278, 140, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 1170, 1278, 140, 24 ],
                    "text": "MAX SEND UDP",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "txlabel"
                }
            },
            {
                "box": {
                    "id": "sendport",
                    "maxclass": "number",
                    "maximum": 65535,
                    "minimum": 1024,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1320, 1278, 130, 27 ],
                    "presentation": 1,
                    "presentation_rect": [ 1320, 1278, 130, 27 ],
                    "varname": "sendport"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "osc_status",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24, 1350, 1010, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 1350, 1010, 24 ],
                    "text": "OSC waiting · start the WebGL bridge once",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "osc_status"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "selectedlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1080, 1348, 180, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 1080, 1348, 180, 24 ],
                    "text": "SELECT SOURCE",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "selectedlabel"
                }
            },
            {
                "box": {
                    "id": "selected",
                    "maxclass": "number",
                    "maximum": 4,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1280, 1348, 120, 27 ],
                    "presentation": 1,
                    "presentation_rect": [ 1280, 1348, 120, 27 ],
                    "varname": "selected"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "network_hint",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24, 1390, 1410, 24 ],
                    "presentation": 1,
                    "presentation_rect": [ 24, 1390, 1410, 24 ],
                    "text": "Config: webgl/bridge/config.json · one Max receiver only · 4 active identities maximum · no browser audio enable",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "network_hint"
                }
            },
            {
                "box": {
                    "id": "networkctl",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 7,
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 24, 3300, 500, 26 ],
                    "saved_object_attributes": {
                        "filename": "dot_area_link.js",
                        "parameter_enable": 0
                    },
                    "text": "js dot_area_link.js"
                }
            },
            {
                "box": {
                    "id": "osc_recv",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 600, 3200, 750, 26 ],
                    "text": "spat5.osc.udpreceive @port 9000"
                }
            },
            {
                "box": {
                    "id": "osc_decode",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "classnamespace": "box",
                        "rect": [ 50, 70, 1460, 2430 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "newobj",
                                    "text": "inlet",
                                    "patching_rect": [ 24, 30, 70, 24 ],
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "index": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route0",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /source/1/xyz /source/1/dist /source/1/spread /source/1/prer",
                                    "patching_rect": [ 24, 100, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre0",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/1/xyz",
                                    "patching_rect": [ 24, 153, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre1",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/1/dist",
                                    "patching_rect": [ 378, 153, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre2",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/1/spread",
                                    "patching_rect": [ 732, 153, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre3",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/1/prer",
                                    "patching_rect": [ 1086, 153, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route4",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /source/1/env /source/1/select /source/2/xyz /source/2/dist",
                                    "patching_rect": [ 24, 230, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre4",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/1/env",
                                    "patching_rect": [ 24, 283, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre5",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/1/select",
                                    "patching_rect": [ 378, 283, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre6",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/2/xyz",
                                    "patching_rect": [ 732, 283, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre7",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/2/dist",
                                    "patching_rect": [ 1086, 283, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route8",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /source/2/spread /source/2/prer /source/2/env /source/2/select",
                                    "patching_rect": [ 24, 360, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre8",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/2/spread",
                                    "patching_rect": [ 24, 413, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre9",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/2/prer",
                                    "patching_rect": [ 378, 413, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre10",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/2/env",
                                    "patching_rect": [ 732, 413, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre11",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/2/select",
                                    "patching_rect": [ 1086, 413, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route12",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /source/3/xyz /source/3/dist /source/3/spread /source/3/prer",
                                    "patching_rect": [ 24, 490, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre12",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/3/xyz",
                                    "patching_rect": [ 24, 543, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre13",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/3/dist",
                                    "patching_rect": [ 378, 543, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre14",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/3/spread",
                                    "patching_rect": [ 732, 543, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre15",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/3/prer",
                                    "patching_rect": [ 1086, 543, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route16",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /source/3/env /source/3/select /source/4/xyz /source/4/dist",
                                    "patching_rect": [ 24, 620, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre16",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/3/env",
                                    "patching_rect": [ 24, 673, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre17",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/3/select",
                                    "patching_rect": [ 378, 673, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre18",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/4/xyz",
                                    "patching_rect": [ 732, 673, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre19",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/4/dist",
                                    "patching_rect": [ 1086, 673, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route20",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /source/4/spread /source/4/prer /source/4/env /source/4/select",
                                    "patching_rect": [ 24, 750, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre20",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/4/spread",
                                    "patching_rect": [ 24, 803, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre21",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/4/prer",
                                    "patching_rect": [ 378, 803, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre22",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/4/env",
                                    "patching_rect": [ 732, 803, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre23",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/4/select",
                                    "patching_rect": [ 1086, 803, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route24",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /speaker/1/xyz /speaker/2/xyz /speaker/3/xyz /speaker/4/xyz",
                                    "patching_rect": [ 24, 880, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre24",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/1/xyz",
                                    "patching_rect": [ 24, 933, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre25",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/2/xyz",
                                    "patching_rect": [ 378, 933, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre26",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/3/xyz",
                                    "patching_rect": [ 732, 933, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre27",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/4/xyz",
                                    "patching_rect": [ 1086, 933, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route28",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /speaker/5/xyz /speaker/6/xyz /speaker/7/xyz /speaker/8/xyz",
                                    "patching_rect": [ 24, 1010, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre28",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/5/xyz",
                                    "patching_rect": [ 24, 1063, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre29",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/6/xyz",
                                    "patching_rect": [ 378, 1063, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre30",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/7/xyz",
                                    "patching_rect": [ 732, 1063, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre31",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/8/xyz",
                                    "patching_rect": [ 1086, 1063, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route32",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /speaker/9/xyz /speaker/10/xyz /speaker/11/xyz /speaker/12/xyz",
                                    "patching_rect": [ 24, 1140, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre32",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/9/xyz",
                                    "patching_rect": [ 24, 1193, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre33",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/10/xyz",
                                    "patching_rect": [ 378, 1193, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre34",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/11/xyz",
                                    "patching_rect": [ 732, 1193, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre35",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/12/xyz",
                                    "patching_rect": [ 1086, 1193, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route36",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /speaker/13/xyz /speaker/14/xyz /speaker/15/xyz /speaker/16/xyz",
                                    "patching_rect": [ 24, 1270, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre36",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/13/xyz",
                                    "patching_rect": [ 24, 1323, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre37",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/14/xyz",
                                    "patching_rect": [ 378, 1323, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre38",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/15/xyz",
                                    "patching_rect": [ 732, 1323, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre39",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/16/xyz",
                                    "patching_rect": [ 1086, 1323, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route40",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /speaker/17/xyz /sources/xyz /speakers/xyz /dotarea/source/count",
                                    "patching_rect": [ 24, 1400, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre40",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/17/xyz",
                                    "patching_rect": [ 24, 1453, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre41",
                                    "maxclass": "newobj",
                                    "text": "prepend /sources/xyz",
                                    "patching_rect": [ 378, 1453, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre42",
                                    "maxclass": "newobj",
                                    "text": "prepend /speakers/xyz",
                                    "patching_rect": [ 732, 1453, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre43",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/source/count",
                                    "patching_rect": [ 1086, 1453, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route44",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /dotarea/source/selected /dotarea/monitoring/mode /dotarea/state/request /dotarea/listener/xyz",
                                    "patching_rect": [ 24, 1530, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre44",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/source/selected",
                                    "patching_rect": [ 24, 1583, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre45",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/monitoring/mode",
                                    "patching_rect": [ 378, 1583, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre46",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/state/request",
                                    "patching_rect": [ 732, 1583, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre47",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/listener/xyz",
                                    "patching_rect": [ 1086, 1583, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route48",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /dotarea/listener/yaw /dotarea/light/xyz /dotarea/light/target/xyz /dotarea/light/intensity",
                                    "patching_rect": [ 24, 1660, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre48",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/listener/yaw",
                                    "patching_rect": [ 24, 1713, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre49",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/light/xyz",
                                    "patching_rect": [ 378, 1713, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre50",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/light/target/xyz",
                                    "patching_rect": [ 732, 1713, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre51",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/light/intensity",
                                    "patching_rect": [ 1086, 1713, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route52",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /dotarea/subwoofer/xyz /dotarea/robot/j1 /dotarea/robot/j2 /dotarea/robot/j3",
                                    "patching_rect": [ 24, 1790, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre52",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/subwoofer/xyz",
                                    "patching_rect": [ 24, 1843, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre53",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/robot/j1",
                                    "patching_rect": [ 378, 1843, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre54",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/robot/j2",
                                    "patching_rect": [ 732, 1843, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre55",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/robot/j3",
                                    "patching_rect": [ 1086, 1843, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route56",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /dotarea/robot/j4 /dotarea/robot/j5 /dotarea/robot/j6 /dotarea/shadow/centroid",
                                    "patching_rect": [ 24, 1920, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre56",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/robot/j4",
                                    "patching_rect": [ 24, 1973, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre57",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/robot/j5",
                                    "patching_rect": [ 378, 1973, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre58",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/robot/j6",
                                    "patching_rect": [ 732, 1973, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre59",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/shadow/centroid",
                                    "patching_rect": [ 1086, 1973, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route60",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /dotarea/shadow/area /dotarea/shadow/penumbra /dotarea/shadow/density /dotarea/shadow/entropy",
                                    "patching_rect": [ 24, 2050, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre60",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/shadow/area",
                                    "patching_rect": [ 24, 2103, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre61",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/shadow/penumbra",
                                    "patching_rect": [ 378, 2103, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre62",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/shadow/density",
                                    "patching_rect": [ 732, 2103, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre63",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/shadow/entropy",
                                    "patching_rect": [ 1086, 2103, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route64",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /dotarea/motion/play /dotarea/motion/stop /dotarea/motion/speed /dotarea/motion/preset",
                                    "patching_rect": [ 24, 2180, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre64",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/motion/play",
                                    "patching_rect": [ 24, 2233, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre65",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/motion/stop",
                                    "patching_rect": [ 378, 2233, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre66",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/motion/speed",
                                    "patching_rect": [ 732, 2233, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre67",
                                    "maxclass": "newobj",
                                    "text": "prepend /dotarea/motion/preset",
                                    "patching_rect": [ 1086, 2233, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "newobj",
                                    "text": "outlet",
                                    "patching_rect": [ 24, 2340, 70, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "index": 1
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route0", 0 ],
                                    "destination": [ "pre0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre0", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route0", 1 ],
                                    "destination": [ "pre1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre1", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route0", 2 ],
                                    "destination": [ "pre2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre2", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route0", 3 ],
                                    "destination": [ "pre3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre3", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route4", 0 ],
                                    "destination": [ "pre4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre4", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route4", 1 ],
                                    "destination": [ "pre5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre5", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route4", 2 ],
                                    "destination": [ "pre6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre6", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route4", 3 ],
                                    "destination": [ "pre7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre7", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route8", 0 ],
                                    "destination": [ "pre8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre8", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route8", 1 ],
                                    "destination": [ "pre9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre9", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route8", 2 ],
                                    "destination": [ "pre10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre10", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route8", 3 ],
                                    "destination": [ "pre11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre11", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route12", 0 ],
                                    "destination": [ "pre12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre12", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route12", 1 ],
                                    "destination": [ "pre13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre13", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route12", 2 ],
                                    "destination": [ "pre14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre14", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route12", 3 ],
                                    "destination": [ "pre15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre15", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route16", 0 ],
                                    "destination": [ "pre16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre16", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route16", 1 ],
                                    "destination": [ "pre17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre17", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route16", 2 ],
                                    "destination": [ "pre18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre18", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route16", 3 ],
                                    "destination": [ "pre19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre19", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route20", 0 ],
                                    "destination": [ "pre20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre20", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route20", 1 ],
                                    "destination": [ "pre21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre21", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route20", 2 ],
                                    "destination": [ "pre22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre22", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route20", 3 ],
                                    "destination": [ "pre23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre23", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route24", 0 ],
                                    "destination": [ "pre24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre24", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route24", 1 ],
                                    "destination": [ "pre25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre25", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route24", 2 ],
                                    "destination": [ "pre26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre26", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route24", 3 ],
                                    "destination": [ "pre27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre27", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route28", 0 ],
                                    "destination": [ "pre28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre28", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route28", 1 ],
                                    "destination": [ "pre29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre29", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route28", 2 ],
                                    "destination": [ "pre30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre30", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route28", 3 ],
                                    "destination": [ "pre31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre31", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route32", 0 ],
                                    "destination": [ "pre32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre32", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route32", 1 ],
                                    "destination": [ "pre33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre33", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route32", 2 ],
                                    "destination": [ "pre34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre34", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route32", 3 ],
                                    "destination": [ "pre35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre35", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route36", 0 ],
                                    "destination": [ "pre36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre36", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route36", 1 ],
                                    "destination": [ "pre37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre37", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route36", 2 ],
                                    "destination": [ "pre38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre38", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route36", 3 ],
                                    "destination": [ "pre39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre39", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route40", 0 ],
                                    "destination": [ "pre40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre40", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route40", 1 ],
                                    "destination": [ "pre41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre41", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route40", 2 ],
                                    "destination": [ "pre42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre42", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route40", 3 ],
                                    "destination": [ "pre43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre43", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route44", 0 ],
                                    "destination": [ "pre44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre44", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route44", 1 ],
                                    "destination": [ "pre45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre45", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route44", 2 ],
                                    "destination": [ "pre46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre46", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route44", 3 ],
                                    "destination": [ "pre47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre47", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route48", 0 ],
                                    "destination": [ "pre48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre48", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route48", 1 ],
                                    "destination": [ "pre49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre49", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route48", 2 ],
                                    "destination": [ "pre50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre50", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route48", 3 ],
                                    "destination": [ "pre51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre51", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route52", 0 ],
                                    "destination": [ "pre52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre52", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route52", 1 ],
                                    "destination": [ "pre53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre53", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route52", 2 ],
                                    "destination": [ "pre54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre54", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route52", 3 ],
                                    "destination": [ "pre55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre55", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route56", 0 ],
                                    "destination": [ "pre56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre56", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route56", 1 ],
                                    "destination": [ "pre57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre57", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route56", 2 ],
                                    "destination": [ "pre58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre58", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route56", 3 ],
                                    "destination": [ "pre59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre59", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route60", 0 ],
                                    "destination": [ "pre60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre60", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route60", 1 ],
                                    "destination": [ "pre61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre61", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route60", 2 ],
                                    "destination": [ "pre62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre62", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route60", 3 ],
                                    "destination": [ "pre63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre63", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route64", 0 ],
                                    "destination": [ "pre64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre64", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route64", 1 ],
                                    "destination": [ "pre65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre65", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route64", 2 ],
                                    "destination": [ "pre66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre66", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route64", 3 ],
                                    "destination": [ "pre67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre67", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 24, 3200, 550, 26 ],
                    "text": "p VERIFIED_WEB_OSC"
                }
            },
            {
                "box": {
                    "id": "convert",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 580, 3300, 750, 26 ],
                    "text": "spat5.converter @initwith \"/format xyz\""
                }
            },
            {
                "box": {
                    "id": "osc_feedback",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "classnamespace": "box",
                        "rect": [ 50, 70, 1460, 1650 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "newobj",
                                    "text": "inlet",
                                    "patching_rect": [ 24, 30, 70, 24 ],
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "index": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route0",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /source/1/xyz /source/1/dist /source/1/spread /source/1/prer",
                                    "patching_rect": [ 24, 100, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre0",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/1/xyz",
                                    "patching_rect": [ 24, 153, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre1",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/1/dist",
                                    "patching_rect": [ 378, 153, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre2",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/1/spread",
                                    "patching_rect": [ 732, 153, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre3",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/1/prer",
                                    "patching_rect": [ 1086, 153, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route4",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /source/1/env /source/1/select /source/2/xyz /source/2/dist",
                                    "patching_rect": [ 24, 230, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre4",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/1/env",
                                    "patching_rect": [ 24, 283, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre5",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/1/select",
                                    "patching_rect": [ 378, 283, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre6",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/2/xyz",
                                    "patching_rect": [ 732, 283, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre7",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/2/dist",
                                    "patching_rect": [ 1086, 283, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route8",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /source/2/spread /source/2/prer /source/2/env /source/2/select",
                                    "patching_rect": [ 24, 360, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre8",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/2/spread",
                                    "patching_rect": [ 24, 413, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre9",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/2/prer",
                                    "patching_rect": [ 378, 413, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre10",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/2/env",
                                    "patching_rect": [ 732, 413, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre11",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/2/select",
                                    "patching_rect": [ 1086, 413, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route12",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /source/3/xyz /source/3/dist /source/3/spread /source/3/prer",
                                    "patching_rect": [ 24, 490, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre12",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/3/xyz",
                                    "patching_rect": [ 24, 543, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre13",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/3/dist",
                                    "patching_rect": [ 378, 543, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre14",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/3/spread",
                                    "patching_rect": [ 732, 543, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre15",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/3/prer",
                                    "patching_rect": [ 1086, 543, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route16",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /source/3/env /source/3/select /source/4/xyz /source/4/dist",
                                    "patching_rect": [ 24, 620, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre16",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/3/env",
                                    "patching_rect": [ 24, 673, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre17",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/3/select",
                                    "patching_rect": [ 378, 673, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre18",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/4/xyz",
                                    "patching_rect": [ 732, 673, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre19",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/4/dist",
                                    "patching_rect": [ 1086, 673, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route20",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /source/4/spread /source/4/prer /source/4/env /source/4/select",
                                    "patching_rect": [ 24, 750, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre20",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/4/spread",
                                    "patching_rect": [ 24, 803, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre21",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/4/prer",
                                    "patching_rect": [ 378, 803, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre22",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/4/env",
                                    "patching_rect": [ 732, 803, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre23",
                                    "maxclass": "newobj",
                                    "text": "prepend /source/4/select",
                                    "patching_rect": [ 1086, 803, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route24",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /speaker/1/xyz /speaker/2/xyz /speaker/3/xyz /speaker/4/xyz",
                                    "patching_rect": [ 24, 880, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre24",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/1/xyz",
                                    "patching_rect": [ 24, 933, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre25",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/2/xyz",
                                    "patching_rect": [ 378, 933, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre26",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/3/xyz",
                                    "patching_rect": [ 732, 933, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre27",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/4/xyz",
                                    "patching_rect": [ 1086, 933, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route28",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /speaker/5/xyz /speaker/6/xyz /speaker/7/xyz /speaker/8/xyz",
                                    "patching_rect": [ 24, 1010, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre28",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/5/xyz",
                                    "patching_rect": [ 24, 1063, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre29",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/6/xyz",
                                    "patching_rect": [ 378, 1063, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre30",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/7/xyz",
                                    "patching_rect": [ 732, 1063, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre31",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/8/xyz",
                                    "patching_rect": [ 1086, 1063, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route32",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /speaker/9/xyz /speaker/10/xyz /speaker/11/xyz /speaker/12/xyz",
                                    "patching_rect": [ 24, 1140, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre32",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/9/xyz",
                                    "patching_rect": [ 24, 1193, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre33",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/10/xyz",
                                    "patching_rect": [ 378, 1193, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre34",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/11/xyz",
                                    "patching_rect": [ 732, 1193, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre35",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/12/xyz",
                                    "patching_rect": [ 1086, 1193, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route36",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /speaker/13/xyz /speaker/14/xyz /speaker/15/xyz /speaker/16/xyz",
                                    "patching_rect": [ 24, 1270, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "pre36",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/13/xyz",
                                    "patching_rect": [ 24, 1323, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre37",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/14/xyz",
                                    "patching_rect": [ 378, 1323, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre38",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/15/xyz",
                                    "patching_rect": [ 732, 1323, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre39",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/16/xyz",
                                    "patching_rect": [ 1086, 1323, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "route40",
                                    "maxclass": "newobj",
                                    "text": "spat5.osc.route /speaker/17/xyz /sources/xyz /speakers/xyz",
                                    "patching_rect": [ 24, 1400, 1390, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 4
                                }
                            },
                            {
                                "box": {
                                    "id": "pre40",
                                    "maxclass": "newobj",
                                    "text": "prepend /speaker/17/xyz",
                                    "patching_rect": [ 24, 1453, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre41",
                                    "maxclass": "newobj",
                                    "text": "prepend /sources/xyz",
                                    "patching_rect": [ 378, 1453, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "pre42",
                                    "maxclass": "newobj",
                                    "text": "prepend /speakers/xyz",
                                    "patching_rect": [ 732, 1453, 334, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "newobj",
                                    "text": "outlet",
                                    "patching_rect": [ 24, 1560, 70, 24 ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "index": 1
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route0", 0 ],
                                    "destination": [ "pre0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre0", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route0", 1 ],
                                    "destination": [ "pre1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre1", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route0", 2 ],
                                    "destination": [ "pre2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre2", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route0", 3 ],
                                    "destination": [ "pre3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre3", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route4", 0 ],
                                    "destination": [ "pre4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre4", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route4", 1 ],
                                    "destination": [ "pre5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre5", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route4", 2 ],
                                    "destination": [ "pre6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre6", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route4", 3 ],
                                    "destination": [ "pre7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre7", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route8", 0 ],
                                    "destination": [ "pre8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre8", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route8", 1 ],
                                    "destination": [ "pre9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre9", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route8", 2 ],
                                    "destination": [ "pre10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre10", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route8", 3 ],
                                    "destination": [ "pre11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre11", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route12", 0 ],
                                    "destination": [ "pre12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre12", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route12", 1 ],
                                    "destination": [ "pre13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre13", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route12", 2 ],
                                    "destination": [ "pre14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre14", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route12", 3 ],
                                    "destination": [ "pre15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre15", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route16", 0 ],
                                    "destination": [ "pre16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre16", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route16", 1 ],
                                    "destination": [ "pre17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre17", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route16", 2 ],
                                    "destination": [ "pre18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre18", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route16", 3 ],
                                    "destination": [ "pre19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre19", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route20", 0 ],
                                    "destination": [ "pre20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre20", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route20", 1 ],
                                    "destination": [ "pre21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre21", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route20", 2 ],
                                    "destination": [ "pre22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre22", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route20", 3 ],
                                    "destination": [ "pre23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre23", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route24", 0 ],
                                    "destination": [ "pre24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre24", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route24", 1 ],
                                    "destination": [ "pre25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre25", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route24", 2 ],
                                    "destination": [ "pre26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre26", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route24", 3 ],
                                    "destination": [ "pre27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre27", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route28", 0 ],
                                    "destination": [ "pre28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre28", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route28", 1 ],
                                    "destination": [ "pre29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre29", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route28", 2 ],
                                    "destination": [ "pre30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre30", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route28", 3 ],
                                    "destination": [ "pre31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre31", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route32", 0 ],
                                    "destination": [ "pre32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre32", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route32", 1 ],
                                    "destination": [ "pre33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre33", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route32", 2 ],
                                    "destination": [ "pre34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre34", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route32", 3 ],
                                    "destination": [ "pre35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre35", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route36", 0 ],
                                    "destination": [ "pre36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre36", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route36", 1 ],
                                    "destination": [ "pre37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre37", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route36", 2 ],
                                    "destination": [ "pre38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre38", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route36", 3 ],
                                    "destination": [ "pre39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre39", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "in", 0 ],
                                    "destination": [ "route40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route40", 0 ],
                                    "destination": [ "pre40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre40", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route40", 1 ],
                                    "destination": [ "pre41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre41", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "route40", 2 ],
                                    "destination": [ "pre42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [ "pre42", 0 ],
                                    "destination": [ "out", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 24, 3400, 650, 26 ],
                    "text": "p VERIFIED_NATIVE_STATE"
                }
            },
            {
                "box": {
                    "id": "osc_send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 740, 3400, 680, 26 ],
                    "text": "spat5.osc.udpsend @ip 127.0.0.1 @port 9001"
                }
            },
            {
                "box": {
                    "id": "netpremonitoring",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24, 3100, 325, 24 ],
                    "text": "prepend monitoring"
                }
            },
            {
                "box": {
                    "id": "netprereceiveport",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 384, 3100, 325, 24 ],
                    "text": "prepend port"
                }
            },
            {
                "box": {
                    "id": "netpresendport",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 744, 3100, 325, 24 ],
                    "text": "prepend port"
                }
            },
            {
                "box": {
                    "id": "netpreselected",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1104, 3100, 325, 24 ],
                    "text": "prepend selected"
                }
            },
            {
                "box": {
                    "id": "netdelay",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 24, 3500, 250, 24 ],
                    "text": "delay 200"
                }
            },
            {
                "box": {
                    "id": "netinit",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 320, 3500, 200, 24 ],
                    "text": "init"
                }
            },
            {
                "box": {
                    "id": "portconfig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 650, 3500, 340, 24 ],
                    "text": "route receive send"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "click1label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 680, 1250, 95, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 680, 1250, 95, 20 ],
                    "text": "CLICK 1 FREQ",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "click1label"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "click1",
                    "maxclass": "flonum",
                    "maximum": 12000,
                    "minimum": 500,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 680, 1278, 95, 27 ],
                    "presentation": 1,
                    "presentation_rect": [ 680, 1278, 95, 27 ],
                    "varname": "click1"
                }
            },
            {
                "box": {
                    "id": "pre_click1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 720, 3760, 325, 24 ],
                    "text": "prepend click1"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "click2label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 785, 1250, 95, 20 ],
                    "presentation": 1,
                    "presentation_rect": [ 785, 1250, 95, 20 ],
                    "text": "CLICK 2 FREQ",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "click2label"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "click2",
                    "maxclass": "flonum",
                    "maximum": 12000,
                    "minimum": 500,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 785, 1278, 95, 27 ],
                    "presentation": 1,
                    "presentation_rect": [ 785, 1278, 95, 27 ],
                    "varname": "click2"
                }
            },
            {
                "box": {
                    "id": "pre_click2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1100, 3760, 325, 24 ],
                    "text": "prepend click2"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "fan_readout",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 930, 1316, 480, 23 ],
                    "presentation": 1,
                    "presentation_rect": [ 930, 1316, 480, 23 ],
                    "text": "Spatial fan / active voices",
                    "textcolor": [ 0.86, 0.9, 0.94, 1 ],
                    "varname": "fan_readout"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "pre_activity", 0 ],
                    "source": [ "activity", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_area", 0 ],
                    "source": [ "area", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dsp", 1 ],
                    "order": 0,
                    "source": [ "audio", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dsp", 0 ],
                    "order": 0,
                    "source": [ "audio", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meterL", 0 ],
                    "order": 1,
                    "source": [ "audio", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meterR", 0 ],
                    "order": 1,
                    "source": [ "audio", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_azimuth", 0 ],
                    "source": [ "azimuth", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_click1", 0 ],
                    "source": [ "click1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_click2", 0 ],
                    "source": [ "click2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tick", 0 ],
                    "source": [ "clock", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "clock", 0 ],
                    "source": [ "clock_on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_contour", 0 ],
                    "source": [ "contour", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "osc_feedback", 0 ],
                    "source": [ "convert", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "osc_feedback", 0 ],
                    "source": [ "convert", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_copy", 0 ],
                    "source": [ "copy", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_cx", 0 ],
                    "source": [ "cx", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_cy", 0 ],
                    "source": [ "cy", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_cz", 0 ],
                    "source": [ "cz", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 0 ],
                    "source": [ "defer", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "init", 0 ],
                    "source": [ "delay", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_density", 0 ],
                    "source": [ "density", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "networkctl", 2 ],
                    "source": [ "engine", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "synthesis", 0 ],
                    "source": [ "engine", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "viewer", 0 ],
                    "source": [ "engine", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_entropy", 0 ],
                    "source": [ "entropy", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_frequency", 0 ],
                    "source": [ "frequency", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_gain", 0 ],
                    "source": [ "gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_height", 0 ],
                    "source": [ "height", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_inspect", 0 ],
                    "source": [ "inspect", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "installation", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_intensity", 0 ],
                    "source": [ "intensity", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_lightdistance", 0 ],
                    "source": [ "lightdistance", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "defer", 0 ],
                    "order": 0,
                    "source": [ "load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "netdelay", 0 ],
                    "order": 1,
                    "source": [ "load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "local", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m0max", 0 ],
                    "source": [ "m0max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m0min", 0 ],
                    "source": [ "m0min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m0on", 0 ],
                    "source": [ "m0on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m1max", 0 ],
                    "source": [ "m1max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m1min", 0 ],
                    "source": [ "m1min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m1on", 0 ],
                    "source": [ "m1on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m2max", 0 ],
                    "source": [ "m2max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m2min", 0 ],
                    "source": [ "m2min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m2on", 0 ],
                    "source": [ "m2on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m3max", 0 ],
                    "source": [ "m3max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m3min", 0 ],
                    "source": [ "m3min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m3on", 0 ],
                    "source": [ "m3on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m4max", 0 ],
                    "source": [ "m4max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m4min", 0 ],
                    "source": [ "m4min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m4on", 0 ],
                    "source": [ "m4on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m5max", 0 ],
                    "source": [ "m5max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m5min", 0 ],
                    "source": [ "m5min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m5on", 0 ],
                    "source": [ "m5on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m6max", 0 ],
                    "source": [ "m6max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m6min", 0 ],
                    "source": [ "m6min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_m6on", 0 ],
                    "source": [ "m6on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_mode", 0 ],
                    "source": [ "mode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "netpremonitoring", 0 ],
                    "source": [ "monitoring", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_mute0", 0 ],
                    "source": [ "mute1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_mute1", 0 ],
                    "source": [ "mute2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_mute2", 0 ],
                    "source": [ "mute3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_mute3", 0 ],
                    "source": [ "mute4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "netinit", 0 ],
                    "source": [ "netdelay", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "networkctl", 0 ],
                    "source": [ "netinit", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "networkctl", 2 ],
                    "source": [ "netpremonitoring", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "osc_recv", 0 ],
                    "source": [ "netprereceiveport", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "networkctl", 2 ],
                    "source": [ "netpreselected", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "osc_send", 0 ],
                    "source": [ "netpresendport", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "audio", 6 ],
                    "source": [ "networkctl", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "audio", 1 ],
                    "source": [ "networkctl", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "networkctl", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "oper", 0 ],
                    "source": [ "networkctl", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "osc_send", 0 ],
                    "source": [ "networkctl", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portconfig", 0 ],
                    "source": [ "networkctl", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "viewer", 0 ],
                    "source": [ "networkctl", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "oper", 0 ],
                    "source": [ "openoper", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "audio", 0 ],
                    "source": [ "oper", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "convert", 0 ],
                    "source": [ "oper", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_orbit", 0 ],
                    "source": [ "orbit", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "networkctl", 0 ],
                    "source": [ "osc_decode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "networkctl", 1 ],
                    "source": [ "osc_feedback", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "osc_decode", 0 ],
                    "source": [ "osc_recv", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_panic", 0 ],
                    "source": [ "panic", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_penumbra", 0 ],
                    "source": [ "penumbra", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "netprereceiveport", 0 ],
                    "source": [ "portconfig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "netpresendport", 0 ],
                    "source": [ "portconfig", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_activity", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_area", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_azimuth", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_click1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_click2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_contour", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_copy", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_cx", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_cy", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_cz", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_density", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_entropy", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_frequency", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_height", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "openoper", 0 ],
                    "source": [ "pre_inspect", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_intensity", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_lightdistance", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m0max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m0min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m0on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m1max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m1min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m1on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m2max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m2min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m2on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m3max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m3min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m3on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m4max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m4min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m4on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m5max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m5min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m5on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m6max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m6min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_m6on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_mode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_mute0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_mute1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_mute2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_mute3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_orbit", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_panic", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_penumbra", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_preset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_reapply", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_reset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_resolution", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_reverberance", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_sound", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_speed", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pre_web", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_preset", 0 ],
                    "source": [ "preset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_reapply", 0 ],
                    "source": [ "reapply", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "netprereceiveport", 0 ],
                    "source": [ "receiveport", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_reset", 0 ],
                    "source": [ "reset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_resolution", 0 ],
                    "source": [ "resolution", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_reverberance", 0 ],
                    "source": [ "reverberance", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "netpreselected", 0 ],
                    "source": [ "selected", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "netpresendport", 0 ],
                    "source": [ "sendport", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_sound", 0 ],
                    "source": [ "sound", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_speed", 0 ],
                    "source": [ "speed", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "tick", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre_web", 0 ],
                    "source": [ "web", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "engine", 3 ],
                    "destination": [ "audio", 7 ]
                }
            },
            {
                "patchline": {
                    "source": [ "synthesis", 0 ],
                    "destination": [ "audio", 2 ]
                }
            },
            {
                "patchline": {
                    "source": [ "synthesis", 1 ],
                    "destination": [ "audio", 3 ]
                }
            },
            {
                "patchline": {
                    "source": [ "synthesis", 2 ],
                    "destination": [ "audio", 4 ]
                }
            },
            {
                "patchline": {
                    "source": [ "synthesis", 3 ],
                    "destination": [ "audio", 5 ]
                }
            }
        ],
        "autosave": 0,
        "bgcolor": [ 0.055, 0.073, 0.092, 1 ],
        "editing_bgcolor": [ 0.055, 0.073, 0.092, 1 ],
        "dependency_cache": [
            {
                "name": "dot_area_engine.js",
                "type": "TEXT",
                "implicit": 1
            },
            {
                "name": "dot_area_view.js",
                "type": "TEXT",
                "implicit": 1
            },
            {
                "name": "dot_area_link.js",
                "type": "TEXT",
                "implicit": 1
            }
        ]
    }
}
