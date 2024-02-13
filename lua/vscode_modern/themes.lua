return {
    --- @param palette Palette
    --- @param config Config
    --- @return ThemeDark
    dark = function(palette, config)
        local background = palette.dark_06
        local statusline_bg = palette.dark_03

        if
            config.custom_dark_background ~= nil
            and type(config.custom_dark_background) == 'string'
        then
            background = config.custom_dark_background
        end

        if
            config.custom_statusline_dark_background ~= nil
            and type(config.custom_statusline_dark_background)
        then
            statusline_bg = config.custom_statusline_dark_background
        end

        --- @class ThemeDark
        local theme = {
            palette = palette,
            ui = {
                bg = background,
                bg_darker_01 = palette.dark_05,
                fg = palette.light_07,
                cursor = {
                    bg = palette.light_03,
                    fg = palette.grey_12,
                    term = {
                        bg = palette.light_07,
                        fg = palette.dark_05,
                    },
                    line = {
                        bg = palette.grey_03,
                        nr = {
                            bg = palette.grey_03,
                            fg = palette.light_06,
                        },
                    },
                    search = {
                        bg = palette.yellow_03,
                    },
                },
                conceal = {
                    fg = palette.light_06,
                },
                context = {
                    bg = palette.grey_04,
                },
                directory = {
                    fg = palette.yellow_05,
                },
                float = {
                    bg = background,
                    border = {
                        bg = background,
                        fg = palette.grey_15,
                    },
                },
                line_nr = {
                    bg = background,
                    fg = palette.grey_18,
                },
                match_paren = {
                    bg = palette.green_04,
                },
                non_text = {
                    bg = palette.none,
                    fg = palette.grey_08,
                },
                status_line = {
                    bg = statusline_bg,
                    fg = palette.grey_18,
                    medium = {
                        bg = palette.dark_04,
                        fg = palette.grey_18,
                    },
                    mode = {
                        bg = palette.blue_06,
                        fg = palette.light_17,
                    },
                    icon = {
                        branch = {
                            fg = palette.orange_04,
                        },
                        lsp = {
                            active = {
                                fg = palette.green_05,
                            },
                        },
                    },
                },
                search = {
                    bg = palette.brown_01,
                },
                sign_column = {
                    bg = palette.none,
                },
                visual = {
                    bg = palette.blue_14,
                },
                whitespace = {
                    bg = palette.none,
                    fg = palette.grey_08,
                },
                win_separator = {
                    fg = config.transparent_background and palette.grey_08
                        or palette.dark_02,
                },
                pmenu = {
                    bg = palette.grey_05,
                    fg = palette.light_07,
                    sbar = {
                        bg = palette.grey_05,
                    },
                    sel = {
                        bg = palette.blue_08,
                        fg = palette.light_17,
                    },
                    thumb = {
                        bg = palette.grey_13,
                    },
                },
                indent_guide = {
                    fg = palette.grey_08,
                    active = {
                        fg = palette.grey_15,
                    },
                },
                folded = {
                    bg = palette.blue_13,
                },
                title = {
                    bg = palette.blue_10,
                    fg = palette.light_17,
                },
                telescope = {
                    matching = {
                        fg = palette.blue_04,
                    },
                    preview = {
                        bg = palette.grey_01,
                        border = {
                            bg = palette.grey_01,
                            fg = palette.grey_01,
                        },
                        title = {
                            bg = palette.blue_06,
                            fg = palette.light_17,
                        },
                    },
                    prompt = {
                        bg = palette.grey_07,
                        fg = palette.light_01,
                        border = {
                            bg = palette.grey_07,
                            fg = palette.grey_07,
                        },
                        counter = {
                            fg = palette.light_01,
                        },
                        title = {
                            bg = palette.blue_06,
                            fg = palette.light_17,
                        },
                    },
                    results = {
                        bg = palette.grey_05,
                        border = {
                            bg = palette.grey_05,
                            fg = palette.grey_05,
                        },
                        title = {
                            bg = palette.blue_06,
                            fg = palette.light_17,
                        },
                    },
                    selection = {
                        bg = palette.blue_08,
                        fg = palette.light_17,
                    },
                },
            },
            sintax = {
                comment = palette.green_11,
                variable = palette.blue_25,
                constant = palette.blue_20,
                string = palette.orange_01,
                character = palette.yellow_07,
                number = palette.green_15,
                boolean = palette.blue_21,
                identifier = palette.light_07,
                punctuation = palette.light_07,
                function_name = palette.yellow_08,
                operator = palette.light_07,
                keyword = palette.blue_21,
                keyword_control_flow = palette.purple_03,
                macro = palette.blue_21,
                type = palette.green_09,
                namespace = palette.green_09,
                special_char = palette.yellow_07,
                delimiter = palette.light_07,
                xml_tag = palette.blue_21,
                xml_delimiter = palette.grey_16,
                todo = palette.magenta_01,
            },
            git = {
                signs = {
                    add = palette.green_05,
                    delete = palette.red_09,
                    change = palette.blue_06,
                },
                status = {
                    ignored = palette.grey_20,
                    untracked = palette.green_12,
                    staged = palette.green_13,
                    deleted = palette.red_04,
                    modified = palette.yellow_09,
                },
                diff = {
                    add = palette.green_08,
                    change = palette.green_07,
                    delete = palette.red_01,
                    text = palette.green_08,
                },
            },
            lsp = {
                diagnostics = {
                    error = palette.red_09,
                    warn = palette.yellow_06,
                    info = palette.blue_18,
                    hint = palette.blue_23,
                    unnecessary = palette.blue_22,
                },
                references = {
                    write = palette.blue_09,
                    read = palette.grey_10,
                    text = palette.grey_10,
                },
                inlay_hint = {
                    bg = palette.grey_02,
                    fg = palette.grey_22,
                },
            },
        }

        return theme
    end,

    --- @param palette Palette
    --- @param config Config
    --- @return ThemeLight
    light = function(palette, config)
        local background = palette.light_17

        if
            config.custom_light_background ~= nil
            and type(config.custom_light_background) == 'string'
        then
            background = config.custom_light_background
        end

        --- @class ThemeLight
        local theme = {
            palette = palette,
            ui = {
                bg = background,
                bg_darker_01 = palette.light_13,
                bg_darker_02 = palette.light_15,
                fg = palette.grey_06,
                cursor = {
                    bg = palette.dark_01,
                    fg = palette.light_17,
                    term = {
                        bg = palette.blue_03,
                        fg = palette.light_17,
                    },
                    line = {
                        bg = palette.light_14,
                        nr = {
                            bg = palette.light_14,
                            fg = palette.blue_11,
                        },
                    },
                    search = {
                        bg = palette.green_14,
                    },
                },
                conceal = {
                    fg = palette.blue_11,
                },
                context = {
                    bg = palette.light_12,
                },
                directory = {
                    fg = palette.yellow_05,
                },
                float = {
                    bg = background,
                    border = {
                        bg = background,
                        fg = palette.grey_24,
                    },
                },
                line_nr = {
                    bg = background,
                    fg = palette.grey_14,
                },
                match_paren = {
                    bg = palette.light_11,
                },
                non_text = {
                    bg = palette.none,
                    fg = palette.light_08,
                },
                status_line = {
                    bg = palette.light_08,
                    fg = palette.grey_06,
                    medium = {
                        bg = palette.light_05,
                        fg = palette.grey_06,
                    },
                    mode = {
                        bg = palette.blue_06,
                        fg = palette.light_17,
                    },
                    icon = {
                        branch = {
                            fg = palette.orange_04,
                        },
                        lsp = {
                            active = {
                                fg = palette.green_05,
                            },
                        },
                    },
                },
                search = {
                    bg = palette.orange_03,
                },
                sign_column = {
                    bg = palette.none,
                },
                visual = {
                    bg = palette.blue_26,
                },
                whitespace = {
                    bg = palette.none,
                    fg = palette.light_08,
                },
                win_separator = {
                    fg = palette.light_10,
                },
                pmenu = {
                    bg = palette.light_09,
                    fg = palette.grey_06,
                    sbar = {
                        bg = palette.light_09,
                    },
                    sel = {
                        bg = palette.light_12,
                        fg = palette.dark_01,
                    },
                    thumb = {
                        bg = palette.light_04,
                    },
                },
                indent_guide = {
                    fg = palette.light_08,
                    active = {
                        fg = palette.grey_15,
                    },
                },
                folded = {
                    bg = palette.blue_27,
                },
                title = {
                    bg = palette.blue_10,
                    fg = palette.light_17,
                },
                telescope = {
                    matching = {
                        fg = palette.blue_04,
                    },
                    preview = {
                        bg = palette.light_09,
                        border = {
                            bg = palette.light_09,
                            fg = palette.light_09,
                        },
                        title = {
                            bg = palette.blue_06,
                            fg = palette.light_17,
                        },
                    },
                    prompt = {
                        bg = palette.light_08,
                        fg = palette.grey_06,
                        border = {
                            bg = palette.light_08,
                            fg = palette.light_08,
                        },
                        counter = {
                            fg = palette.grey_06,
                        },
                        title = {
                            bg = palette.blue_06,
                            fg = palette.light_13,
                        },
                    },
                    results = {
                        bg = palette.light_06,
                        border = {
                            bg = palette.light_06,
                            fg = palette.light_06,
                        },
                        title = {
                            bg = palette.blue_06,
                            fg = palette.light_13,
                        },
                    },
                    selection = {
                        bg = palette.light_12,
                        fg = palette.dark_01,
                    },
                },
            },
            sintax = {
                comment = palette.green_02,
                variable = palette.blue_02,
                constant = palette.blue_05,
                string = palette.red_02,
                character = palette.red_07,
                number = palette.green_03,
                identifier = palette.grey_06,
                punctuation = palette.grey_06,
                function_name = palette.yellow_01,
                operator = palette.dark_01,
                keyword = palette.blue_01,
                keyword_control_flow = palette.purple_01,
                macro = palette.blue_01,
                type = palette.blue_15,
                namespace = palette.blue_15,
                special_char = palette.red_07,
                delimiter = palette.grey_06,
                xml_tag = palette.blue_01,
                xml_delimiter = palette.blue_21,
                todo = palette.magenta_01,
            },
            git = {
                signs = {
                    add = palette.green_05,
                    delete = palette.red_09,
                    change = palette.blue_03,
                },
                status = {
                    ignored = palette.grey_21,
                    untracked = palette.green_01,
                    staged = palette.green_10,
                    deleted = palette.red_03,
                    modified = palette.yellow_02,
                },
                diff = {
                    add = palette.green_16,
                    change = palette.green_17,
                    delete = palette.red_10,
                    text = palette.green_16,
                },
            },
            lsp = {
                diagnostics = {
                    error = palette.red_09,
                    warn = palette.yellow_04,
                    info = palette.blue_12,
                    hint = palette.blue_07,
                    unnecessary = palette.blue_24,
                },
                references = {
                    write = palette.blue_28,
                    read = palette.light_09,
                    text = palette.light_09,
                },
                inlay_hint = {
                    bg = palette.light_16,
                    fg = palette.grey_22,
                },
            },
        }

        return theme
    end,
}
