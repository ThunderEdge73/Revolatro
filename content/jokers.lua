SMODS.Joker {
	key = "red",
	config = { extra = { Xmult = 1, Xmult_gain = 0.1, count = 0, needed = 5 } },
	rarity = 1,
	atlas = "colors",
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
				card.ability.extra.count = 0
				SMODS.scale_card(card, {
					ref_table = card.ability.extra,
					ref_value = "Xmult",
					scalar_value = "Xmult_gain",
				})
				return {
					message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } })
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
	atlas = "colors",
	pos = { x = 1, y = 0 },
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
				SMODS.scale_card(card, {
					ref_table = card.ability.extra,
					ref_value = "Xmult",
					scalar_value = "Xmult_gain",
				})
				return {
					message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } })
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
	atlas = "colors",
	pos = { x = 2, y = 0 },
	cost = 6,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_gain, card.ability.extra.count, card.ability.extra.needed } }
	end,
	calculate = function(self, card, context)
		if context.money_altered and to_big(context.amount) > to_big(0) and not context.blueprint then
			card.ability.extra.count = card.ability.extra.count + context.amount
			if to_big(card.ability.extra.count) >= to_big(card.ability.extra.needed) then
				while card.ability.extra.count >= to_big(card.ability.extra.needed) do
					card.ability.extra.count = card.ability.extra.count - card.ability.extra.needed
					SMODS.scale_card(card, {
						ref_table = card.ability.extra,
						ref_value = "Xmult",
						scalar_value = "Xmult_gain",
					})
				end
				return {
					message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } })
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
	atlas = "colors",
	pos = { x = 3, y = 0 },
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
				SMODS.scale_card(card, {
					ref_table = card.ability.extra,
					ref_value = "Xmult",
					scalar_value = "Xmult_gain",
				})
				return {
					message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } })
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
	key = "turquoise", --swapped turquoise and cyan effects to match rarity scheme
	config = { extra = { Xmult = 1, Xmult_gain = 0.1, p_hand = "High Card" } },
	rarity = 1,
	atlas = "colors",
	pos = { x = 4, y = 0 },
	cost = 6,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_gain, card.ability.extra.p_hand } }
	end,
	set_ability = function(self, card, initial, delay_sprites)
		local valid_hands = {}
		for handname, _ in pairs(G.GAME.hands) do
			if SMODS.is_poker_hand_visible(handname) then
				valid_hands[#valid_hands + 1] = handname
			end
		end
		card.ability.extra.p_hand = pseudorandom_element(valid_hands, "rev_turquoise")
	end,
	calculate = function(self, card, context)
		if context.before and not context.blueprint and context.scoring_name == card.ability.extra.p_hand then
			SMODS.scale_card(card, {
				ref_table = card.ability.extra,
				ref_value = "Xmult",
				scalar_value = "Xmult_gain",
			})
			return {
				message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } })
			}
		end
		if context.joker_main then
			return {
				Xmult = card.ability.extra.Xmult
			}
		end
		if context.end_of_round and context.game_over == false and not context.blueprint and context.main_eval then
			local valid_hands = {}
			for handname, _ in pairs(G.GAME.hands) do
				if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.p_hand then
					valid_hands[#valid_hands + 1] = handname
				end
			end
			card.ability.extra.p_hand = pseudorandom_element(valid_hands, "rev_turquoise")
			return {
				message = localize("k_reset")
			}
		end
	end
}

SMODS.Joker {
	key = "cyan",
	atlas = "colors",
	pos = { x = 5, y = 0 },
	config = { extra = { Xmult = 1, Xmult_gain = 0.5 } },
	rarity = 2,
	cost = 7,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_gain } }
	end,
	calculate = function(self, card, context)
		if context.buying_card and context.card.ability.set == "Voucher" and not context.blueprint then
			SMODS.scale_card(card, {
				ref_table = card.ability.extra,
				ref_value = "Xmult",
				scalar_value = "Xmult_gain",
			})
			return {
				message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } })
			}
		end
		if context.joker_main then
			return {
				Xmult = card.ability.extra.Xmult
			}
		end
	end,
}

SMODS.Joker {
	key = "blue",
	atlas = "colors",
	pos = { x = 6, y = 0 },
	config = { extra = { Xmult = 1, Xmult_gain = 0.5 } },
	rarity = 2,
	cost = 8,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_gain } }
	end,
	calculate = function(self, card, context)
		if context.using_consumeable and context.consumeable.ability.set == "Spectral" and not context.blueprint then
			SMODS.scale_card(card, {
				ref_table = card.ability.extra,
				ref_value = "Xmult",
				scalar_value = "Xmult_gain",
			})
			return {
				message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } })
			}
		end
		if context.joker_main then
			return {
				Xmult = card.ability.extra.Xmult
			}
		end
	end,
}

SMODS.Joker {
	key = "purple",
	atlas = "colors",
	pos = { x = 7, y = 0 },
	config = { extra = { Xmult = 1, Xmult_gain = 0.1 } },
	rarity = 2,
	cost = 8,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_gain } }
	end,
	calculate = function(self, card, context)
		if context.using_consumeable and context.consumeable.ability.set == "Tarot" and not context.blueprint then
			SMODS.scale_card(card, {
				ref_table = card.ability.extra,
				ref_value = "Xmult",
				scalar_value = "Xmult_gain",
			})
			return {
				message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } })
			}
		end
		if context.joker_main then
			return {
				Xmult = card.ability.extra.Xmult
			}
		end
	end,
}

SMODS.Joker {
	key = "pink",
	atlas = "colors",
	pos = { x = 8, y = 0 },
	config = { extra = { count = 0, needed = 5, Xmult = 1, Xmult_gain = 0.25 } },
	rarity = 2,
	cost = 8,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_gain, card.ability.extra.count, card.ability.extra.needed } }
	end,
	calculate = function(self, card, context)
		if context.before and not context.blueprint then
			local tally = 0
			for _, c in ipairs(context.scoring_hand) do
				if c:is_suit("Hearts") then
					tally = tally + 1
				end
			end
			card.ability.extra.count = card.ability.extra.count + tally
			if card.ability.extra.count >= card.ability.extra.needed then
				while card.ability.extra.count >= card.ability.extra.needed do
					card.ability.extra.count = card.ability.extra.count - card.ability.extra.needed
					SMODS.scale_card(card, {
						ref_table = card.ability.extra,
						ref_value = "Xmult",
						scalar_value = "Xmult_gain",
					})
				end
				return {
					message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } })
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
	end,
}

SMODS.Joker {
	key = "white",
	config = { extra = { Xmult = 1, Xmult_gain = 0.5 } },
	rarity = 3,
	atlas = "colors",
	pos = { x = 9, y = 0 },
	cost = 10,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		table.insert(info_queue, {set = "Other", key = "rev_color_jokers"})
		return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_gain } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				Xmult = card.ability.extra.Xmult
			}
		end
	end,
	calc_scaling = function(self, card, other_card, scaling_value, scalar_value, args)
		if (other_card.config.center.pools or {}).rev_color and other_card.config.center.key ~= "j_rev_white" then
			SMODS.scale_card(card, {
				ref_table = card.ability.extra,
				ref_value = "Xmult",
				scalar_value = "Xmult_gain",
			})
			return {
				post = {
					message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } })
				}
			}
		end
	end
}
