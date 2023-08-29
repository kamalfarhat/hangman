class String
    def color_bg_1;         "\e[41m#{self}\e[0m" end
    def color_bg_2;       "\e[42m#{self}\e[0m" end
    def color_bg_3;       "\e[43m#{self}\e[0m" end
    def color_bg_4;        "\e[44m#{self}\e[0m" end
    def color_bg_5;     "\e[45m#{self}\e[0m" end
    def color_bg_6;        "\e[47m#{self}\e[0m" end
    def red;            "\e[31m#{self}\e[0m" end
    def green;          "\e[32m#{self}\e[0m" end
    def underline;      "\e[4m#{self}\e[24m" end
    def bold;           "\e[1m#{self}\e[22m" end
    def right_color_right_location;       "\e[91m\u25CF\e[0m" end
    def right_color_wrong_location;       "\e[37m\u25CB\e[0m" end
end