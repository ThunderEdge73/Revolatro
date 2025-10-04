return {
    descriptions = {
        Back = {
            b_rev_revolution = {
                name = "Revolution Deck",
                text = {
                    "At the end of every Ante and",
                    "at the start of the game, adds",
                    "a {C:attention}Color Joker{} in ascending order",
                    "{C:red}X#1#{} base Blind size"
                }
            }
        },
        Joker = {
            j_rev_red = {
                name = "Red",
                text = {
                    "This Joker gains",
                    "{X:red,C:white}X#2#{} Mult for every",
                    "{C:attention}#4#{} hands played",
                    "{C:inactive}(Currently{} {X:red,C:white}X#1#{} {C:inactive}Mult){}",
                    "{C:inactive}(#3#/#4#){}",
                }
            },
            j_rev_orange = {
                name = "Orange",
                text = {
                    "This Joker gains",
                    "{X:red,C:white}X#2#{} Mult for every",
                    "{C:attention}#4#{} Jokers sold",
                    "{C:inactive}(Currently{} {X:red,C:white}X#1#{} {C:inactive}Mult){}",
                    "{C:inactive}(#3#/#4#){}",
                }
            },
            j_rev_yellow = {
                name = "Yellow",
                text = {
                    "This Joker gains",
                    "{X:red,C:white}X#2#{} Mult for every",
                    "{C:money}$#4#{} earned",
                    "{C:inactive}(Currently{} {X:red,C:white}X#1#{} {C:inactive}Mult){}",
                    "{C:inactive}(#3#/#4#){}",
                }
            },
            j_rev_green = {
                name = "Green",
                text = {
                    "This Joker gains",
                    "{X:red,C:white}X#2#{} Mult for every",
                    "{C:money}#4#{} successful {C:green}probabilities{}",
                    "{C:inactive}(Currently{} {X:red,C:white}X#1#{} {C:inactive}Mult){}",
                    "{C:inactive}(#3#/#4#){}",
                }
            },
            j_rev_turquoise = {
                name = "Turqoise",
                text = {
                    "This Joker gains",
                    "{X:red,C:white}X#2#{} Mult if {C:attention}poker",
                    "{C:attention}hand{} is a {C:attention}#3#{},",
                    "poker hand changes",
                    "at end of round",
                    "{C:inactive}(Currently {X:red,C:white}X#1#{C:inactive} Mult){}"
                }
            },
            j_rev_cyan = {
                name = "Cyan",
                text = {
                    "This Joker gains",
                    "{X:red,C:white}X#2#{} Mult when a",
                    "{C:attention}Voucher{} is purchased",
                    "{C:inactive}(Currently {X:red,C:white}X#1#{C:inactive} Mult){}"
                }
            },
            j_rev_blue = {
                name = "Blue",
                text = {
                    "This Joker gains",
                    "{X:red,C:white}X#2#{} Mult when a",
                    "{C:spectral}Spectral{} Card is used",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult){}"
                }
            },
            j_rev_purple = {
                name = "Purple",
                text = {
                    "This Joker gains",
                    "{X:red,C:white}X#2#{} Mult when a",
                    "{C:tarot}Tarot{} Card is used",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult){}"
                }
            },
            j_rev_pink = {
                name = "Pink",
                text = {
                    "This Joker gains",
                    "{X:red,C:white}X#2#{} Mult for every",
                    "{C:attention}#4#{} {C:hearts}Hearts{} scored",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult){}",
                    "{C:inactive}(#3#/#4#){}"
                }
            },
            j_rev_white = {
                name = "White",
                text = {
                    "This Joker gains",
                    "{X:red,C:white}X#2#{} Mult whenever",
                    "the values of a",
                    "{C:attention}Color Joker{} increases",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult){}"
                }
            }
        },
        Other = {
            rev_color_jokers = {
                name = "Color Jokers",
                text = {
                    "A Joker with one of",
                    "the following names:",
                    "{C:attention}Red{}, {C:attention}Orange{}, {C:attention}Yellow{},",
                    "{C:attention}Green{}, {C:attention}Turquoise{}, {C:attention}Cyan{},",
                    "{C:attention}Blue{}, {C:attention}Purple{}, {C:attention}Pink{},",
                    "{C:attention}White{}",
                }
            }
        }
    },
    misc = {

    }
}