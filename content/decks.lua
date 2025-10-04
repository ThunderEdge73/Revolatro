SMODS.Back {
    key = "revolution",
    atlas = "revolution_deck",
    pos = { x = 0, y = 0 },
    config = { ante_scaling = 1.25 },
    loc_vars = function(self, info_queue, card)
        return { vars = { self.config.ante_scaling } }
    end,
    calculate = function(self, back, context)
        if context.ante_change and context.ante_end and REV.color_joker_order[G.rev_deck_index] then
            if to_big(#G.jokers.cards) < to_big(G.jokers.config.card_limit) then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card({
                            key = REV.color_joker_order[G.rev_deck_index],
                            no_edition = true,
                        })
                        return true
                    end
                }))
                G.rev_deck_index = G.rev_deck_index + 1
                return {
                    message = "Added!"
                }
            else
                return {
                    message = "No room!"
                }
            end
        end
    end,
    apply = function(self, back)
        G.rev_deck_index = 2
        delay(0.4)
        G.E_MANAGER:add_event(Event({
            func = function()
                SMODS.add_card({
                    key = "j_rev_red",
                    no_edition = true,
                })
                return true
            end
        }))
    end
}
