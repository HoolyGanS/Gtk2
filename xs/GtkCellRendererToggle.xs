/*
 * Copyright (c) 2003 by the gtk2-perl team (see the file AUTHORS)
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library; if not, write to the 
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330, 
 * Boston, MA  02111-1307  USA.
 *
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gtk2/xs/GtkCellRendererToggle.xs,v 1.3 2003/05/22 14:23:23 muppetman Exp $
 */

#include "gtk2perl.h"

MODULE = Gtk2::CellRendererToggle	PACKAGE = Gtk2::CellRendererToggle	PREFIX = gtk_cell_renderer_toggle_

GtkCellRenderer *
gtk_cell_renderer_toggle_new (class)
	SV * class
    C_ARGS:

## gboolean gtk_cell_renderer_toggle_get_radio (GtkCellRendererToggle *toggle)
gboolean
gtk_cell_renderer_toggle_get_radio (toggle)
	GtkCellRendererToggle * toggle

## void gtk_cell_renderer_toggle_set_radio (GtkCellRendererToggle *toggle, gboolean radio)
void
gtk_cell_renderer_toggle_set_radio (toggle, radio)
	GtkCellRendererToggle * toggle
	gboolean                radio

## gboolean gtk_cell_renderer_toggle_get_active (GtkCellRendererToggle *toggle)
gboolean
gtk_cell_renderer_toggle_get_active (toggle)
	GtkCellRendererToggle * toggle

## void gtk_cell_renderer_toggle_set_active (GtkCellRendererToggle *toggle, gboolean setting)
void
gtk_cell_renderer_toggle_set_active (toggle, setting)
	GtkCellRendererToggle * toggle
	gboolean                setting
