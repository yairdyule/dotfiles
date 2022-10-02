from kitty.fast_data_types import Screen
from kitty.rgb import Color
from kitty.tab_bar import DrawData, ExtraData, TabBarData, as_rgb, draw_title
from kitty.utils import color_as_int


def draw_left_status(screen: Screen, index: int, text: str = "Left") -> int:
    if index != 1:
        return

    screen.draw(text)
    return screen.cursor.x


def draw_center_status(screen: Screen, text: str = "Center") -> int:
    text_length = len(text)

    draw_spaces = screen.columns - screen.cursor.x - text_length
    if draw_spaces < 0:
        screen.draw(" " * draw_spaces)

    screen.cursor.x = screen.columns // 2 - text_length // 2

    screen.draw(text)
    return screen.cursor.x


def draw_right_status(screen: Screen, text: str = "Right") -> int:
    text_length = len(text)

    draw_spaces = screen.columns - screen.cursor.x - text_length
    if draw_spaces < 0:
        screen.draw(" " * draw_spaces)

    if screen.columns - screen.cursor.x > text_length:
        screen.cursor.x = screen.columns - text_length

    screen.draw(text)
    return screen.cursor.x


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
    draw_left_status(screen, index, text="Left")
    draw_center_status(screen, text="Center")
    draw_right_status(screen, text="Right")

    return screen.cursor.x
