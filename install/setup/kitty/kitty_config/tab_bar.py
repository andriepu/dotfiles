# pyright: reportMissingImports=false

from kitty.fast_data_types import Screen
from kitty.tab_bar import DrawData, ExtraData, TabBarData, as_rgb, draw_title
from kitty.utils import color_as_int

def _draw_left_icon(screen: Screen, draw_data: DrawData) -> int:
    orig_fg, orig_bg = screen.cursor.fg, screen.cursor.bg

    screen.cursor.fg = orig_bg
    screen.cursor.bg = draw_data.default_bg
    screen.draw('')
    screen.cursor.fg, screen.cursor.bg = orig_fg, orig_bg

    screen.cursor.x = 1
    return screen.cursor.x


def _draw_right_icon(screen: Screen, draw_data: DrawData) -> int:
    orig_fg, orig_bg = screen.cursor.fg, screen.cursor.bg

    screen.cursor.fg = orig_bg
    screen.cursor.bg = draw_data.default_bg
    screen.draw('')
    screen.cursor.fg, screen.cursor.bg = orig_fg, orig_bg

    screen.cursor.x += 1
    return screen.cursor.x

def _draw_tab_item(
    draw_data: DrawData,
    screen: Screen,
    tab: TabBarData,
    before: int,
    max_title_length: int,
    index: int,
    is_last: bool,
) -> int:
    if draw_data.leading_spaces:
        screen.draw(" " * draw_data.leading_spaces)

    draw_title(draw_data, screen, tab, index)
    trailing_spaces = min(max_title_length - 1, draw_data.trailing_spaces)
    max_title_length -= trailing_spaces
    extra = screen.cursor.x - before - max_title_length

    if extra > 0:
        screen.cursor.x -= extra + 1
        screen.draw("…")

    if trailing_spaces:
        screen.draw(" " * trailing_spaces)

    end = screen.cursor.x
    screen.cursor.bold = screen.cursor.italic = False

    if not is_last:
        screen.cursor.bg = as_rgb(color_as_int(draw_data.inactive_bg))
        screen.draw(draw_data.sep)
    return end


def draw_tab(
    draw_data: DrawData,
    screen: Screen,
    tab: TabBarData,
    before: int,
    max_title_length: int,
    index: int,
    is_last: bool,
    extra_data: ExtraData,
) -> int:
    if index == 1:
        _draw_left_icon(screen, draw_data)

    _draw_tab_item(
        draw_data,
        screen,
        tab,
        before,
        max_title_length,
        index,
        is_last,
    )

    if is_last:
        _draw_right_icon(screen, draw_data)

    return screen.cursor.x
