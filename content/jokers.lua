SMODS.Joker {
	key = "red",
	config = { extra = { Xmult = 1, Xmult_gain = 0.1, count = 0, needed = 5 } },
	rarity = 1,
	atlas = "rev_placeholder",
	pos = { x = 0, y = 0 },
	cost = 5,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_gain, card.ability.extra.count, card.ability.extra.needed } }
	end,
	calculate = function(self, card, context)
        if context.before and not context.blueprint then
            card.ability.extra.count = card.ability.extra.count + 1
            if card.ability.extra.count >= card.ability.extra.needed then
                card.ability.extra.count = card.ability.extra.count - card.ability.extra.needed
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
                return {
                    message = "X" .. card.ability.extra.Xmult .. " Mult"
                }
			else
				return {
					message = card.ability.extra.count .. "/" .. card.ability.extra.needed
				}
            end
        end
		if context.joker_main then
			return {
				Xmult = card.ability.extra.Xmult
			}
		end
	end
}

SMODS.Joker {
	key = "orange",
	config = { extra = { Xmult = 1, Xmult_gain = 0.1, count = 0, needed = 3 } },
	rarity = 1,
	atlas = "rev_placeholder",
	pos = { x = 0, y = 0 },
	cost = 5,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_gain, card.ability.extra.count, card.ability.extra.needed } }
	end,
	calculate = function(self, card, context)
		if (context.selling_card and context.card.ability.set == "Joker") and not context.blueprint then
            card.ability.extra.count = card.ability.extra.count + 1
            if card.ability.extra.count >= card.ability.extra.needed then
                card.ability.extra.count = card.ability.extra.count - card.ability.extra.needed
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
                return {
                    message = "X" .. card.ability.extra.Xmult .. " Mult"
                }
			else
				return {
					message = card.ability.extra.count .. "/" .. card.ability.extra.needed
				}
            end
		end
		if context.joker_main then
			return {
				Xmult = card.ability.extra.Xmult
			}
		end
	end
}

SMODS.Joker {
	key = "yellow",
	config = { extra = { Xmult = 1, Xmult_gain = 0.1, count = 0, needed = 25 } },
	rarity = 1,
	atlas = "rev_placeholder",
	pos = { x = 0, y = 0 },
	cost = 6,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_gain, card.ability.extra.count, card.ability.extra.needed } }
	end,
	calculate = function(self, card, context)
		if context.money_altered and context.amount > 0 and not context.blueprint then
            card.ability.extra.count = card.ability.extra.count + context.amount
            if card.ability.extra.count >= card.ability.extra.needed then
                card.ability.extra.count = card.ability.extra.count - card.ability.extra.needed
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
                return {
                    message = "X" .. card.ability.extra.Xmult .. " Mult"
                }
			else
				return {
					message = card.ability.extra.count .. "/" .. card.ability.extra.needed
				}
            end
		end
		if context.joker_main then
			return {
				Xmult = card.ability.extra.Xmult
			}
		end
	end
}

SMODS.Joker {
	key = "green",
	config = { extra = { Xmult = 1, Xmult_gain = 0.1, count = 0, needed = 3 } },
	rarity = 1,
	atlas = "rev_placeholder",
	pos = { x = 0, y = 0 },
	cost = 6,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_gain, card.ability.extra.count, card.ability.extra.needed } }
	end,
	calculate = function(self, card, context)
        if context.pseudorandom_result and context.result and not context.blueprint then
            card.ability.extra.count = card.ability.extra.count + 1
            if card.ability.extra.count >= card.ability.extra.needed then
                card.ability.extra.count = card.ability.extra.count - card.ability.extra.needed
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
                return {
                    message = "X" .. card.ability.extra.Xmult .. " Mult"
                }
			else
				return {
					message = card.ability.extra.count .. "/" .. card.ability.extra.needed
				}
            end
        end
		if context.joker_main then
			return {
				Xmult = card.ability.extra.Xmult
			}
		end
	end
}