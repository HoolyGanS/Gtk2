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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gtk2/xs/GdkWindow.xs,v 1.5 2003/05/22 14:23:23 muppetman Exp $
 */

#include "gtk2perl.h"

MODULE = Gtk2::Gdk::Window	PACKAGE = Gtk2::Gdk::Window	PREFIX = gdk_window_

 ## GdkWindow* gdk_window_new (GdkWindow *parent, GdkWindowAttr *attributes, gint attributes_mask)
 ##GdkWindow*
 ##gdk_window_new (parent, attributes, attributes_mask)
 ##	GdkWindow *parent
 ##	GdkWindowAttr *attributes
 ##	gint attributes_mask

 ## void gdk_window_destroy (GdkWindow *window)
void
gdk_window_destroy (window)
	GdkWindow *window

 ## GdkWindowType gdk_window_get_window_type (GdkWindow *window)
GdkWindowType
gdk_window_get_window_type (window)
	GdkWindow *window

 ## GdkWindow* gdk_window_at_pointer (gint *win_x, gint *win_y)
void
gdk_window_at_pointer (class)
	SV * class
    PREINIT:
	GdkWindow * window;
	gint win_x, win_y;
    PPCODE:
	window = gdk_window_at_pointer (&win_x, &win_y);
	EXTEND (SP, 3);
	PUSHs (sv_2mortal (newSVGdkWindow (window)));
	PUSHs (sv_2mortal (newSViv (win_x)));
	PUSHs (sv_2mortal (newSViv (win_y)));

 ## ## void gdk_window_show (GdkWindow *window)
 ##void
 ##gdk_window_show (window)
 ##	GdkWindow *window
 ##
 ## ## void gdk_window_hide (GdkWindow *window)
 ##void
 ##gdk_window_hide (window)
 ##	GdkWindow *window
 ##
 ## ## void gdk_window_withdraw (GdkWindow *window)
 ##void
 ##gdk_window_withdraw (window)
 ##	GdkWindow *window
 ##
 ## ## void gdk_window_show_unraised (GdkWindow *window)
 ##void
 ##gdk_window_show_unraised (window)
 ##	GdkWindow *window

 ## void gdk_window_move (GdkWindow *window, gint x, gint y)
void
gdk_window_move (window, x, y)
	GdkWindow *window
	gint x
	gint y

 ## void gdk_window_resize (GdkWindow *window, gint width, gint height)
void
gdk_window_resize (window, width, height)
	GdkWindow *window
	gint width
	gint height

 ## void gdk_window_move_resize (GdkWindow *window, gint x, gint y, gint width, gint height)
void
gdk_window_move_resize (window, x, y, width, height)
	GdkWindow *window
	gint x
	gint y
	gint width
	gint height

 ## void gdk_window_reparent (GdkWindow *window, GdkWindow *new_parent, gint x, gint y)
void
gdk_window_reparent (window, new_parent, x, y)
	GdkWindow *window
	GdkWindow *new_parent
	gint x
	gint y

 ## void gdk_window_clear (GdkWindow *window)
void
gdk_window_clear (window)
	GdkWindow *window

 ## void gdk_window_clear_area (GdkWindow *window, gint x, gint y, gint width, gint height)
void
gdk_window_clear_area (window, x, y, width, height)
	GdkWindow *window
	gint x
	gint y
	gint width
	gint height

 ## void gdk_window_clear_area_e (GdkWindow *window, gint x, gint y, gint width, gint height)
void
gdk_window_clear_area_e (window, x, y, width, height)
	GdkWindow *window
	gint x
	gint y
	gint width
	gint height

 ## void gdk_window_raise (GdkWindow *window)
void
gdk_window_raise (window)
	GdkWindow *window

 ## void gdk_window_lower (GdkWindow *window)
void
gdk_window_lower (window)
	GdkWindow *window

 ## void gdk_window_focus (GdkWindow *window, guint32 timestamp)
void
gdk_window_focus (window, timestamp)
	GdkWindow *window
	guint32 timestamp

 ## void gdk_window_set_user_data (GdkWindow *window, gpointer user_data)
 ##void
 ##gdk_window_set_user_data (window, user_data)
 ##	GdkWindow *window
 ##	gpointer user_data

 ## void gdk_window_set_override_redirect (GdkWindow *window, gboolean override_redirect)
void
gdk_window_set_override_redirect (window, override_redirect)
	GdkWindow *window
	gboolean override_redirect

 ## void gdk_window_add_filter (GdkWindow *window, GdkFilterFunc function, gpointer data)
 ##void
 ##gdk_window_add_filter (window, function, data)
 ##	GdkWindow *window
 ##	GdkFilterFunc function
 ##	gpointer data

 ## void gdk_window_remove_filter (GdkWindow *window, GdkFilterFunc function, gpointer data)
 ##void
 ##gdk_window_remove_filter (window, function, data)
 ##	GdkWindow *window
 ##	GdkFilterFunc function
 ##	gpointer data

 ## void gdk_window_scroll (GdkWindow *window, gint dx, gint dy)
void
gdk_window_scroll (window, dx, dy)
	GdkWindow *window
	gint dx
	gint dy

 ## void gdk_window_shape_combine_region (GdkWindow *window, GdkRegion *shape_region, gint offset_x, gint offset_y)
 ##void
 ##gdk_window_shape_combine_region (window, shape_region, offset_x, offset_y)
 ##	GdkWindow *window
 ##	GdkRegion *shape_region
 ##	gint offset_x
 ##	gint offset_y

 ## gboolean gdk_window_is_viewable (GdkWindow *window)
gboolean
gdk_window_is_viewable (window)
	GdkWindow *window

 ## GdkWindowState gdk_window_get_state (GdkWindow *window)
GdkWindowState
gdk_window_get_state (window)
	GdkWindow *window

 ## GdkWindow* gdk_window_lookup (GdkNativeWindow anid)
 ##GdkWindow*
 ##gdk_window_lookup (anid)
 ##	GdkNativeWindow anid
 ##
 ## GdkWindow* gdk_window_lookup_for_display (GdkDisplay *display, GdkNativeWindow anid)
 ##GdkWindow*
 ##gdk_window_lookup_for_display (display, anid)
 ##	GdkDisplay *display
 ##	GdkNativeWindow anid

 ## void gdk_window_set_type_hint (GdkWindow *window, GdkWindowTypeHint hint)
void
gdk_window_set_type_hint (window, hint)
	GdkWindow *window
	GdkWindowTypeHint hint

 ## void gdk_window_set_modal_hint (GdkWindow *window, gboolean modal)
void
gdk_window_set_modal_hint (window, modal)
	GdkWindow *window
	gboolean modal

#if GTK_CHECK_VERSION(2,2,0)

 ## void gdk_window_set_skip_taskbar_hint (GdkWindow *window, gboolean skips_taskbar)
void
gdk_window_set_skip_taskbar_hint (window, skips_taskbar)
	GdkWindow *window
	gboolean skips_taskbar

 ## void gdk_window_set_skip_pager_hint (GdkWindow *window, gboolean skips_pager)
void
gdk_window_set_skip_pager_hint (window, skips_pager)
	GdkWindow *window
	gboolean skips_pager

#endif

 ## void gdk_window_set_geometry_hints (GdkWindow *window, GdkGeometry *geometry, GdkWindowHints geom_mask)
 ##void
 ##gdk_window_set_geometry_hints (window, geometry, geom_mask)
 ##	GdkWindow *window
 ##	GdkGeometry *geometry
 ##	GdkWindowHints geom_mask
 ##
 ## void gdk_set_sm_client_id (const gchar *sm_client_id)
 ##void
 ##gdk_set_sm_client_id (sm_client_id)
 ##	const gchar *sm_client_id
 ##
 ## void gdk_window_begin_paint_rect (GdkWindow *window, GdkRectangle *rectangle)
 ##void
 ##gdk_window_begin_paint_rect (window, rectangle)
 ##	GdkWindow *window
 ##	GdkRectangle *rectangle
 ##
 ## void gdk_window_begin_paint_region (GdkWindow *window, GdkRegion *region)
 ##void
 ##gdk_window_begin_paint_region (window, region)
 ##	GdkWindow *window
 ##	GdkRegion *region
 ##
 ## void gdk_window_end_paint (GdkWindow *window)
 ##void
 ##gdk_window_end_paint (window)
 ##	GdkWindow *window
 ##
 ## void gdk_window_set_title (GdkWindow *window, const gchar *title)
 ##void
 ##gdk_window_set_title (window, title)
 ##	GdkWindow *window
 ##	const gchar *title
 ##
 ## void gdk_window_set_role (GdkWindow *window, const gchar *role)
 ##void
 ##gdk_window_set_role (window, role)
 ##	GdkWindow *window
 ##	const gchar *role
 ##
 ## void gdk_window_set_transient_for (GdkWindow *window, GdkWindow *parent)
 ##void
 ##gdk_window_set_transient_for (window, parent)
 ##	GdkWindow *window
 ##	GdkWindow *parent
 ##
 ## void gdk_window_set_background (GdkWindow *window, GdkColor *color)
 ##void
 ##gdk_window_set_background (window, color)
 ##	GdkWindow *window
 ##	GdkColor *color
 ##
 ## void gdk_window_set_back_pixmap (GdkWindow *window, GdkPixmap *pixmap, gboolean parent_relative)
 ##void
 ##gdk_window_set_back_pixmap (window, pixmap, parent_relative)
 ##	GdkWindow *window
 ##	GdkPixmap *pixmap
 ##	gboolean parent_relative

 ## void gdk_window_set_cursor (GdkWindow *window, GdkCursor *cursor)
void
gdk_window_set_cursor (window, cursor)
	GdkWindow * window
	GdkCursor_ornull * cursor

 ## void gdk_window_get_user_data (GdkWindow *window, gpointer *data)
 ##void
 ##gdk_window_get_user_data (window, data)
 ##	GdkWindow *window
 ##	gpointer *data

 ## void gdk_window_get_geometry (GdkWindow *window, gint *x, gint *y, gint *width, gint *height, gint *depth)
void
gdk_window_get_geometry (window)
	GdkWindow *window
    PREINIT:
	gint x;
	gint y;
	gint width;
	gint height;
	gint depth;
    PPCODE:
	gdk_window_get_geometry (window, &x, &y, &width, &height, &depth);
	EXTEND (SP, 5);
	PUSHs (sv_2mortal (newSViv (x)));
	PUSHs (sv_2mortal (newSViv (y)));
	PUSHs (sv_2mortal (newSViv (width)));
	PUSHs (sv_2mortal (newSViv (height)));
	PUSHs (sv_2mortal (newSViv (depth)));

 ## void gdk_window_get_position (GdkWindow *window, gint *x, gint *y)
void
gdk_window_get_position (window)
	GdkWindow *window
    PREINIT:
	gint x;
	gint y;
    PPCODE:
	gdk_window_get_position (window, &x, &y);
	EXTEND (SP, 2);
	PUSHs (sv_2mortal (newSViv (x)));
	PUSHs (sv_2mortal (newSViv (y)));

 ## gint gdk_window_get_origin (GdkWindow *window, gint *x, gint *y)
void
gdk_window_get_origin (window)
	GdkWindow *window
    PREINIT:
	gint x;
	gint y;
    PPCODE:
	gdk_window_get_origin (window, &x, &y);
	EXTEND (SP, 2);
	PUSHs (sv_2mortal (newSViv (x)));
	PUSHs (sv_2mortal (newSViv (y)));

 ## void gdk_window_get_root_origin (GdkWindow *window, gint *x, gint *y)
void
gdk_window_get_root_origin (window)
	GdkWindow *window
    PREINIT:
	gint x;
	gint y;
    PPCODE:
	gdk_window_get_root_origin (window, &x, &y);
	EXTEND (SP, 2);
	PUSHs (sv_2mortal (newSViv (x)));
	PUSHs (sv_2mortal (newSViv (y)));

 ## void gdk_window_get_frame_extents (GdkWindow *window, GdkRectangle *rect)
 ##void
 ##gdk_window_get_frame_extents (window, rect)
 ##	GdkWindow *window
 ##	GdkRectangle *rect

 ## GdkWindow* gdk_window_get_pointer (GdkWindow *window, gint *x, gint *y, GdkModifierType *mask)
 ## perl call signature:
 ## (window_ornull, x, y, mask) = $GdkWindow->get_pointer
void
gdk_window_get_pointer (window)
	GdkWindow *window
    PREINIT:
	GdkWindow *window_containing_pointer;
	gint x;
	gint y;
	GdkModifierType mask;
    PPCODE:
 	window_containing_pointer =
		gdk_window_get_pointer (window, &x, &y, &mask);
	EXTEND (SP, 4);
	PUSHs (sv_2mortal (newSVGdkWindow_ornull (window_containing_pointer)));
	PUSHs (sv_2mortal (newSViv (x)));
	PUSHs (sv_2mortal (newSViv (y)));
	PUSHs (sv_2mortal (newSVGdkModifierType (mask)));

 ## GdkWindow * gdk_window_get_parent (GdkWindow *window)
 ##GdkWindow *
 ##gdk_window_get_parent (window)
 ##	GdkWindow *window

 ## GdkWindow * gdk_window_get_toplevel (GdkWindow *window)
GdkWindow *
gdk_window_get_toplevel (window)
	GdkWindow *window

 ## GList * gdk_window_get_children (GdkWindow *window)
 ##GList *
 ##gdk_window_get_children (window)
 ##	GdkWindow *window
 ##
 ## GList * gdk_window_peek_children (GdkWindow *window)
 ##GList *
 ##gdk_window_peek_children (window)
 ##	GdkWindow *window

 ## GdkEventMask gdk_window_get_events (GdkWindow *window)
GdkEventMask
gdk_window_get_events (window)
	GdkWindow *window

 ## void gdk_window_set_events (GdkWindow *window, GdkEventMask event_mask)
void
gdk_window_set_events (window, event_mask)
	GdkWindow *window
	GdkEventMask event_mask

 ## void gdk_window_set_icon_list (GdkWindow *window, GList *pixbufs)
 ##void
 ##gdk_window_set_icon_list (window, pixbufs)
 ##	GdkWindow *window
 ##	GList *pixbufs

 ## void gdk_window_set_icon (GdkWindow *window, GdkWindow *icon_window, GdkPixmap *pixmap, GdkBitmap *mask)
 ##void
 ##gdk_window_set_icon (window, icon_window, pixmap, mask)
 ##	GdkWindow *window
 ##	GdkWindow *icon_window
 ##	GdkPixmap *pixmap
 ##	GdkBitmap *mask

 ## void gdk_window_set_icon_name (GdkWindow *window, const gchar *name)
void
gdk_window_set_icon_name (window, name)
	GdkWindow *window
	const gchar *name

 ## void gdk_window_set_group (GdkWindow *window, GdkWindow *leader)
void
gdk_window_set_group (window, leader)
	GdkWindow *window
	GdkWindow *leader

 ## void gdk_window_set_decorations (GdkWindow *window, GdkWMDecoration decorations)
void
gdk_window_set_decorations (window, decorations)
	GdkWindow *window
	GdkWMDecoration decorations

 ## gboolean gdk_window_get_decorations (GdkWindow *window, GdkWMDecoration *decorations)
 ##gboolean
 ##gdk_window_get_decorations (window, decorations)
 ##	GdkWindow *window
 ##	GdkWMDecoration *decorations

 ## void gdk_window_set_functions (GdkWindow *window, GdkWMFunction functions)
void
gdk_window_set_functions (window, functions)
	GdkWindow *window
	GdkWMFunction functions

 ## GList * gdk_window_get_toplevels (void)
 ##GList *
 ##gdk_window_get_toplevels (void)
 ##	void

 ## void gdk_window_iconify (GdkWindow *window)
void
gdk_window_iconify (window)
	GdkWindow *window

 ## void gdk_window_deiconify (GdkWindow *window)
void
gdk_window_deiconify (window)
	GdkWindow *window

 ## void gdk_window_stick (GdkWindow *window)
void
gdk_window_stick (window)
	GdkWindow *window

 ## void gdk_window_unstick (GdkWindow *window)
void
gdk_window_unstick (window)
	GdkWindow *window

 ## void gdk_window_maximize (GdkWindow *window)
void
gdk_window_maximize (window)
	GdkWindow *window

 ## void gdk_window_unmaximize (GdkWindow *window)
void
gdk_window_unmaximize (window)
	GdkWindow *window

#if GTK_CHECK_VERSION(2,2,0)

 ## void gdk_window_fullscreen (GdkWindow *window)
void
gdk_window_fullscreen (window)
	GdkWindow *window

 ## void gdk_window_unfullscreen (GdkWindow *window)
void
gdk_window_unfullscreen (window)
	GdkWindow *window

#endif

 ## void gdk_window_register_dnd (GdkWindow *window)
void
gdk_window_register_dnd (window)
	GdkWindow *window

 ## void gdk_window_begin_resize_drag (GdkWindow *window, GdkWindowEdge edge, gint button, gint root_x, gint root_y, guint32 timestamp)
void
gdk_window_begin_resize_drag (window, edge, button, root_x, root_y, timestamp)
	GdkWindow *window
	GdkWindowEdge edge
	gint button
	gint root_x
	gint root_y
	guint32 timestamp

 ## void gdk_window_begin_move_drag (GdkWindow *window, gint button, gint root_x, gint root_y, guint32 timestamp)
void
gdk_window_begin_move_drag (window, button, root_x, root_y, timestamp)
	GdkWindow *window
	gint button
	gint root_x
	gint root_y
	guint32 timestamp

void
gdk_window_invalidate_rect (window, rectangle, invalidate_children)
	GdkWindow * window
	GdkRectangle * rectangle
	gboolean invalidate_children

 ## void gdk_window_invalidate_region (GdkWindow *window, GdkRegion *region, gboolean invalidate_children)
 ##void
 ##gdk_window_invalidate_region (window, region, invalidate_children)
 ##	GdkWindow *window
 ##	GdkRegion *region
 ##	gboolean invalidate_children
 ##
 ## void gdk_window_invalidate_maybe_recurse (GdkWindow *window, GdkRegion *region, gboolean (*child_func) (GdkWindow *, gpointer), gpointer user_data)
 ##void
 ##gdk_window_invalidate_maybe_recurse (window, region, w, G, user_data)
 ##	GdkWindow *window
 ##	GdkRegion *region
 ##	gboolean (*child_func) (GdkWindow * gpointer)
 ##	gpointer user_data
 ##
 ## void gdk_window_freeze_updates (GdkWindow *window)
 ##void
 ##gdk_window_freeze_updates (window)
 ##	GdkWindow *window
 ##
 ## void gdk_window_thaw_updates (GdkWindow *window)
 ##void
 ##gdk_window_thaw_updates (window)
 ##	GdkWindow *window
 ##
 ## void gdk_window_process_all_updates (void)
 ##void
 ##gdk_window_process_all_updates (void)
 ##	void
 ##
 ## void gdk_window_process_updates (GdkWindow *window, gboolean update_children)
 ##void
 ##gdk_window_process_updates (window, update_children)
 ##	GdkWindow *window
 ##	gboolean update_children
 ##
 ## ## void gdk_window_constrain_size (GdkGeometry *geometry, guint flags, gint width, gint height, gint *new_width, gint *new_height)
 ##void
 ##gdk_window_constrain_size (geometry, flags, width, height)
 ##	GdkGeometry *geometry
 ##	guint flags
 ##	gint width
 ##	gint height
 ##    PREINIT:
 ##	gint new_width;
 ##	gint new_height;
 ##    PPCODE:
 ##	gdk_window_constrain_size (geometry, flags, width, height, &new_width, &new_height);
 ##	EXTEND (SP, 2);
 ##	PUSHs (sv_2mortal (mewSViv (new_width)));
 ##	PUSHs (sv_2mortal (mewSViv (new_height)));
 ##
 ## void gdk_window_get_internal_paint_info (GdkWindow *window, GdkDrawable **real_drawable, gint *x_offset, gint *y_offset)
 ##void
 ##gdk_window_get_internal_paint_info (window, real_drawable, x_offset, y_offset)
 ##	GdkWindow *window
 ##	GdkDrawable **real_drawable
 ##	gint *x_offset
 ##	gint *y_offset
