/// @desc CalcDamage(perpetrator,victim,atkpower)
/// @arg perpetrator
/// @arg victim
/// @arg atkpower

return (2 * argument0.lvl / 5 + 2) * argument2 * argument0.atk / argument1.def / 50 + 2 + irandom_range(0, 5);