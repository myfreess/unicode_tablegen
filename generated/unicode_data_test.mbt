///|
fn ensure(cond : Bool, msg : String, loc~ : SourceLoc = _) -> Unit!Error {
  if not(cond) {
    fail(msg, loc~)
  }
}

///|
fn ensure_not(cond : Bool, msg : String, loc~ : SourceLoc = _) -> Unit!Error {
  if cond {
    fail(msg, loc~)
  }
}
test "unicode data" {

    fn alphabetic_true() -> Unit!Error {
        for chn in 65U..<91U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 97U..<123U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 170
        assert_true(is_alphabetic('ª'))
        // charcode 181
        assert_true(is_alphabetic('µ'))
        // charcode 186
        assert_true(is_alphabetic('º'))
        for chn in 192U..<215U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 216U..<247U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 248U..<706U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 710U..<722U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 736U..<741U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 748
        assert_true(is_alphabetic('ˬ'))
        // charcode 750
        assert_true(is_alphabetic('ˮ'))
        // charcode 837
        assert_true(is_alphabetic('\u{345}'))
        for chn in 867U..<885U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 886U..<888U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 890U..<894U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 895
        assert_true(is_alphabetic('Ϳ'))
        // charcode 902
        assert_true(is_alphabetic('Ά'))
        for chn in 904U..<907U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 908
        assert_true(is_alphabetic('Ό'))
        for chn in 910U..<930U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 931U..<1014U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1015U..<1154U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1162U..<1328U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1329U..<1367U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1369
        assert_true(is_alphabetic('ՙ'))
        for chn in 1376U..<1417U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1456U..<1470U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1471
        assert_true(is_alphabetic('\u{5bf}'))
        for chn in 1473U..<1475U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1476U..<1478U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1479
        assert_true(is_alphabetic('\u{5c7}'))
        for chn in 1488U..<1515U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1519U..<1523U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1552U..<1563U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1568U..<1624U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1625U..<1632U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1646U..<1748U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1749U..<1757U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1761U..<1769U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1773U..<1776U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1786U..<1789U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1791
        assert_true(is_alphabetic('ۿ'))
        for chn in 1808U..<1856U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1869U..<1970U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1994U..<2027U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2036U..<2038U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2042
        assert_true(is_alphabetic('ߺ'))
        for chn in 2048U..<2072U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2074U..<2093U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2112U..<2137U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2144U..<2155U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2160U..<2184U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2185U..<2191U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2199
        assert_true(is_alphabetic('\u{897}'))
        for chn in 2208U..<2250U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2260U..<2272U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2275U..<2282U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2288U..<2364U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2365U..<2381U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2382U..<2385U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2389U..<2404U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2417U..<2436U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2437U..<2445U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2447U..<2449U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2451U..<2473U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2474U..<2481U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2482
        assert_true(is_alphabetic('ল'))
        for chn in 2486U..<2490U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2493U..<2501U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2503U..<2505U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2507U..<2509U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2510
        assert_true(is_alphabetic('ৎ'))
        // charcode 2519
        assert_true(is_alphabetic('\u{9d7}'))
        for chn in 2524U..<2526U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2527U..<2532U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2544U..<2546U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2556
        assert_true(is_alphabetic('ৼ'))
        for chn in 2561U..<2564U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2565U..<2571U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2575U..<2577U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2579U..<2601U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2602U..<2609U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2610U..<2612U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2613U..<2615U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2616U..<2618U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2622U..<2627U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2631U..<2633U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2635U..<2637U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2641
        assert_true(is_alphabetic('\u{a51}'))
        for chn in 2649U..<2653U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2654
        assert_true(is_alphabetic('ਫ਼'))
        for chn in 2672U..<2678U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2689U..<2692U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2693U..<2702U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2703U..<2706U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2707U..<2729U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2730U..<2737U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2738U..<2740U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2741U..<2746U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2749U..<2758U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2759U..<2762U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2763U..<2765U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2768
        assert_true(is_alphabetic('ૐ'))
        for chn in 2784U..<2788U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2809U..<2813U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2817U..<2820U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2821U..<2829U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2831U..<2833U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2835U..<2857U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2858U..<2865U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2866U..<2868U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2869U..<2874U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2877U..<2885U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2887U..<2889U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2891U..<2893U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2902U..<2904U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2908U..<2910U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2911U..<2916U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2929
        assert_true(is_alphabetic('ୱ'))
        for chn in 2946U..<2948U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2949U..<2955U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2958U..<2961U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2962U..<2966U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2969U..<2971U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2972
        assert_true(is_alphabetic('ஜ'))
        for chn in 2974U..<2976U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2979U..<2981U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2984U..<2987U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2990U..<3002U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3006U..<3011U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3014U..<3017U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3018U..<3021U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3024
        assert_true(is_alphabetic('ௐ'))
        // charcode 3031
        assert_true(is_alphabetic('\u{bd7}'))
        for chn in 3072U..<3085U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3086U..<3089U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3090U..<3113U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3114U..<3130U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3133U..<3141U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3142U..<3145U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3146U..<3149U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3157U..<3159U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3160U..<3163U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3165
        assert_true(is_alphabetic('ౝ'))
        for chn in 3168U..<3172U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3200U..<3204U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3205U..<3213U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3214U..<3217U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3218U..<3241U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3242U..<3252U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3253U..<3258U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3261U..<3269U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3270U..<3273U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3274U..<3277U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3285U..<3287U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3293U..<3295U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3296U..<3300U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3313U..<3316U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3328U..<3341U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3342U..<3345U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3346U..<3387U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3389U..<3397U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3398U..<3401U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3402U..<3405U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3406
        assert_true(is_alphabetic('ൎ'))
        for chn in 3412U..<3416U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3423U..<3428U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3450U..<3456U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3457U..<3460U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3461U..<3479U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3482U..<3506U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3507U..<3516U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3517
        assert_true(is_alphabetic('ල'))
        for chn in 3520U..<3527U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3535U..<3541U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3542
        assert_true(is_alphabetic('\u{dd6}'))
        for chn in 3544U..<3552U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3570U..<3572U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3585U..<3643U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3648U..<3655U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3661
        assert_true(is_alphabetic('\u{e4d}'))
        for chn in 3713U..<3715U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3716
        assert_true(is_alphabetic('ຄ'))
        for chn in 3718U..<3723U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3724U..<3748U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3749
        assert_true(is_alphabetic('ລ'))
        for chn in 3751U..<3770U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3771U..<3774U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3776U..<3781U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3782
        assert_true(is_alphabetic('ໆ'))
        // charcode 3789
        assert_true(is_alphabetic('\u{ecd}'))
        for chn in 3804U..<3808U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3840
        assert_true(is_alphabetic('ༀ'))
        for chn in 3904U..<3912U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3913U..<3949U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3953U..<3972U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3976U..<3992U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3993U..<4029U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4096U..<4151U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4152
        assert_true(is_alphabetic('း'))
        for chn in 4155U..<4160U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4176U..<4240U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4250U..<4254U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4256U..<4294U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4295
        assert_true(is_alphabetic('Ⴧ'))
        // charcode 4301
        assert_true(is_alphabetic('Ⴭ'))
        for chn in 4304U..<4347U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4348U..<4681U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4682U..<4686U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4688U..<4695U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4696
        assert_true(is_alphabetic('ቘ'))
        for chn in 4698U..<4702U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4704U..<4745U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4746U..<4750U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4752U..<4785U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4786U..<4790U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4792U..<4799U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4800
        assert_true(is_alphabetic('ዀ'))
        for chn in 4802U..<4806U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4808U..<4823U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4824U..<4881U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4882U..<4886U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4888U..<4955U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4992U..<5008U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5024U..<5110U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5112U..<5118U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5121U..<5741U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5743U..<5760U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5761U..<5787U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5792U..<5867U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5870U..<5881U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5888U..<5908U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5919U..<5940U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5952U..<5972U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5984U..<5997U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5998U..<6001U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6002U..<6004U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6016U..<6068U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6070U..<6089U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6103
        assert_true(is_alphabetic('ៗ'))
        // charcode 6108
        assert_true(is_alphabetic('ៜ'))
        for chn in 6176U..<6265U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6272U..<6315U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6320U..<6390U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6400U..<6431U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6432U..<6444U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6448U..<6457U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6480U..<6510U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6512U..<6517U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6528U..<6572U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6576U..<6602U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6656U..<6684U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6688U..<6751U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6753U..<6773U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6823
        assert_true(is_alphabetic('ᪧ'))
        for chn in 6847U..<6849U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6860U..<6863U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6912U..<6964U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6965U..<6980U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6981U..<6989U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7040U..<7082U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7084U..<7088U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7098U..<7142U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7143U..<7154U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7168U..<7223U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7245U..<7248U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7258U..<7294U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7296U..<7307U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7312U..<7355U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7357U..<7360U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7401U..<7405U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7406U..<7412U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7413U..<7415U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7418
        assert_true(is_alphabetic('ᳺ'))
        for chn in 7424U..<7616U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7635U..<7669U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7680U..<7958U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7960U..<7966U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7968U..<8006U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8008U..<8014U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8016U..<8024U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8025
        assert_true(is_alphabetic('Ὑ'))
        // charcode 8027
        assert_true(is_alphabetic('Ὓ'))
        // charcode 8029
        assert_true(is_alphabetic('Ὕ'))
        for chn in 8031U..<8062U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8064U..<8117U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8118U..<8125U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8126
        assert_true(is_alphabetic('ι'))
        for chn in 8130U..<8133U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8134U..<8141U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8144U..<8148U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8150U..<8156U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8160U..<8173U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8178U..<8181U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8182U..<8189U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8305
        assert_true(is_alphabetic('ⁱ'))
        // charcode 8319
        assert_true(is_alphabetic('ⁿ'))
        for chn in 8336U..<8349U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8450
        assert_true(is_alphabetic('ℂ'))
        // charcode 8455
        assert_true(is_alphabetic('ℇ'))
        for chn in 8458U..<8468U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8469
        assert_true(is_alphabetic('ℕ'))
        for chn in 8473U..<8478U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8484
        assert_true(is_alphabetic('ℤ'))
        // charcode 8486
        assert_true(is_alphabetic('Ω'))
        // charcode 8488
        assert_true(is_alphabetic('ℨ'))
        for chn in 8490U..<8494U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8495U..<8506U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8508U..<8512U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8517U..<8522U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8526
        assert_true(is_alphabetic('ⅎ'))
        for chn in 8544U..<8585U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 9398U..<9450U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11264U..<11493U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11499U..<11503U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11506U..<11508U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11520U..<11558U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11559
        assert_true(is_alphabetic('ⴧ'))
        // charcode 11565
        assert_true(is_alphabetic('ⴭ'))
        for chn in 11568U..<11624U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11631
        assert_true(is_alphabetic('ⵯ'))
        for chn in 11648U..<11671U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11680U..<11687U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11688U..<11695U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11696U..<11703U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11704U..<11711U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11712U..<11719U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11720U..<11727U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11728U..<11735U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11736U..<11743U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11744U..<11776U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11823
        assert_true(is_alphabetic('ⸯ'))
        for chn in 12293U..<12296U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12321U..<12330U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12337U..<12342U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12344U..<12349U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12353U..<12439U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12445U..<12448U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12449U..<12539U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12540U..<12544U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12549U..<12592U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12593U..<12687U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12704U..<12736U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12784U..<12800U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 13312U..<19904U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 19968U..<42125U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42192U..<42238U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42240U..<42509U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42512U..<42528U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42538U..<42540U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42560U..<42607U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42612U..<42620U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42623U..<42736U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42775U..<42784U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42786U..<42889U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42891U..<42958U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42960U..<42962U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42963
        assert_true(is_alphabetic('ꟓ'))
        for chn in 42965U..<42973U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42994U..<43014U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43015U..<43048U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43072U..<43124U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43136U..<43204U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43205
        assert_true(is_alphabetic('\u{a8c5}'))
        for chn in 43250U..<43256U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43259
        assert_true(is_alphabetic('ꣻ'))
        for chn in 43261U..<43264U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43274U..<43307U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43312U..<43347U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43360U..<43389U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43392U..<43443U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43444U..<43456U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43471
        assert_true(is_alphabetic('ꧏ'))
        for chn in 43488U..<43504U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43514U..<43519U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43520U..<43575U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43584U..<43598U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43616U..<43639U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43642U..<43711U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43712
        assert_true(is_alphabetic('ꫀ'))
        // charcode 43714
        assert_true(is_alphabetic('ꫂ'))
        for chn in 43739U..<43742U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43744U..<43760U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43762U..<43766U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43777U..<43783U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43785U..<43791U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43793U..<43799U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43808U..<43815U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43816U..<43823U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43824U..<43867U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43868U..<43882U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43888U..<44011U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 44032U..<55204U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 55216U..<55239U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 55243U..<55292U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 63744U..<64110U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64112U..<64218U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64256U..<64263U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64275U..<64280U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64285U..<64297U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64298U..<64311U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64312U..<64317U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 64318
        assert_true(is_alphabetic('מּ'))
        for chn in 64320U..<64322U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64323U..<64325U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64326U..<64434U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64467U..<64830U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64848U..<64912U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64914U..<64968U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65008U..<65020U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65136U..<65141U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65142U..<65277U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65313U..<65339U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65345U..<65371U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65382U..<65471U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65474U..<65480U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65482U..<65488U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65490U..<65496U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65498U..<65501U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65536U..<65548U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65549U..<65575U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65576U..<65595U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65596U..<65598U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65599U..<65614U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65616U..<65630U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65664U..<65787U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65856U..<65909U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66176U..<66205U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66208U..<66257U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66304U..<66336U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66349U..<66379U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66384U..<66427U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66432U..<66462U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66464U..<66500U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66504U..<66512U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66513U..<66518U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66560U..<66718U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66736U..<66772U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66776U..<66812U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66816U..<66856U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66864U..<66916U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66928U..<66939U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66940U..<66955U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66956U..<66963U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66964U..<66966U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66967U..<66978U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66979U..<66994U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66995U..<67002U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67003U..<67005U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67008U..<67060U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67072U..<67383U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67392U..<67414U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67424U..<67432U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67456U..<67462U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67463U..<67505U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67506U..<67515U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67584U..<67590U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 67592
        assert_true(is_alphabetic('𐠈'))
        for chn in 67594U..<67638U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67639U..<67641U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 67644
        assert_true(is_alphabetic('𐠼'))
        for chn in 67647U..<67670U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67680U..<67703U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67712U..<67743U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67808U..<67827U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67828U..<67830U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67840U..<67862U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67872U..<67898U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67968U..<68024U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68030U..<68032U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68096U..<68100U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68101U..<68103U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68108U..<68116U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68117U..<68120U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68121U..<68150U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68192U..<68221U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68224U..<68253U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68288U..<68296U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68297U..<68325U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68352U..<68406U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68416U..<68438U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68448U..<68467U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68480U..<68498U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68608U..<68681U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68736U..<68787U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68800U..<68851U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68864U..<68904U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68938U..<68966U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 68969
        assert_true(is_alphabetic('\u{10d69}'))
        for chn in 68975U..<68998U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69248U..<69290U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69291U..<69293U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69296U..<69298U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69314U..<69317U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 69372
        assert_true(is_alphabetic('\u{10efc}'))
        for chn in 69376U..<69405U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 69415
        assert_true(is_alphabetic('𐼧'))
        for chn in 69424U..<69446U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69488U..<69506U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69552U..<69573U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69600U..<69623U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69632U..<69702U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69745U..<69750U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69760U..<69817U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 69826
        assert_true(is_alphabetic('\u{110c2}'))
        for chn in 69840U..<69865U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69888U..<69939U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69956U..<69960U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69968U..<70003U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70006
        assert_true(is_alphabetic('𑅶'))
        for chn in 70016U..<70080U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70081U..<70085U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70094U..<70096U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70106
        assert_true(is_alphabetic('𑇚'))
        // charcode 70108
        assert_true(is_alphabetic('𑇜'))
        for chn in 70144U..<70162U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70163U..<70197U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70199
        assert_true(is_alphabetic('\u{11237}'))
        for chn in 70206U..<70210U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70272U..<70279U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70280
        assert_true(is_alphabetic('𑊈'))
        for chn in 70282U..<70286U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70287U..<70302U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70303U..<70313U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70320U..<70377U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70400U..<70404U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70405U..<70413U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70415U..<70417U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70419U..<70441U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70442U..<70449U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70450U..<70452U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70453U..<70458U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70461U..<70469U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70471U..<70473U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70475U..<70477U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70480
        assert_true(is_alphabetic('𑍐'))
        // charcode 70487
        assert_true(is_alphabetic('\u{11357}'))
        for chn in 70493U..<70500U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70528U..<70538U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70539
        assert_true(is_alphabetic('𑎋'))
        // charcode 70542
        assert_true(is_alphabetic('𑎎'))
        for chn in 70544U..<70582U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70583U..<70593U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70594
        assert_true(is_alphabetic('\u{113c2}'))
        // charcode 70597
        assert_true(is_alphabetic('\u{113c5}'))
        for chn in 70599U..<70603U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70604U..<70606U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70609
        assert_true(is_alphabetic('𑏑'))
        // charcode 70611
        assert_true(is_alphabetic('𑏓'))
        for chn in 70656U..<70722U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70723U..<70726U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70727U..<70731U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70751U..<70754U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70784U..<70850U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70852U..<70854U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70855
        assert_true(is_alphabetic('𑓇'))
        for chn in 71040U..<71094U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71096U..<71103U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71128U..<71134U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71168U..<71231U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71232
        assert_true(is_alphabetic('\u{11640}'))
        // charcode 71236
        assert_true(is_alphabetic('𑙄'))
        for chn in 71296U..<71350U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71352
        assert_true(is_alphabetic('𑚸'))
        for chn in 71424U..<71451U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71453U..<71467U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71488U..<71495U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71680U..<71737U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71840U..<71904U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71935U..<71943U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71945
        assert_true(is_alphabetic('𑤉'))
        for chn in 71948U..<71956U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71957U..<71959U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71960U..<71990U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71991U..<71993U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71995U..<71997U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71999U..<72003U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72096U..<72104U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72106U..<72152U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72154U..<72160U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72161
        assert_true(is_alphabetic('𑧡'))
        for chn in 72163U..<72165U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72192U..<72243U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72245U..<72255U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72272U..<72344U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72349
        assert_true(is_alphabetic('𑪝'))
        for chn in 72368U..<72441U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72640U..<72673U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72704U..<72713U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72714U..<72759U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72760U..<72767U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72768
        assert_true(is_alphabetic('𑱀'))
        for chn in 72818U..<72848U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72850U..<72872U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72873U..<72887U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72960U..<72967U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72968U..<72970U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72971U..<73015U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73018
        assert_true(is_alphabetic('\u{11d3a}'))
        for chn in 73020U..<73022U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73023U..<73026U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73027
        assert_true(is_alphabetic('\u{11d43}'))
        for chn in 73030U..<73032U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73056U..<73062U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73063U..<73065U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73066U..<73103U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73104U..<73106U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73107U..<73111U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73112
        assert_true(is_alphabetic('𑶘'))
        for chn in 73440U..<73463U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73472U..<73489U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73490U..<73531U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73534U..<73537U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73648
        assert_true(is_alphabetic('𑾰'))
        for chn in 73728U..<74650U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 74752U..<74863U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 74880U..<75076U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 77712U..<77809U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 77824U..<78896U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 78913U..<78919U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 78944U..<82939U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 82944U..<83527U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 90368U..<90415U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92160U..<92729U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92736U..<92767U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92784U..<92863U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92880U..<92910U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92928U..<92976U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92992U..<92996U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93027U..<93048U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93053U..<93072U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93504U..<93549U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93760U..<93824U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93952U..<94027U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94031U..<94088U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94095U..<94112U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94176U..<94178U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 94179
        assert_true(is_alphabetic('𖿣'))
        for chn in 94192U..<94194U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94208U..<100344U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 100352U..<101590U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 101631U..<101641U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 110576U..<110580U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 110581U..<110588U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 110589U..<110591U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 110592U..<110883U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 110898
        assert_true(is_alphabetic('𛄲'))
        for chn in 110928U..<110931U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 110933
        assert_true(is_alphabetic('𛅕'))
        for chn in 110948U..<110952U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 110960U..<111356U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 113664U..<113771U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 113776U..<113789U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 113792U..<113801U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 113808U..<113818U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 113822
        assert_true(is_alphabetic('\u{1bc9e}'))
        for chn in 119808U..<119893U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119894U..<119965U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119966U..<119968U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119970
        assert_true(is_alphabetic('𝒢'))
        for chn in 119973U..<119975U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119977U..<119981U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119982U..<119994U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119995
        assert_true(is_alphabetic('𝒻'))
        for chn in 119997U..<120004U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120005U..<120070U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120071U..<120075U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120077U..<120085U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120086U..<120093U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120094U..<120122U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120123U..<120127U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120128U..<120133U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120134
        assert_true(is_alphabetic('𝕆'))
        for chn in 120138U..<120145U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120146U..<120486U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120488U..<120513U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120514U..<120539U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120540U..<120571U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120572U..<120597U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120598U..<120629U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120630U..<120655U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120656U..<120687U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120688U..<120713U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120714U..<120745U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120746U..<120771U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120772U..<120780U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122624U..<122655U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122661U..<122667U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122880U..<122887U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122888U..<122905U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122907U..<122914U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122915U..<122917U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122918U..<122923U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122928U..<122990U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 123023
        assert_true(is_alphabetic('\u{1e08f}'))
        for chn in 123136U..<123181U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123191U..<123198U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 123214
        assert_true(is_alphabetic('𞅎'))
        for chn in 123536U..<123566U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123584U..<123628U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124112U..<124140U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124368U..<124398U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 124400
        assert_true(is_alphabetic('𞗰'))
        for chn in 124896U..<124903U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124904U..<124908U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124909U..<124911U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124912U..<124927U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124928U..<125125U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125184U..<125252U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 125255
        assert_true(is_alphabetic('\u{1e947}'))
        // charcode 125259
        assert_true(is_alphabetic('𞥋'))
        for chn in 126464U..<126468U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126469U..<126496U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126497U..<126499U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 126500
        assert_true(is_alphabetic('𞸤'))
        // charcode 126503
        assert_true(is_alphabetic('𞸧'))
        for chn in 126505U..<126515U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126516U..<126520U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 126521
        assert_true(is_alphabetic('𞸹'))
        // charcode 126523
        assert_true(is_alphabetic('𞸻'))
        // charcode 126530
        assert_true(is_alphabetic('𞹂'))
        // charcode 126535
        assert_true(is_alphabetic('𞹇'))
        // charcode 126537
        assert_true(is_alphabetic('𞹉'))
        // charcode 126539
        assert_true(is_alphabetic('𞹋'))
        for chn in 126541U..<126544U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126545U..<126547U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 126548
        assert_true(is_alphabetic('𞹔'))
        // charcode 126551
        assert_true(is_alphabetic('𞹗'))
        // charcode 126553
        assert_true(is_alphabetic('𞹙'))
        // charcode 126555
        assert_true(is_alphabetic('𞹛'))
        // charcode 126557
        assert_true(is_alphabetic('𞹝'))
        // charcode 126559
        assert_true(is_alphabetic('𞹟'))
        for chn in 126561U..<126563U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 126564
        assert_true(is_alphabetic('𞹤'))
        for chn in 126567U..<126571U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126572U..<126579U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126580U..<126584U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126585U..<126589U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 126590
        assert_true(is_alphabetic('𞹾'))
        for chn in 126592U..<126602U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126603U..<126620U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126625U..<126628U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126629U..<126634U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126635U..<126652U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127280U..<127306U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127312U..<127338U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127344U..<127370U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 131072U..<173792U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 173824U..<177978U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 177984U..<178206U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 178208U..<183970U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 183984U..<191457U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 191472U..<192094U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 194560U..<195102U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 196608U..<201547U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 201552U..<205744U {
            ensure(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    fn alphabetic_false() -> Unit!Error {
        for chn in 0U..<65U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 91U..<97U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123U..<170U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 171U..<181U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 182U..<186U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 187U..<192U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 215
        assert_false(is_alphabetic('×'))
        // charcode 247
        assert_false(is_alphabetic('÷'))
        for chn in 706U..<710U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 722U..<736U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 741U..<748U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 749
        assert_false(is_alphabetic('˭'))
        for chn in 751U..<837U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 838U..<867U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 885
        assert_false(is_alphabetic('͵'))
        for chn in 888U..<890U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 894
        assert_false(is_alphabetic(';'))
        for chn in 896U..<902U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 903
        assert_false(is_alphabetic('·'))
        // charcode 907
        assert_false(is_alphabetic('\u{38b}'))
        // charcode 909
        assert_false(is_alphabetic('\u{38d}'))
        // charcode 930
        assert_false(is_alphabetic('\u{3a2}'))
        // charcode 1014
        assert_false(is_alphabetic('϶'))
        for chn in 1154U..<1162U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1328
        assert_false(is_alphabetic('\u{530}'))
        for chn in 1367U..<1369U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1370U..<1376U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1417U..<1456U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1470
        assert_false(is_alphabetic('־'))
        // charcode 1472
        assert_false(is_alphabetic('׀'))
        // charcode 1475
        assert_false(is_alphabetic('׃'))
        // charcode 1478
        assert_false(is_alphabetic('׆'))
        for chn in 1480U..<1488U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1515U..<1519U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1523U..<1552U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1563U..<1568U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1624
        assert_false(is_alphabetic('\u{658}'))
        for chn in 1632U..<1646U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1748
        assert_false(is_alphabetic('۔'))
        for chn in 1757U..<1761U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1769U..<1773U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1776U..<1786U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1789U..<1791U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1792U..<1808U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1856U..<1869U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1970U..<1994U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2027U..<2036U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2038U..<2042U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2043U..<2048U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2072U..<2074U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2093U..<2112U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2137U..<2144U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2155U..<2160U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2184
        assert_false(is_alphabetic('࢈'))
        for chn in 2191U..<2199U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2200U..<2208U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2250U..<2260U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2272U..<2275U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2282U..<2288U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2364
        assert_false(is_alphabetic('\u{93c}'))
        // charcode 2381
        assert_false(is_alphabetic('\u{94d}'))
        for chn in 2385U..<2389U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2404U..<2417U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2436
        assert_false(is_alphabetic('\u{984}'))
        for chn in 2445U..<2447U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2449U..<2451U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2473
        assert_false(is_alphabetic('\u{9a9}'))
        // charcode 2481
        assert_false(is_alphabetic('\u{9b1}'))
        for chn in 2483U..<2486U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2490U..<2493U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2501U..<2503U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2505U..<2507U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2509
        assert_false(is_alphabetic('\u{9cd}'))
        for chn in 2511U..<2519U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2520U..<2524U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2526
        assert_false(is_alphabetic('\u{9de}'))
        for chn in 2532U..<2544U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2546U..<2556U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2557U..<2561U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2564
        assert_false(is_alphabetic('\u{a04}'))
        for chn in 2571U..<2575U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2577U..<2579U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2601
        assert_false(is_alphabetic('\u{a29}'))
        // charcode 2609
        assert_false(is_alphabetic('\u{a31}'))
        // charcode 2612
        assert_false(is_alphabetic('\u{a34}'))
        // charcode 2615
        assert_false(is_alphabetic('\u{a37}'))
        for chn in 2618U..<2622U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2627U..<2631U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2633U..<2635U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2637U..<2641U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2642U..<2649U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2653
        assert_false(is_alphabetic('\u{a5d}'))
        for chn in 2655U..<2672U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2678U..<2689U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2692
        assert_false(is_alphabetic('\u{a84}'))
        // charcode 2702
        assert_false(is_alphabetic('\u{a8e}'))
        // charcode 2706
        assert_false(is_alphabetic('\u{a92}'))
        // charcode 2729
        assert_false(is_alphabetic('\u{aa9}'))
        // charcode 2737
        assert_false(is_alphabetic('\u{ab1}'))
        // charcode 2740
        assert_false(is_alphabetic('\u{ab4}'))
        for chn in 2746U..<2749U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2758
        assert_false(is_alphabetic('\u{ac6}'))
        // charcode 2762
        assert_false(is_alphabetic('\u{aca}'))
        for chn in 2765U..<2768U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2769U..<2784U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2788U..<2809U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2813U..<2817U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2820
        assert_false(is_alphabetic('\u{b04}'))
        for chn in 2829U..<2831U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2833U..<2835U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2857
        assert_false(is_alphabetic('\u{b29}'))
        // charcode 2865
        assert_false(is_alphabetic('\u{b31}'))
        // charcode 2868
        assert_false(is_alphabetic('\u{b34}'))
        for chn in 2874U..<2877U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2885U..<2887U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2889U..<2891U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2893U..<2902U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2904U..<2908U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2910
        assert_false(is_alphabetic('\u{b5e}'))
        for chn in 2916U..<2929U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2930U..<2946U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2948
        assert_false(is_alphabetic('\u{b84}'))
        for chn in 2955U..<2958U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2961
        assert_false(is_alphabetic('\u{b91}'))
        for chn in 2966U..<2969U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2971
        assert_false(is_alphabetic('\u{b9b}'))
        // charcode 2973
        assert_false(is_alphabetic('\u{b9d}'))
        for chn in 2976U..<2979U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2981U..<2984U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2987U..<2990U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3002U..<3006U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3011U..<3014U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3017
        assert_false(is_alphabetic('\u{bc9}'))
        for chn in 3021U..<3024U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3025U..<3031U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3032U..<3072U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3085
        assert_false(is_alphabetic('\u{c0d}'))
        // charcode 3089
        assert_false(is_alphabetic('\u{c11}'))
        // charcode 3113
        assert_false(is_alphabetic('\u{c29}'))
        for chn in 3130U..<3133U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3141
        assert_false(is_alphabetic('\u{c45}'))
        // charcode 3145
        assert_false(is_alphabetic('\u{c49}'))
        for chn in 3149U..<3157U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3159
        assert_false(is_alphabetic('\u{c57}'))
        for chn in 3163U..<3165U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3166U..<3168U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3172U..<3200U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3204
        assert_false(is_alphabetic('಄'))
        // charcode 3213
        assert_false(is_alphabetic('\u{c8d}'))
        // charcode 3217
        assert_false(is_alphabetic('\u{c91}'))
        // charcode 3241
        assert_false(is_alphabetic('\u{ca9}'))
        // charcode 3252
        assert_false(is_alphabetic('\u{cb4}'))
        for chn in 3258U..<3261U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3269
        assert_false(is_alphabetic('\u{cc5}'))
        // charcode 3273
        assert_false(is_alphabetic('\u{cc9}'))
        for chn in 3277U..<3285U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3287U..<3293U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3295
        assert_false(is_alphabetic('\u{cdf}'))
        for chn in 3300U..<3313U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3316U..<3328U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3341
        assert_false(is_alphabetic('\u{d0d}'))
        // charcode 3345
        assert_false(is_alphabetic('\u{d11}'))
        for chn in 3387U..<3389U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3397
        assert_false(is_alphabetic('\u{d45}'))
        // charcode 3401
        assert_false(is_alphabetic('\u{d49}'))
        // charcode 3405
        assert_false(is_alphabetic('\u{d4d}'))
        for chn in 3407U..<3412U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3416U..<3423U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3428U..<3450U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3456
        assert_false(is_alphabetic('\u{d80}'))
        // charcode 3460
        assert_false(is_alphabetic('\u{d84}'))
        for chn in 3479U..<3482U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3506
        assert_false(is_alphabetic('\u{db2}'))
        // charcode 3516
        assert_false(is_alphabetic('\u{dbc}'))
        for chn in 3518U..<3520U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3527U..<3535U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3541
        assert_false(is_alphabetic('\u{dd5}'))
        // charcode 3543
        assert_false(is_alphabetic('\u{dd7}'))
        for chn in 3552U..<3570U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3572U..<3585U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3643U..<3648U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3655U..<3661U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3662U..<3713U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3715
        assert_false(is_alphabetic('\u{e83}'))
        // charcode 3717
        assert_false(is_alphabetic('\u{e85}'))
        // charcode 3723
        assert_false(is_alphabetic('\u{e8b}'))
        // charcode 3748
        assert_false(is_alphabetic('\u{ea4}'))
        // charcode 3750
        assert_false(is_alphabetic('\u{ea6}'))
        // charcode 3770
        assert_false(is_alphabetic('\u{eba}'))
        for chn in 3774U..<3776U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3781
        assert_false(is_alphabetic('\u{ec5}'))
        for chn in 3783U..<3789U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3790U..<3804U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3808U..<3840U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3841U..<3904U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3912
        assert_false(is_alphabetic('\u{f48}'))
        for chn in 3949U..<3953U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3972U..<3976U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3992
        assert_false(is_alphabetic('\u{f98}'))
        for chn in 4029U..<4096U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4151
        assert_false(is_alphabetic('\u{1037}'))
        for chn in 4153U..<4155U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4160U..<4176U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4240U..<4250U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4254U..<4256U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4294
        assert_false(is_alphabetic('\u{10c6}'))
        for chn in 4296U..<4301U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4302U..<4304U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4347
        assert_false(is_alphabetic('჻'))
        // charcode 4681
        assert_false(is_alphabetic('\u{1249}'))
        for chn in 4686U..<4688U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4695
        assert_false(is_alphabetic('\u{1257}'))
        // charcode 4697
        assert_false(is_alphabetic('\u{1259}'))
        for chn in 4702U..<4704U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4745
        assert_false(is_alphabetic('\u{1289}'))
        for chn in 4750U..<4752U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4785
        assert_false(is_alphabetic('\u{12b1}'))
        for chn in 4790U..<4792U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4799
        assert_false(is_alphabetic('\u{12bf}'))
        // charcode 4801
        assert_false(is_alphabetic('\u{12c1}'))
        for chn in 4806U..<4808U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4823
        assert_false(is_alphabetic('\u{12d7}'))
        // charcode 4881
        assert_false(is_alphabetic('\u{1311}'))
        for chn in 4886U..<4888U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4955U..<4992U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5008U..<5024U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5110U..<5112U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5118U..<5121U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5741U..<5743U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 5760
        assert_false(is_alphabetic('\u{1680}'))
        for chn in 5787U..<5792U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5867U..<5870U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5881U..<5888U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5908U..<5919U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5940U..<5952U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5972U..<5984U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 5997
        assert_false(is_alphabetic('\u{176d}'))
        // charcode 6001
        assert_false(is_alphabetic('\u{1771}'))
        for chn in 6004U..<6016U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6068U..<6070U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6089U..<6103U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6104U..<6108U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6109U..<6176U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6265U..<6272U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6315U..<6320U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6390U..<6400U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6431
        assert_false(is_alphabetic('\u{191f}'))
        for chn in 6444U..<6448U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6457U..<6480U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6510U..<6512U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6517U..<6528U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6572U..<6576U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6602U..<6656U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6684U..<6688U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6751U..<6753U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6773U..<6823U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6824U..<6847U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6849U..<6860U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6863U..<6912U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6964
        assert_false(is_alphabetic('\u{1b34}'))
        // charcode 6980
        assert_false(is_alphabetic('\u{1b44}'))
        for chn in 6989U..<7040U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7082U..<7084U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7088U..<7098U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7142
        assert_false(is_alphabetic('\u{1be6}'))
        for chn in 7154U..<7168U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7223U..<7245U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7248U..<7258U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7294U..<7296U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7307U..<7312U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7355U..<7357U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7360U..<7401U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7405
        assert_false(is_alphabetic('\u{1ced}'))
        // charcode 7412
        assert_false(is_alphabetic('\u{1cf4}'))
        for chn in 7415U..<7418U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7419U..<7424U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7616U..<7635U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7669U..<7680U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7958U..<7960U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7966U..<7968U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8006U..<8008U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8014U..<8016U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8024
        assert_false(is_alphabetic('\u{1f58}'))
        // charcode 8026
        assert_false(is_alphabetic('\u{1f5a}'))
        // charcode 8028
        assert_false(is_alphabetic('\u{1f5c}'))
        // charcode 8030
        assert_false(is_alphabetic('\u{1f5e}'))
        for chn in 8062U..<8064U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8117
        assert_false(is_alphabetic('\u{1fb5}'))
        // charcode 8125
        assert_false(is_alphabetic('᾽'))
        for chn in 8127U..<8130U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8133
        assert_false(is_alphabetic('\u{1fc5}'))
        for chn in 8141U..<8144U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8148U..<8150U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8156U..<8160U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8173U..<8178U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8181
        assert_false(is_alphabetic('\u{1ff5}'))
        for chn in 8189U..<8305U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8306U..<8319U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8320U..<8336U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8349U..<8450U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8451U..<8455U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8456U..<8458U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8468
        assert_false(is_alphabetic('℔'))
        for chn in 8470U..<8473U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8478U..<8484U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8485
        assert_false(is_alphabetic('℥'))
        // charcode 8487
        assert_false(is_alphabetic('℧'))
        // charcode 8489
        assert_false(is_alphabetic('℩'))
        // charcode 8494
        assert_false(is_alphabetic('℮'))
        for chn in 8506U..<8508U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8512U..<8517U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8522U..<8526U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8527U..<8544U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8585U..<9398U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 9450U..<11264U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11493U..<11499U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11503U..<11506U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11508U..<11520U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11558
        assert_false(is_alphabetic('\u{2d26}'))
        for chn in 11560U..<11565U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11566U..<11568U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11624U..<11631U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11632U..<11648U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11671U..<11680U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11687
        assert_false(is_alphabetic('\u{2da7}'))
        // charcode 11695
        assert_false(is_alphabetic('\u{2daf}'))
        // charcode 11703
        assert_false(is_alphabetic('\u{2db7}'))
        // charcode 11711
        assert_false(is_alphabetic('\u{2dbf}'))
        // charcode 11719
        assert_false(is_alphabetic('\u{2dc7}'))
        // charcode 11727
        assert_false(is_alphabetic('\u{2dcf}'))
        // charcode 11735
        assert_false(is_alphabetic('\u{2dd7}'))
        // charcode 11743
        assert_false(is_alphabetic('\u{2ddf}'))
        for chn in 11776U..<11823U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11824U..<12293U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12296U..<12321U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12330U..<12337U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12342U..<12344U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12349U..<12353U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12439U..<12445U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 12448
        assert_false(is_alphabetic('゠'))
        // charcode 12539
        assert_false(is_alphabetic('・'))
        for chn in 12544U..<12549U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 12592
        assert_false(is_alphabetic('\u{3130}'))
        for chn in 12687U..<12704U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12736U..<12784U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12800U..<13312U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 19904U..<19968U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42125U..<42192U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42238U..<42240U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42509U..<42512U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42528U..<42538U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42540U..<42560U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42607U..<42612U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42620U..<42623U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42736U..<42775U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42784U..<42786U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42889U..<42891U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42958U..<42960U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42962
        assert_false(is_alphabetic('\u{a7d2}'))
        // charcode 42964
        assert_false(is_alphabetic('\u{a7d4}'))
        for chn in 42973U..<42994U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43014
        assert_false(is_alphabetic('\u{a806}'))
        for chn in 43048U..<43072U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43124U..<43136U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43204
        assert_false(is_alphabetic('\u{a8c4}'))
        for chn in 43206U..<43250U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43256U..<43259U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43260
        assert_false(is_alphabetic('꣼'))
        for chn in 43264U..<43274U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43307U..<43312U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43347U..<43360U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43389U..<43392U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43443
        assert_false(is_alphabetic('\u{a9b3}'))
        for chn in 43456U..<43471U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43472U..<43488U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43504U..<43514U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43519
        assert_false(is_alphabetic('\u{a9ff}'))
        for chn in 43575U..<43584U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43598U..<43616U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43639U..<43642U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43711
        assert_false(is_alphabetic('\u{aabf}'))
        // charcode 43713
        assert_false(is_alphabetic('\u{aac1}'))
        for chn in 43715U..<43739U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43742U..<43744U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43760U..<43762U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43766U..<43777U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43783U..<43785U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43791U..<43793U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43799U..<43808U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43815
        assert_false(is_alphabetic('\u{ab27}'))
        // charcode 43823
        assert_false(is_alphabetic('\u{ab2f}'))
        // charcode 43867
        assert_false(is_alphabetic('꭛'))
        for chn in 43882U..<43888U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 44011U..<44032U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 55204U..<55216U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 55239U..<55243U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 55292U..<55296U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 57344U..<63744U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64110U..<64112U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64218U..<64256U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64263U..<64275U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64280U..<64285U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 64297
        assert_false(is_alphabetic('﬩'))
        // charcode 64311
        assert_false(is_alphabetic('\u{fb37}'))
        // charcode 64317
        assert_false(is_alphabetic('\u{fb3d}'))
        // charcode 64319
        assert_false(is_alphabetic('\u{fb3f}'))
        // charcode 64322
        assert_false(is_alphabetic('\u{fb42}'))
        // charcode 64325
        assert_false(is_alphabetic('\u{fb45}'))
        for chn in 64434U..<64467U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64830U..<64848U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64912U..<64914U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64968U..<65008U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65020U..<65136U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 65141
        assert_false(is_alphabetic('\u{fe75}'))
        for chn in 65277U..<65313U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65339U..<65345U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65371U..<65382U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65471U..<65474U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65480U..<65482U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65488U..<65490U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65496U..<65498U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65501U..<65536U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 65548
        assert_false(is_alphabetic('\u{1000c}'))
        // charcode 65575
        assert_false(is_alphabetic('\u{10027}'))
        // charcode 65595
        assert_false(is_alphabetic('\u{1003b}'))
        // charcode 65598
        assert_false(is_alphabetic('\u{1003e}'))
        for chn in 65614U..<65616U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65630U..<65664U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65787U..<65856U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65909U..<66176U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66205U..<66208U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66257U..<66304U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66336U..<66349U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66379U..<66384U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66427U..<66432U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66462U..<66464U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66500U..<66504U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 66512
        assert_false(is_alphabetic('𐏐'))
        for chn in 66518U..<66560U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66718U..<66736U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66772U..<66776U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66812U..<66816U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66856U..<66864U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66916U..<66928U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 66939
        assert_false(is_alphabetic('\u{1057b}'))
        // charcode 66955
        assert_false(is_alphabetic('\u{1058b}'))
        // charcode 66963
        assert_false(is_alphabetic('\u{10593}'))
        // charcode 66966
        assert_false(is_alphabetic('\u{10596}'))
        // charcode 66978
        assert_false(is_alphabetic('\u{105a2}'))
        // charcode 66994
        assert_false(is_alphabetic('\u{105b2}'))
        // charcode 67002
        assert_false(is_alphabetic('\u{105ba}'))
        for chn in 67005U..<67008U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67060U..<67072U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67383U..<67392U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67414U..<67424U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67432U..<67456U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 67462
        assert_false(is_alphabetic('\u{10786}'))
        // charcode 67505
        assert_false(is_alphabetic('\u{107b1}'))
        for chn in 67515U..<67584U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67590U..<67592U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 67593
        assert_false(is_alphabetic('\u{10809}'))
        // charcode 67638
        assert_false(is_alphabetic('\u{10836}'))
        for chn in 67641U..<67644U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67645U..<67647U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67670U..<67680U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67703U..<67712U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67743U..<67808U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 67827
        assert_false(is_alphabetic('\u{108f3}'))
        for chn in 67830U..<67840U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67862U..<67872U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67898U..<67968U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68024U..<68030U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68032U..<68096U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 68100
        assert_false(is_alphabetic('\u{10a04}'))
        for chn in 68103U..<68108U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 68116
        assert_false(is_alphabetic('\u{10a14}'))
        // charcode 68120
        assert_false(is_alphabetic('\u{10a18}'))
        for chn in 68150U..<68192U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68221U..<68224U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68253U..<68288U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 68296
        assert_false(is_alphabetic('𐫈'))
        for chn in 68325U..<68352U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68406U..<68416U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68438U..<68448U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68467U..<68480U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68498U..<68608U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68681U..<68736U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68787U..<68800U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68851U..<68864U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68904U..<68938U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68966U..<68969U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68970U..<68975U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68998U..<69248U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 69290
        assert_false(is_alphabetic('\u{10eaa}'))
        for chn in 69293U..<69296U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69298U..<69314U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69317U..<69372U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69373U..<69376U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69405U..<69415U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69416U..<69424U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69446U..<69488U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69506U..<69552U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69573U..<69600U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69623U..<69632U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69702U..<69745U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69750U..<69760U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69817U..<69826U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69827U..<69840U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69865U..<69888U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69939U..<69956U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69960U..<69968U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70003U..<70006U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70007U..<70016U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70080
        assert_false(is_alphabetic('\u{111c0}'))
        for chn in 70085U..<70094U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70096U..<70106U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70107
        assert_false(is_alphabetic('𑇛'))
        for chn in 70109U..<70144U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70162
        assert_false(is_alphabetic('\u{11212}'))
        for chn in 70197U..<70199U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70200U..<70206U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70210U..<70272U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70279
        assert_false(is_alphabetic('\u{11287}'))
        // charcode 70281
        assert_false(is_alphabetic('\u{11289}'))
        // charcode 70286
        assert_false(is_alphabetic('\u{1128e}'))
        // charcode 70302
        assert_false(is_alphabetic('\u{1129e}'))
        for chn in 70313U..<70320U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70377U..<70400U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70404
        assert_false(is_alphabetic('\u{11304}'))
        for chn in 70413U..<70415U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70417U..<70419U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70441
        assert_false(is_alphabetic('\u{11329}'))
        // charcode 70449
        assert_false(is_alphabetic('\u{11331}'))
        // charcode 70452
        assert_false(is_alphabetic('\u{11334}'))
        for chn in 70458U..<70461U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70469U..<70471U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70473U..<70475U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70477U..<70480U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70481U..<70487U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70488U..<70493U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70500U..<70528U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70538
        assert_false(is_alphabetic('\u{1138a}'))
        for chn in 70540U..<70542U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70543
        assert_false(is_alphabetic('\u{1138f}'))
        // charcode 70582
        assert_false(is_alphabetic('\u{113b6}'))
        // charcode 70593
        assert_false(is_alphabetic('\u{113c1}'))
        for chn in 70595U..<70597U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70598
        assert_false(is_alphabetic('\u{113c6}'))
        // charcode 70603
        assert_false(is_alphabetic('\u{113cb}'))
        for chn in 70606U..<70609U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70610
        assert_false(is_alphabetic('\u{113d2}'))
        for chn in 70612U..<70656U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70722
        assert_false(is_alphabetic('\u{11442}'))
        // charcode 70726
        assert_false(is_alphabetic('\u{11446}'))
        for chn in 70731U..<70751U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70754U..<70784U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70850U..<70852U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70854
        assert_false(is_alphabetic('𑓆'))
        for chn in 70856U..<71040U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71094U..<71096U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71103U..<71128U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71134U..<71168U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71231
        assert_false(is_alphabetic('\u{1163f}'))
        for chn in 71233U..<71236U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71237U..<71296U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71350U..<71352U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71353U..<71424U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71451U..<71453U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71467U..<71488U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71495U..<71680U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71737U..<71840U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71904U..<71935U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71943U..<71945U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71946U..<71948U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71956
        assert_false(is_alphabetic('\u{11914}'))
        // charcode 71959
        assert_false(is_alphabetic('\u{11917}'))
        // charcode 71990
        assert_false(is_alphabetic('\u{11936}'))
        for chn in 71993U..<71995U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71997U..<71999U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72003U..<72096U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72104U..<72106U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72152U..<72154U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72160
        assert_false(is_alphabetic('\u{119e0}'))
        // charcode 72162
        assert_false(is_alphabetic('𑧢'))
        for chn in 72165U..<72192U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72243U..<72245U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72255U..<72272U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72344U..<72349U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72350U..<72368U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72441U..<72640U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72673U..<72704U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72713
        assert_false(is_alphabetic('\u{11c09}'))
        // charcode 72759
        assert_false(is_alphabetic('\u{11c37}'))
        // charcode 72767
        assert_false(is_alphabetic('\u{11c3f}'))
        for chn in 72769U..<72818U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72848U..<72850U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72872
        assert_false(is_alphabetic('\u{11ca8}'))
        for chn in 72887U..<72960U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72967
        assert_false(is_alphabetic('\u{11d07}'))
        // charcode 72970
        assert_false(is_alphabetic('\u{11d0a}'))
        for chn in 73015U..<73018U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73019
        assert_false(is_alphabetic('\u{11d3b}'))
        // charcode 73022
        assert_false(is_alphabetic('\u{11d3e}'))
        // charcode 73026
        assert_false(is_alphabetic('\u{11d42}'))
        for chn in 73028U..<73030U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73032U..<73056U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73062
        assert_false(is_alphabetic('\u{11d66}'))
        // charcode 73065
        assert_false(is_alphabetic('\u{11d69}'))
        // charcode 73103
        assert_false(is_alphabetic('\u{11d8f}'))
        // charcode 73106
        assert_false(is_alphabetic('\u{11d92}'))
        // charcode 73111
        assert_false(is_alphabetic('\u{11d97}'))
        for chn in 73113U..<73440U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73463U..<73472U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73489
        assert_false(is_alphabetic('\u{11f11}'))
        for chn in 73531U..<73534U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73537U..<73648U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73649U..<73728U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 74650U..<74752U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 74863U..<74880U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 75076U..<77712U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 77809U..<77824U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 78896U..<78913U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 78919U..<78944U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 82939U..<82944U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 83527U..<90368U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 90415U..<92160U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92729U..<92736U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92767U..<92784U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92863U..<92880U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92910U..<92928U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92976U..<92992U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92996U..<93027U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93048U..<93053U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93072U..<93504U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93549U..<93760U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93824U..<93952U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94027U..<94031U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94088U..<94095U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94112U..<94176U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 94178
        assert_false(is_alphabetic('𖿢'))
        for chn in 94180U..<94192U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94194U..<94208U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 100344U..<100352U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 101590U..<101631U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 101641U..<110576U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 110580
        assert_false(is_alphabetic('\u{1aff4}'))
        // charcode 110588
        assert_false(is_alphabetic('\u{1affc}'))
        // charcode 110591
        assert_false(is_alphabetic('\u{1afff}'))
        for chn in 110883U..<110898U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 110899U..<110928U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 110931U..<110933U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 110934U..<110948U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 110952U..<110960U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 111356U..<113664U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 113771U..<113776U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 113789U..<113792U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 113801U..<113808U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 113818U..<113822U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 113823U..<119808U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119893
        assert_false(is_alphabetic('\u{1d455}'))
        // charcode 119965
        assert_false(is_alphabetic('\u{1d49d}'))
        for chn in 119968U..<119970U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119971U..<119973U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119975U..<119977U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119981
        assert_false(is_alphabetic('\u{1d4ad}'))
        // charcode 119994
        assert_false(is_alphabetic('\u{1d4ba}'))
        // charcode 119996
        assert_false(is_alphabetic('\u{1d4bc}'))
        // charcode 120004
        assert_false(is_alphabetic('\u{1d4c4}'))
        // charcode 120070
        assert_false(is_alphabetic('\u{1d506}'))
        for chn in 120075U..<120077U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120085
        assert_false(is_alphabetic('\u{1d515}'))
        // charcode 120093
        assert_false(is_alphabetic('\u{1d51d}'))
        // charcode 120122
        assert_false(is_alphabetic('\u{1d53a}'))
        // charcode 120127
        assert_false(is_alphabetic('\u{1d53f}'))
        // charcode 120133
        assert_false(is_alphabetic('\u{1d545}'))
        for chn in 120135U..<120138U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120145
        assert_false(is_alphabetic('\u{1d551}'))
        for chn in 120486U..<120488U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120513
        assert_false(is_alphabetic('𝛁'))
        // charcode 120539
        assert_false(is_alphabetic('𝛛'))
        // charcode 120571
        assert_false(is_alphabetic('𝛻'))
        // charcode 120597
        assert_false(is_alphabetic('𝜕'))
        // charcode 120629
        assert_false(is_alphabetic('𝜵'))
        // charcode 120655
        assert_false(is_alphabetic('𝝏'))
        // charcode 120687
        assert_false(is_alphabetic('𝝯'))
        // charcode 120713
        assert_false(is_alphabetic('𝞉'))
        // charcode 120745
        assert_false(is_alphabetic('𝞩'))
        // charcode 120771
        assert_false(is_alphabetic('𝟃'))
        for chn in 120780U..<122624U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122655U..<122661U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122667U..<122880U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 122887
        assert_false(is_alphabetic('\u{1e007}'))
        for chn in 122905U..<122907U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 122914
        assert_false(is_alphabetic('\u{1e022}'))
        // charcode 122917
        assert_false(is_alphabetic('\u{1e025}'))
        for chn in 122923U..<122928U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122990U..<123023U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123024U..<123136U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123181U..<123191U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123198U..<123214U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123215U..<123536U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123566U..<123584U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123628U..<124112U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124140U..<124368U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124398U..<124400U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124401U..<124896U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 124903
        assert_false(is_alphabetic('\u{1e7e7}'))
        // charcode 124908
        assert_false(is_alphabetic('\u{1e7ec}'))
        // charcode 124911
        assert_false(is_alphabetic('\u{1e7ef}'))
        // charcode 124927
        assert_false(is_alphabetic('\u{1e7ff}'))
        for chn in 125125U..<125184U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125252U..<125255U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125256U..<125259U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125260U..<126464U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 126468
        assert_false(is_alphabetic('\u{1ee04}'))
        // charcode 126496
        assert_false(is_alphabetic('\u{1ee20}'))
        // charcode 126499
        assert_false(is_alphabetic('\u{1ee23}'))
        for chn in 126501U..<126503U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 126504
        assert_false(is_alphabetic('\u{1ee28}'))
        // charcode 126515
        assert_false(is_alphabetic('\u{1ee33}'))
        // charcode 126520
        assert_false(is_alphabetic('\u{1ee38}'))
        // charcode 126522
        assert_false(is_alphabetic('\u{1ee3a}'))
        for chn in 126524U..<126530U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126531U..<126535U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 126536
        assert_false(is_alphabetic('\u{1ee48}'))
        // charcode 126538
        assert_false(is_alphabetic('\u{1ee4a}'))
        // charcode 126540
        assert_false(is_alphabetic('\u{1ee4c}'))
        // charcode 126544
        assert_false(is_alphabetic('\u{1ee50}'))
        // charcode 126547
        assert_false(is_alphabetic('\u{1ee53}'))
        for chn in 126549U..<126551U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 126552
        assert_false(is_alphabetic('\u{1ee58}'))
        // charcode 126554
        assert_false(is_alphabetic('\u{1ee5a}'))
        // charcode 126556
        assert_false(is_alphabetic('\u{1ee5c}'))
        // charcode 126558
        assert_false(is_alphabetic('\u{1ee5e}'))
        // charcode 126560
        assert_false(is_alphabetic('\u{1ee60}'))
        // charcode 126563
        assert_false(is_alphabetic('\u{1ee63}'))
        for chn in 126565U..<126567U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 126571
        assert_false(is_alphabetic('\u{1ee6b}'))
        // charcode 126579
        assert_false(is_alphabetic('\u{1ee73}'))
        // charcode 126584
        assert_false(is_alphabetic('\u{1ee78}'))
        // charcode 126589
        assert_false(is_alphabetic('\u{1ee7d}'))
        // charcode 126591
        assert_false(is_alphabetic('\u{1ee7f}'))
        // charcode 126602
        assert_false(is_alphabetic('\u{1ee8a}'))
        for chn in 126620U..<126625U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 126628
        assert_false(is_alphabetic('\u{1eea4}'))
        // charcode 126634
        assert_false(is_alphabetic('\u{1eeaa}'))
        for chn in 126652U..<127280U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127306U..<127312U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127338U..<127344U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127370U..<131072U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 173792U..<173824U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 177978U..<177984U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 178206U..<178208U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 183970U..<183984U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 191457U..<191472U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 192094U..<194560U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 195102U..<196608U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 201547U..<201552U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 205744U..<1114111U {
            ensure_not(is_alphabetic(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    alphabetic_true();
    alphabetic_false();

    fn case_ignorable_true() -> Unit!Error {
        // charcode 39
        assert_true(is_case_ignorable('\''))
        // charcode 46
        assert_true(is_case_ignorable('.'))
        // charcode 58
        assert_true(is_case_ignorable(':'))
        // charcode 94
        assert_true(is_case_ignorable('^'))
        // charcode 96
        assert_true(is_case_ignorable('`'))
        // charcode 168
        assert_true(is_case_ignorable('¨'))
        // charcode 173
        assert_true(is_case_ignorable('\u{ad}'))
        // charcode 175
        assert_true(is_case_ignorable('¯'))
        // charcode 180
        assert_true(is_case_ignorable('´'))
        for chn in 183U..<185U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 688U..<880U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 884U..<886U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 890
        assert_true(is_case_ignorable('ͺ'))
        for chn in 900U..<902U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 903
        assert_true(is_case_ignorable('·'))
        for chn in 1155U..<1162U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1369
        assert_true(is_case_ignorable('ՙ'))
        // charcode 1375
        assert_true(is_case_ignorable('՟'))
        for chn in 1425U..<1470U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1471
        assert_true(is_case_ignorable('\u{5bf}'))
        for chn in 1473U..<1475U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1476U..<1478U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1479
        assert_true(is_case_ignorable('\u{5c7}'))
        // charcode 1524
        assert_true(is_case_ignorable('״'))
        for chn in 1536U..<1542U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1552U..<1563U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1564
        assert_true(is_case_ignorable('\u{61c}'))
        // charcode 1600
        assert_true(is_case_ignorable('ـ'))
        for chn in 1611U..<1632U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1648
        assert_true(is_case_ignorable('\u{670}'))
        for chn in 1750U..<1758U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1759U..<1769U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1770U..<1774U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1807
        assert_true(is_case_ignorable('\u{70f}'))
        // charcode 1809
        assert_true(is_case_ignorable('\u{711}'))
        for chn in 1840U..<1867U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1958U..<1969U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2027U..<2038U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2042
        assert_true(is_case_ignorable('ߺ'))
        // charcode 2045
        assert_true(is_case_ignorable('\u{7fd}'))
        for chn in 2070U..<2094U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2137U..<2140U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2184
        assert_true(is_case_ignorable('࢈'))
        for chn in 2192U..<2194U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2199U..<2208U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2249U..<2307U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2362
        assert_true(is_case_ignorable('\u{93a}'))
        // charcode 2364
        assert_true(is_case_ignorable('\u{93c}'))
        for chn in 2369U..<2377U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2381
        assert_true(is_case_ignorable('\u{94d}'))
        for chn in 2385U..<2392U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2402U..<2404U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2417
        assert_true(is_case_ignorable('ॱ'))
        // charcode 2433
        assert_true(is_case_ignorable('\u{981}'))
        // charcode 2492
        assert_true(is_case_ignorable('\u{9bc}'))
        for chn in 2497U..<2501U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2509
        assert_true(is_case_ignorable('\u{9cd}'))
        for chn in 2530U..<2532U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2558
        assert_true(is_case_ignorable('\u{9fe}'))
        for chn in 2561U..<2563U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2620
        assert_true(is_case_ignorable('\u{a3c}'))
        for chn in 2625U..<2627U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2631U..<2633U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2635U..<2638U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2641
        assert_true(is_case_ignorable('\u{a51}'))
        for chn in 2672U..<2674U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2677
        assert_true(is_case_ignorable('\u{a75}'))
        for chn in 2689U..<2691U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2748
        assert_true(is_case_ignorable('\u{abc}'))
        for chn in 2753U..<2758U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2759U..<2761U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2765
        assert_true(is_case_ignorable('\u{acd}'))
        for chn in 2786U..<2788U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2810U..<2816U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2817
        assert_true(is_case_ignorable('\u{b01}'))
        // charcode 2876
        assert_true(is_case_ignorable('\u{b3c}'))
        // charcode 2879
        assert_true(is_case_ignorable('\u{b3f}'))
        for chn in 2881U..<2885U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2893
        assert_true(is_case_ignorable('\u{b4d}'))
        for chn in 2901U..<2903U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2914U..<2916U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2946
        assert_true(is_case_ignorable('\u{b82}'))
        // charcode 3008
        assert_true(is_case_ignorable('\u{bc0}'))
        // charcode 3021
        assert_true(is_case_ignorable('\u{bcd}'))
        // charcode 3072
        assert_true(is_case_ignorable('\u{c00}'))
        // charcode 3076
        assert_true(is_case_ignorable('\u{c04}'))
        // charcode 3132
        assert_true(is_case_ignorable('\u{c3c}'))
        for chn in 3134U..<3137U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3142U..<3145U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3146U..<3150U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3157U..<3159U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3170U..<3172U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3201
        assert_true(is_case_ignorable('\u{c81}'))
        // charcode 3260
        assert_true(is_case_ignorable('\u{cbc}'))
        // charcode 3263
        assert_true(is_case_ignorable('\u{cbf}'))
        // charcode 3270
        assert_true(is_case_ignorable('\u{cc6}'))
        for chn in 3276U..<3278U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3298U..<3300U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3328U..<3330U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3387U..<3389U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3393U..<3397U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3405
        assert_true(is_case_ignorable('\u{d4d}'))
        for chn in 3426U..<3428U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3457
        assert_true(is_case_ignorable('\u{d81}'))
        // charcode 3530
        assert_true(is_case_ignorable('\u{dca}'))
        for chn in 3538U..<3541U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3542
        assert_true(is_case_ignorable('\u{dd6}'))
        // charcode 3633
        assert_true(is_case_ignorable('\u{e31}'))
        for chn in 3636U..<3643U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3654U..<3663U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3761
        assert_true(is_case_ignorable('\u{eb1}'))
        for chn in 3764U..<3773U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3782
        assert_true(is_case_ignorable('ໆ'))
        for chn in 3784U..<3791U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3864U..<3866U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3893
        assert_true(is_case_ignorable('\u{f35}'))
        // charcode 3895
        assert_true(is_case_ignorable('\u{f37}'))
        // charcode 3897
        assert_true(is_case_ignorable('\u{f39}'))
        for chn in 3953U..<3967U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3968U..<3973U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3974U..<3976U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3981U..<3992U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3993U..<4029U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4038
        assert_true(is_case_ignorable('\u{fc6}'))
        for chn in 4141U..<4145U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4146U..<4152U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4153U..<4155U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4157U..<4159U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4184U..<4186U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4190U..<4193U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4209U..<4213U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4226
        assert_true(is_case_ignorable('\u{1082}'))
        for chn in 4229U..<4231U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4237
        assert_true(is_case_ignorable('\u{108d}'))
        // charcode 4253
        assert_true(is_case_ignorable('\u{109d}'))
        // charcode 4348
        assert_true(is_case_ignorable('ჼ'))
        for chn in 4957U..<4960U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5906U..<5909U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5938U..<5940U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5970U..<5972U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6002U..<6004U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6068U..<6070U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6071U..<6078U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6086
        assert_true(is_case_ignorable('\u{17c6}'))
        for chn in 6089U..<6100U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6103
        assert_true(is_case_ignorable('ៗ'))
        // charcode 6109
        assert_true(is_case_ignorable('\u{17dd}'))
        for chn in 6155U..<6160U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6211
        assert_true(is_case_ignorable('ᡃ'))
        for chn in 6277U..<6279U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6313
        assert_true(is_case_ignorable('\u{18a9}'))
        for chn in 6432U..<6435U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6439U..<6441U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6450
        assert_true(is_case_ignorable('\u{1932}'))
        for chn in 6457U..<6460U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6679U..<6681U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6683
        assert_true(is_case_ignorable('\u{1a1b}'))
        // charcode 6742
        assert_true(is_case_ignorable('\u{1a56}'))
        for chn in 6744U..<6751U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6752
        assert_true(is_case_ignorable('\u{1a60}'))
        // charcode 6754
        assert_true(is_case_ignorable('\u{1a62}'))
        for chn in 6757U..<6765U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6771U..<6781U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6783
        assert_true(is_case_ignorable('\u{1a7f}'))
        // charcode 6823
        assert_true(is_case_ignorable('ᪧ'))
        for chn in 6832U..<6863U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6912U..<6916U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6964
        assert_true(is_case_ignorable('\u{1b34}'))
        for chn in 6966U..<6971U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6972
        assert_true(is_case_ignorable('\u{1b3c}'))
        // charcode 6978
        assert_true(is_case_ignorable('\u{1b42}'))
        for chn in 7019U..<7028U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7040U..<7042U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7074U..<7078U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7080U..<7082U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7083U..<7086U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7142
        assert_true(is_case_ignorable('\u{1be6}'))
        for chn in 7144U..<7146U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7149
        assert_true(is_case_ignorable('\u{1bed}'))
        for chn in 7151U..<7154U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7212U..<7220U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7222U..<7224U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7288U..<7294U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7376U..<7379U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7380U..<7393U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7394U..<7401U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7405
        assert_true(is_case_ignorable('\u{1ced}'))
        // charcode 7412
        assert_true(is_case_ignorable('\u{1cf4}'))
        for chn in 7416U..<7418U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7468U..<7531U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7544
        assert_true(is_case_ignorable('ᵸ'))
        for chn in 7579U..<7680U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8125
        assert_true(is_case_ignorable('᾽'))
        for chn in 8127U..<8130U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8141U..<8144U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8157U..<8160U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8173U..<8176U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8189U..<8191U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8203U..<8208U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8216U..<8218U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8228
        assert_true(is_case_ignorable('․'))
        // charcode 8231
        assert_true(is_case_ignorable('‧'))
        for chn in 8234U..<8239U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8288U..<8293U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8294U..<8304U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8305
        assert_true(is_case_ignorable('ⁱ'))
        // charcode 8319
        assert_true(is_case_ignorable('ⁿ'))
        for chn in 8336U..<8349U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8400U..<8433U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11388U..<11390U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11503U..<11506U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11631
        assert_true(is_case_ignorable('ⵯ'))
        // charcode 11647
        assert_true(is_case_ignorable('\u{2d7f}'))
        for chn in 11744U..<11776U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11823
        assert_true(is_case_ignorable('ⸯ'))
        // charcode 12293
        assert_true(is_case_ignorable('々'))
        for chn in 12330U..<12334U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12337U..<12342U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 12347
        assert_true(is_case_ignorable('〻'))
        for chn in 12441U..<12447U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12540U..<12543U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 40981
        assert_true(is_case_ignorable('ꀕ'))
        for chn in 42232U..<42238U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42508
        assert_true(is_case_ignorable('ꘌ'))
        for chn in 42607U..<42611U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42612U..<42622U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42623
        assert_true(is_case_ignorable('ꙿ'))
        for chn in 42652U..<42656U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42736U..<42738U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42752U..<42786U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42864
        assert_true(is_case_ignorable('ꝰ'))
        for chn in 42888U..<42891U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42994U..<42997U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43000U..<43002U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43010
        assert_true(is_case_ignorable('\u{a802}'))
        // charcode 43014
        assert_true(is_case_ignorable('\u{a806}'))
        // charcode 43019
        assert_true(is_case_ignorable('\u{a80b}'))
        for chn in 43045U..<43047U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43052
        assert_true(is_case_ignorable('\u{a82c}'))
        for chn in 43204U..<43206U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43232U..<43250U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43263
        assert_true(is_case_ignorable('\u{a8ff}'))
        for chn in 43302U..<43310U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43335U..<43346U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43392U..<43395U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43443
        assert_true(is_case_ignorable('\u{a9b3}'))
        for chn in 43446U..<43450U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43452U..<43454U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43471
        assert_true(is_case_ignorable('ꧏ'))
        for chn in 43493U..<43495U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43561U..<43567U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43569U..<43571U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43573U..<43575U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43587
        assert_true(is_case_ignorable('\u{aa43}'))
        // charcode 43596
        assert_true(is_case_ignorable('\u{aa4c}'))
        // charcode 43632
        assert_true(is_case_ignorable('ꩰ'))
        // charcode 43644
        assert_true(is_case_ignorable('\u{aa7c}'))
        // charcode 43696
        assert_true(is_case_ignorable('\u{aab0}'))
        for chn in 43698U..<43701U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43703U..<43705U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43710U..<43712U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43713
        assert_true(is_case_ignorable('\u{aac1}'))
        // charcode 43741
        assert_true(is_case_ignorable('ꫝ'))
        for chn in 43756U..<43758U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43763U..<43765U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43766
        assert_true(is_case_ignorable('\u{aaf6}'))
        for chn in 43867U..<43872U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43881U..<43884U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 44005
        assert_true(is_case_ignorable('\u{abe5}'))
        // charcode 44008
        assert_true(is_case_ignorable('\u{abe8}'))
        // charcode 44013
        assert_true(is_case_ignorable('\u{abed}'))
        // charcode 64286
        assert_true(is_case_ignorable('\u{fb1e}'))
        for chn in 64434U..<64451U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65024U..<65040U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 65043
        assert_true(is_case_ignorable('︓'))
        for chn in 65056U..<65072U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 65106
        assert_true(is_case_ignorable('﹒'))
        // charcode 65109
        assert_true(is_case_ignorable('﹕'))
        // charcode 65279
        assert_true(is_case_ignorable('\u{feff}'))
        // charcode 65287
        assert_true(is_case_ignorable('＇'))
        // charcode 65294
        assert_true(is_case_ignorable('．'))
        // charcode 65306
        assert_true(is_case_ignorable('：'))
        // charcode 65342
        assert_true(is_case_ignorable('＾'))
        // charcode 65344
        assert_true(is_case_ignorable('｀'))
        // charcode 65392
        assert_true(is_case_ignorable('ｰ'))
        for chn in 65438U..<65440U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 65507
        assert_true(is_case_ignorable('￣'))
        for chn in 65529U..<65532U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 66045
        assert_true(is_case_ignorable('\u{101fd}'))
        // charcode 66272
        assert_true(is_case_ignorable('\u{102e0}'))
        for chn in 66422U..<66427U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67456U..<67462U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67463U..<67505U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67506U..<67515U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68097U..<68100U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68101U..<68103U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68108U..<68112U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68152U..<68155U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 68159
        assert_true(is_case_ignorable('\u{10a3f}'))
        for chn in 68325U..<68327U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68900U..<68904U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 68942
        assert_true(is_case_ignorable('𐵎'))
        for chn in 68969U..<68974U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 68975
        assert_true(is_case_ignorable('𐵯'))
        for chn in 69291U..<69293U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69372U..<69376U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69446U..<69457U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69506U..<69510U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 69633
        assert_true(is_case_ignorable('\u{11001}'))
        for chn in 69688U..<69703U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 69744
        assert_true(is_case_ignorable('\u{11070}'))
        for chn in 69747U..<69749U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69759U..<69762U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69811U..<69815U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69817U..<69819U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 69821
        assert_true(is_case_ignorable('\u{110bd}'))
        // charcode 69826
        assert_true(is_case_ignorable('\u{110c2}'))
        // charcode 69837
        assert_true(is_case_ignorable('\u{110cd}'))
        for chn in 69888U..<69891U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69927U..<69932U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69933U..<69941U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70003
        assert_true(is_case_ignorable('\u{11173}'))
        for chn in 70016U..<70018U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70070U..<70079U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70089U..<70093U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70095
        assert_true(is_case_ignorable('\u{111cf}'))
        for chn in 70191U..<70194U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70196
        assert_true(is_case_ignorable('\u{11234}'))
        for chn in 70198U..<70200U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70206
        assert_true(is_case_ignorable('\u{1123e}'))
        // charcode 70209
        assert_true(is_case_ignorable('\u{11241}'))
        // charcode 70367
        assert_true(is_case_ignorable('\u{112df}'))
        for chn in 70371U..<70379U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70400U..<70402U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70459U..<70461U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70464
        assert_true(is_case_ignorable('\u{11340}'))
        for chn in 70502U..<70509U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70512U..<70517U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70587U..<70593U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70606
        assert_true(is_case_ignorable('\u{113ce}'))
        // charcode 70608
        assert_true(is_case_ignorable('\u{113d0}'))
        // charcode 70610
        assert_true(is_case_ignorable('\u{113d2}'))
        for chn in 70625U..<70627U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70712U..<70720U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70722U..<70725U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70726
        assert_true(is_case_ignorable('\u{11446}'))
        // charcode 70750
        assert_true(is_case_ignorable('\u{1145e}'))
        for chn in 70835U..<70841U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70842
        assert_true(is_case_ignorable('\u{114ba}'))
        for chn in 70847U..<70849U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70850U..<70852U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71090U..<71094U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71100U..<71102U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71103U..<71105U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71132U..<71134U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71219U..<71227U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71229
        assert_true(is_case_ignorable('\u{1163d}'))
        for chn in 71231U..<71233U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71339
        assert_true(is_case_ignorable('\u{116ab}'))
        // charcode 71341
        assert_true(is_case_ignorable('\u{116ad}'))
        for chn in 71344U..<71350U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71351
        assert_true(is_case_ignorable('\u{116b7}'))
        // charcode 71453
        assert_true(is_case_ignorable('\u{1171d}'))
        // charcode 71455
        assert_true(is_case_ignorable('\u{1171f}'))
        for chn in 71458U..<71462U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71463U..<71468U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71727U..<71736U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71737U..<71739U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71995U..<71997U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71998
        assert_true(is_case_ignorable('\u{1193e}'))
        // charcode 72003
        assert_true(is_case_ignorable('\u{11943}'))
        for chn in 72148U..<72152U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72154U..<72156U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72160
        assert_true(is_case_ignorable('\u{119e0}'))
        for chn in 72193U..<72203U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72243U..<72249U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72251U..<72255U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72263
        assert_true(is_case_ignorable('\u{11a47}'))
        for chn in 72273U..<72279U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72281U..<72284U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72330U..<72343U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72344U..<72346U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72752U..<72759U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72760U..<72766U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72767
        assert_true(is_case_ignorable('\u{11c3f}'))
        for chn in 72850U..<72872U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72874U..<72881U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72882U..<72884U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72885U..<72887U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73009U..<73015U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73018
        assert_true(is_case_ignorable('\u{11d3a}'))
        for chn in 73020U..<73022U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73023U..<73030U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73031
        assert_true(is_case_ignorable('\u{11d47}'))
        for chn in 73104U..<73106U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73109
        assert_true(is_case_ignorable('\u{11d95}'))
        // charcode 73111
        assert_true(is_case_ignorable('\u{11d97}'))
        for chn in 73459U..<73461U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73472U..<73474U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73526U..<73531U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73536
        assert_true(is_case_ignorable('\u{11f40}'))
        // charcode 73538
        assert_true(is_case_ignorable('\u{11f42}'))
        // charcode 73562
        assert_true(is_case_ignorable('\u{11f5a}'))
        for chn in 78896U..<78913U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 78919U..<78934U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 90398U..<90410U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 90413U..<90416U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92912U..<92917U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92976U..<92983U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92992U..<92996U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93504U..<93507U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93547U..<93549U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 94031
        assert_true(is_case_ignorable('\u{16f4f}'))
        for chn in 94095U..<94112U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94176U..<94178U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94179U..<94181U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 110576U..<110580U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 110581U..<110588U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 110589U..<110591U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 113821U..<113823U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 113824U..<113828U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 118528U..<118574U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 118576U..<118599U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119143U..<119146U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119155U..<119171U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119173U..<119180U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119210U..<119214U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119362U..<119365U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 121344U..<121399U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 121403U..<121453U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 121461
        assert_true(is_case_ignorable('\u{1da75}'))
        // charcode 121476
        assert_true(is_case_ignorable('\u{1da84}'))
        for chn in 121499U..<121504U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 121505U..<121520U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122880U..<122887U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122888U..<122905U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122907U..<122914U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122915U..<122917U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122918U..<122923U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122928U..<122990U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 123023
        assert_true(is_case_ignorable('\u{1e08f}'))
        for chn in 123184U..<123198U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 123566
        assert_true(is_case_ignorable('\u{1e2ae}'))
        for chn in 123628U..<123632U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124139U..<124144U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124398U..<124400U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125136U..<125143U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125252U..<125260U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127995U..<128000U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 917505
        assert_true(is_case_ignorable('\u{e0001}'))
        for chn in 917536U..<917632U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 917760U..<918000U {
            ensure(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    fn case_ignorable_false() -> Unit!Error {
        for chn in 0U..<39U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 40U..<46U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 47U..<58U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 59U..<94U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 95
        assert_false(is_case_ignorable('_'))
        for chn in 97U..<168U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 169U..<173U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 174
        assert_false(is_case_ignorable('®'))
        for chn in 176U..<180U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 181U..<183U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 185U..<688U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 880U..<884U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 886U..<890U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 891U..<900U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 902
        assert_false(is_case_ignorable('Ά'))
        for chn in 904U..<1155U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1162U..<1369U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1370U..<1375U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1376U..<1425U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1470
        assert_false(is_case_ignorable('־'))
        // charcode 1472
        assert_false(is_case_ignorable('׀'))
        // charcode 1475
        assert_false(is_case_ignorable('׃'))
        // charcode 1478
        assert_false(is_case_ignorable('׆'))
        for chn in 1480U..<1524U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1525U..<1536U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1542U..<1552U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1563
        assert_false(is_case_ignorable('؛'))
        for chn in 1565U..<1600U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1601U..<1611U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1632U..<1648U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1649U..<1750U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1758
        assert_false(is_case_ignorable('۞'))
        // charcode 1769
        assert_false(is_case_ignorable('۩'))
        for chn in 1774U..<1807U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1808
        assert_false(is_case_ignorable('ܐ'))
        for chn in 1810U..<1840U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1867U..<1958U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1969U..<2027U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2038U..<2042U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2043U..<2045U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2046U..<2070U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2094U..<2137U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2140U..<2184U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2185U..<2192U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2194U..<2199U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2208U..<2249U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2307U..<2362U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2363
        assert_false(is_case_ignorable('ऻ'))
        for chn in 2365U..<2369U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2377U..<2381U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2382U..<2385U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2392U..<2402U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2404U..<2417U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2418U..<2433U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2434U..<2492U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2493U..<2497U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2501U..<2509U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2510U..<2530U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2532U..<2558U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2559U..<2561U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2563U..<2620U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2621U..<2625U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2627U..<2631U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2633U..<2635U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2638U..<2641U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2642U..<2672U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2674U..<2677U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2678U..<2689U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2691U..<2748U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2749U..<2753U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2758
        assert_false(is_case_ignorable('\u{ac6}'))
        for chn in 2761U..<2765U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2766U..<2786U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2788U..<2810U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2816
        assert_false(is_case_ignorable('\u{b00}'))
        for chn in 2818U..<2876U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2877U..<2879U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2880
        assert_false(is_case_ignorable('ୀ'))
        for chn in 2885U..<2893U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2894U..<2901U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2903U..<2914U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2916U..<2946U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2947U..<3008U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3009U..<3021U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3022U..<3072U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3073U..<3076U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3077U..<3132U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3133
        assert_false(is_case_ignorable('ఽ'))
        for chn in 3137U..<3142U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3145
        assert_false(is_case_ignorable('\u{c49}'))
        for chn in 3150U..<3157U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3159U..<3170U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3172U..<3201U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3202U..<3260U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3261U..<3263U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3264U..<3270U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3271U..<3276U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3278U..<3298U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3300U..<3328U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3330U..<3387U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3389U..<3393U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3397U..<3405U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3406U..<3426U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3428U..<3457U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3458U..<3530U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3531U..<3538U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3541
        assert_false(is_case_ignorable('\u{dd5}'))
        for chn in 3543U..<3633U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3634U..<3636U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3643U..<3654U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3663U..<3761U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3762U..<3764U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3773U..<3782U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3783
        assert_false(is_case_ignorable('\u{ec7}'))
        for chn in 3791U..<3864U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3866U..<3893U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3894
        assert_false(is_case_ignorable('༶'))
        // charcode 3896
        assert_false(is_case_ignorable('༸'))
        for chn in 3898U..<3953U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3967
        assert_false(is_case_ignorable('ཿ'))
        // charcode 3973
        assert_false(is_case_ignorable('྅'))
        for chn in 3976U..<3981U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3992
        assert_false(is_case_ignorable('\u{f98}'))
        for chn in 4029U..<4038U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4039U..<4141U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4145
        assert_false(is_case_ignorable('ေ'))
        // charcode 4152
        assert_false(is_case_ignorable('း'))
        for chn in 4155U..<4157U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4159U..<4184U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4186U..<4190U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4193U..<4209U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4213U..<4226U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4227U..<4229U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4231U..<4237U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4238U..<4253U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4254U..<4348U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4349U..<4957U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4960U..<5906U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5909U..<5938U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5940U..<5970U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5972U..<6002U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6004U..<6068U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6070
        assert_false(is_case_ignorable('ា'))
        for chn in 6078U..<6086U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6087U..<6089U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6100U..<6103U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6104U..<6109U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6110U..<6155U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6160U..<6211U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6212U..<6277U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6279U..<6313U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6314U..<6432U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6435U..<6439U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6441U..<6450U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6451U..<6457U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6460U..<6679U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6681U..<6683U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6684U..<6742U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6743
        assert_false(is_case_ignorable('ᩗ'))
        // charcode 6751
        assert_false(is_case_ignorable('\u{1a5f}'))
        // charcode 6753
        assert_false(is_case_ignorable('ᩡ'))
        for chn in 6755U..<6757U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6765U..<6771U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6781U..<6783U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6784U..<6823U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6824U..<6832U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6863U..<6912U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6916U..<6964U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6965
        assert_false(is_case_ignorable('\u{1b35}'))
        // charcode 6971
        assert_false(is_case_ignorable('\u{1b3b}'))
        for chn in 6973U..<6978U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6979U..<7019U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7028U..<7040U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7042U..<7074U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7078U..<7080U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7082
        assert_false(is_case_ignorable('\u{1baa}'))
        for chn in 7086U..<7142U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7143
        assert_false(is_case_ignorable('ᯧ'))
        for chn in 7146U..<7149U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7150
        assert_false(is_case_ignorable('ᯮ'))
        for chn in 7154U..<7212U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7220U..<7222U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7224U..<7288U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7294U..<7376U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7379
        assert_false(is_case_ignorable('᳓'))
        // charcode 7393
        assert_false(is_case_ignorable('᳡'))
        for chn in 7401U..<7405U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7406U..<7412U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7413U..<7416U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7418U..<7468U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7531U..<7544U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7545U..<7579U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7680U..<8125U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8126
        assert_false(is_case_ignorable('ι'))
        for chn in 8130U..<8141U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8144U..<8157U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8160U..<8173U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8176U..<8189U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8191U..<8203U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8208U..<8216U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8218U..<8228U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8229U..<8231U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8232U..<8234U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8239U..<8288U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8293
        assert_false(is_case_ignorable('\u{2065}'))
        // charcode 8304
        assert_false(is_case_ignorable('⁰'))
        for chn in 8306U..<8319U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8320U..<8336U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8349U..<8400U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8433U..<11388U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11390U..<11503U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11506U..<11631U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11632U..<11647U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11648U..<11744U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11776U..<11823U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11824U..<12293U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12294U..<12330U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12334U..<12337U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12342U..<12347U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12348U..<12441U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12447U..<12540U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12543U..<40981U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 40982U..<42232U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42238U..<42508U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42509U..<42607U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42611
        assert_false(is_case_ignorable('꙳'))
        // charcode 42622
        assert_false(is_case_ignorable('꙾'))
        for chn in 42624U..<42652U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42656U..<42736U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42738U..<42752U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42786U..<42864U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42865U..<42888U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42891U..<42994U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42997U..<43000U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43002U..<43010U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43011U..<43014U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43015U..<43019U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43020U..<43045U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43047U..<43052U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43053U..<43204U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43206U..<43232U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43250U..<43263U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43264U..<43302U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43310U..<43335U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43346U..<43392U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43395U..<43443U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43444U..<43446U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43450U..<43452U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43454U..<43471U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43472U..<43493U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43495U..<43561U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43567U..<43569U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43571U..<43573U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43575U..<43587U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43588U..<43596U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43597U..<43632U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43633U..<43644U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43645U..<43696U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43697
        assert_false(is_case_ignorable('ꪱ'))
        for chn in 43701U..<43703U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43705U..<43710U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43712
        assert_false(is_case_ignorable('ꫀ'))
        for chn in 43714U..<43741U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43742U..<43756U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43758U..<43763U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43765
        assert_false(is_case_ignorable('ꫵ'))
        for chn in 43767U..<43867U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43872U..<43881U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43884U..<44005U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 44006U..<44008U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 44009U..<44013U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 44014U..<55296U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 57344U..<64286U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64287U..<64434U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64451U..<65024U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65040U..<65043U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65044U..<65056U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65072U..<65106U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65107U..<65109U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65110U..<65279U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65280U..<65287U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65288U..<65294U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65295U..<65306U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65307U..<65342U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 65343
        assert_false(is_case_ignorable('＿'))
        for chn in 65345U..<65392U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65393U..<65438U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65440U..<65507U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65508U..<65529U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65532U..<66045U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66046U..<66272U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66273U..<66422U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66427U..<67456U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 67462
        assert_false(is_case_ignorable('\u{10786}'))
        // charcode 67505
        assert_false(is_case_ignorable('\u{107b1}'))
        for chn in 67515U..<68097U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 68100
        assert_false(is_case_ignorable('\u{10a04}'))
        for chn in 68103U..<68108U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68112U..<68152U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68155U..<68159U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68160U..<68325U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68327U..<68900U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68904U..<68942U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68943U..<68969U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 68974
        assert_false(is_case_ignorable('𐵮'))
        for chn in 68976U..<69291U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69293U..<69372U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69376U..<69446U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69457U..<69506U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69510U..<69633U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69634U..<69688U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69703U..<69744U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69745U..<69747U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69749U..<69759U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69762U..<69811U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69815U..<69817U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69819U..<69821U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69822U..<69826U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69827U..<69837U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69838U..<69888U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69891U..<69927U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 69932
        assert_false(is_case_ignorable('𑄬'))
        for chn in 69941U..<70003U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70004U..<70016U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70018U..<70070U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70079U..<70089U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70093U..<70095U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70096U..<70191U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70194U..<70196U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70197
        assert_false(is_case_ignorable('\u{11235}'))
        for chn in 70200U..<70206U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70207U..<70209U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70210U..<70367U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70368U..<70371U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70379U..<70400U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70402U..<70459U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70461U..<70464U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70465U..<70502U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70509U..<70512U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70517U..<70587U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70593U..<70606U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70607
        assert_false(is_case_ignorable('\u{113cf}'))
        // charcode 70609
        assert_false(is_case_ignorable('𑏑'))
        for chn in 70611U..<70625U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70627U..<70712U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70720U..<70722U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70725
        assert_false(is_case_ignorable('𑑅'))
        for chn in 70727U..<70750U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70751U..<70835U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70841
        assert_false(is_case_ignorable('𑒹'))
        for chn in 70843U..<70847U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70849
        assert_false(is_case_ignorable('𑓁'))
        for chn in 70852U..<71090U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71094U..<71100U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71102
        assert_false(is_case_ignorable('𑖾'))
        for chn in 71105U..<71132U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71134U..<71219U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71227U..<71229U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71230
        assert_false(is_case_ignorable('𑘾'))
        for chn in 71233U..<71339U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71340
        assert_false(is_case_ignorable('𑚬'))
        for chn in 71342U..<71344U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71350
        assert_false(is_case_ignorable('\u{116b6}'))
        for chn in 71352U..<71453U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71454
        assert_false(is_case_ignorable('𑜞'))
        for chn in 71456U..<71458U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71462
        assert_false(is_case_ignorable('𑜦'))
        for chn in 71468U..<71727U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71736
        assert_false(is_case_ignorable('𑠸'))
        for chn in 71739U..<71995U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71997
        assert_false(is_case_ignorable('\u{1193d}'))
        for chn in 71999U..<72003U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72004U..<72148U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72152U..<72154U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72156U..<72160U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72161U..<72193U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72203U..<72243U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72249U..<72251U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72255U..<72263U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72264U..<72273U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72279U..<72281U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72284U..<72330U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72343
        assert_false(is_case_ignorable('𑪗'))
        for chn in 72346U..<72752U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72759
        assert_false(is_case_ignorable('\u{11c37}'))
        // charcode 72766
        assert_false(is_case_ignorable('𑰾'))
        for chn in 72768U..<72850U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72872U..<72874U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72881
        assert_false(is_case_ignorable('𑲱'))
        // charcode 72884
        assert_false(is_case_ignorable('𑲴'))
        for chn in 72887U..<73009U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73015U..<73018U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73019
        assert_false(is_case_ignorable('\u{11d3b}'))
        // charcode 73022
        assert_false(is_case_ignorable('\u{11d3e}'))
        // charcode 73030
        assert_false(is_case_ignorable('𑵆'))
        for chn in 73032U..<73104U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73106U..<73109U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73110
        assert_false(is_case_ignorable('𑶖'))
        for chn in 73112U..<73459U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73461U..<73472U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73474U..<73526U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73531U..<73536U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73537
        assert_false(is_case_ignorable('\u{11f41}'))
        for chn in 73539U..<73562U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73563U..<78896U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 78913U..<78919U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 78934U..<90398U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 90410U..<90413U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 90416U..<92912U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92917U..<92976U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92983U..<92992U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92996U..<93504U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93507U..<93547U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93549U..<94031U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94032U..<94095U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94112U..<94176U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 94178
        assert_false(is_case_ignorable('𖿢'))
        for chn in 94181U..<110576U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 110580
        assert_false(is_case_ignorable('\u{1aff4}'))
        // charcode 110588
        assert_false(is_case_ignorable('\u{1affc}'))
        for chn in 110591U..<113821U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 113823
        assert_false(is_case_ignorable('𛲟'))
        for chn in 113828U..<118528U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 118574U..<118576U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 118599U..<119143U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119146U..<119155U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119171U..<119173U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119180U..<119210U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119214U..<119362U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119365U..<121344U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 121399U..<121403U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 121453U..<121461U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 121462U..<121476U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 121477U..<121499U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 121504
        assert_false(is_case_ignorable('\u{1daa0}'))
        for chn in 121520U..<122880U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 122887
        assert_false(is_case_ignorable('\u{1e007}'))
        for chn in 122905U..<122907U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 122914
        assert_false(is_case_ignorable('\u{1e022}'))
        // charcode 122917
        assert_false(is_case_ignorable('\u{1e025}'))
        for chn in 122923U..<122928U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122990U..<123023U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123024U..<123184U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123198U..<123566U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123567U..<123628U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123632U..<124139U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124144U..<124398U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124400U..<125136U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125143U..<125252U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125260U..<127995U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 128000U..<917505U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 917506U..<917536U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 917632U..<917760U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 918000U..<1114111U {
            ensure_not(is_case_ignorable(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    case_ignorable_true();
    case_ignorable_false();

    fn cased_true() -> Unit!Error {
        for chn in 65U..<91U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 97U..<123U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 170
        assert_true(is_cased('ª'))
        // charcode 181
        assert_true(is_cased('µ'))
        // charcode 186
        assert_true(is_cased('º'))
        for chn in 192U..<215U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 216U..<247U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 248U..<443U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 444U..<448U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 452U..<660U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 661U..<697U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 704U..<706U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 736U..<741U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 837
        assert_true(is_cased('\u{345}'))
        for chn in 880U..<884U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 886U..<888U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 890U..<894U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 895
        assert_true(is_cased('Ϳ'))
        // charcode 902
        assert_true(is_cased('Ά'))
        for chn in 904U..<907U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 908
        assert_true(is_cased('Ό'))
        for chn in 910U..<930U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 931U..<1014U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1015U..<1154U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1162U..<1328U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1329U..<1367U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1376U..<1417U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4256U..<4294U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4295
        assert_true(is_cased('Ⴧ'))
        // charcode 4301
        assert_true(is_cased('Ⴭ'))
        for chn in 4304U..<4347U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4348U..<4352U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5024U..<5110U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5112U..<5118U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7296U..<7307U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7312U..<7355U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7357U..<7360U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7424U..<7616U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7680U..<7958U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7960U..<7966U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7968U..<8006U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8008U..<8014U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8016U..<8024U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8025
        assert_true(is_cased('Ὑ'))
        // charcode 8027
        assert_true(is_cased('Ὓ'))
        // charcode 8029
        assert_true(is_cased('Ὕ'))
        for chn in 8031U..<8062U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8064U..<8117U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8118U..<8125U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8126
        assert_true(is_cased('ι'))
        for chn in 8130U..<8133U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8134U..<8141U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8144U..<8148U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8150U..<8156U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8160U..<8173U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8178U..<8181U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8182U..<8189U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8305
        assert_true(is_cased('ⁱ'))
        // charcode 8319
        assert_true(is_cased('ⁿ'))
        for chn in 8336U..<8349U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8450
        assert_true(is_cased('ℂ'))
        // charcode 8455
        assert_true(is_cased('ℇ'))
        for chn in 8458U..<8468U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8469
        assert_true(is_cased('ℕ'))
        for chn in 8473U..<8478U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8484
        assert_true(is_cased('ℤ'))
        // charcode 8486
        assert_true(is_cased('Ω'))
        // charcode 8488
        assert_true(is_cased('ℨ'))
        for chn in 8490U..<8494U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8495U..<8501U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8505
        assert_true(is_cased('ℹ'))
        for chn in 8508U..<8512U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8517U..<8522U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8526
        assert_true(is_cased('ⅎ'))
        for chn in 8544U..<8576U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8579U..<8581U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 9398U..<9450U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11264U..<11493U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11499U..<11503U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11506U..<11508U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11520U..<11558U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11559
        assert_true(is_cased('ⴧ'))
        // charcode 11565
        assert_true(is_cased('ⴭ'))
        for chn in 42560U..<42606U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42624U..<42654U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42786U..<42888U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42891U..<42895U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42896U..<42958U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42960U..<42962U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42963
        assert_true(is_cased('ꟓ'))
        for chn in 42965U..<42973U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42994U..<42999U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43000U..<43003U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43824U..<43867U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43868U..<43882U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43888U..<43968U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64256U..<64263U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64275U..<64280U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65313U..<65339U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65345U..<65371U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66560U..<66640U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66736U..<66772U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66776U..<66812U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66928U..<66939U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66940U..<66955U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66956U..<66963U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66964U..<66966U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66967U..<66978U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66979U..<66994U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66995U..<67002U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67003U..<67005U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 67456
        assert_true(is_cased('𐞀'))
        for chn in 67459U..<67462U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67463U..<67505U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67506U..<67515U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68736U..<68787U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68800U..<68851U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68944U..<68966U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68976U..<68998U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71840U..<71904U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93760U..<93824U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119808U..<119893U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119894U..<119965U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119966U..<119968U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119970
        assert_true(is_cased('𝒢'))
        for chn in 119973U..<119975U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119977U..<119981U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119982U..<119994U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119995
        assert_true(is_cased('𝒻'))
        for chn in 119997U..<120004U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120005U..<120070U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120071U..<120075U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120077U..<120085U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120086U..<120093U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120094U..<120122U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120123U..<120127U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120128U..<120133U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120134
        assert_true(is_cased('𝕆'))
        for chn in 120138U..<120145U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120146U..<120486U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120488U..<120513U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120514U..<120539U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120540U..<120571U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120572U..<120597U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120598U..<120629U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120630U..<120655U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120656U..<120687U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120688U..<120713U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120714U..<120745U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120746U..<120771U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120772U..<120780U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122624U..<122634U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122635U..<122655U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122661U..<122667U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122928U..<122990U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125184U..<125252U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127280U..<127306U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127312U..<127338U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127344U..<127370U {
            ensure(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    fn cased_false() -> Unit!Error {
        for chn in 0U..<65U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 91U..<97U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123U..<170U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 171U..<181U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 182U..<186U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 187U..<192U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 215
        assert_false(is_cased('×'))
        // charcode 247
        assert_false(is_cased('÷'))
        // charcode 443
        assert_false(is_cased('ƻ'))
        for chn in 448U..<452U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 660
        assert_false(is_cased('ʔ'))
        for chn in 697U..<704U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 706U..<736U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 741U..<837U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 838U..<880U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 884U..<886U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 888U..<890U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 894
        assert_false(is_cased(';'))
        for chn in 896U..<902U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 903
        assert_false(is_cased('·'))
        // charcode 907
        assert_false(is_cased('\u{38b}'))
        // charcode 909
        assert_false(is_cased('\u{38d}'))
        // charcode 930
        assert_false(is_cased('\u{3a2}'))
        // charcode 1014
        assert_false(is_cased('϶'))
        for chn in 1154U..<1162U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1328
        assert_false(is_cased('\u{530}'))
        for chn in 1367U..<1376U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1417U..<4256U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4294
        assert_false(is_cased('\u{10c6}'))
        for chn in 4296U..<4301U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4302U..<4304U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4347
        assert_false(is_cased('჻'))
        for chn in 4352U..<5024U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5110U..<5112U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5118U..<7296U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7307U..<7312U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7355U..<7357U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7360U..<7424U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7616U..<7680U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7958U..<7960U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7966U..<7968U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8006U..<8008U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8014U..<8016U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8024
        assert_false(is_cased('\u{1f58}'))
        // charcode 8026
        assert_false(is_cased('\u{1f5a}'))
        // charcode 8028
        assert_false(is_cased('\u{1f5c}'))
        // charcode 8030
        assert_false(is_cased('\u{1f5e}'))
        for chn in 8062U..<8064U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8117
        assert_false(is_cased('\u{1fb5}'))
        // charcode 8125
        assert_false(is_cased('᾽'))
        for chn in 8127U..<8130U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8133
        assert_false(is_cased('\u{1fc5}'))
        for chn in 8141U..<8144U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8148U..<8150U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8156U..<8160U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8173U..<8178U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8181
        assert_false(is_cased('\u{1ff5}'))
        for chn in 8189U..<8305U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8306U..<8319U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8320U..<8336U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8349U..<8450U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8451U..<8455U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8456U..<8458U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8468
        assert_false(is_cased('℔'))
        for chn in 8470U..<8473U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8478U..<8484U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8485
        assert_false(is_cased('℥'))
        // charcode 8487
        assert_false(is_cased('℧'))
        // charcode 8489
        assert_false(is_cased('℩'))
        // charcode 8494
        assert_false(is_cased('℮'))
        for chn in 8501U..<8505U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8506U..<8508U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8512U..<8517U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8522U..<8526U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8527U..<8544U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8576U..<8579U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8581U..<9398U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 9450U..<11264U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11493U..<11499U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11503U..<11506U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11508U..<11520U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11558
        assert_false(is_cased('\u{2d26}'))
        for chn in 11560U..<11565U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11566U..<42560U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42606U..<42624U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42654U..<42786U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42888U..<42891U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42895
        assert_false(is_cased('ꞏ'))
        for chn in 42958U..<42960U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42962
        assert_false(is_cased('\u{a7d2}'))
        // charcode 42964
        assert_false(is_cased('\u{a7d4}'))
        for chn in 42973U..<42994U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42999
        assert_false(is_cased('ꟷ'))
        for chn in 43003U..<43824U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43867
        assert_false(is_cased('꭛'))
        for chn in 43882U..<43888U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43968U..<55296U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 57344U..<64256U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64263U..<64275U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64280U..<65313U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65339U..<65345U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65371U..<66560U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66640U..<66736U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66772U..<66776U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66812U..<66928U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 66939
        assert_false(is_cased('\u{1057b}'))
        // charcode 66955
        assert_false(is_cased('\u{1058b}'))
        // charcode 66963
        assert_false(is_cased('\u{10593}'))
        // charcode 66966
        assert_false(is_cased('\u{10596}'))
        // charcode 66978
        assert_false(is_cased('\u{105a2}'))
        // charcode 66994
        assert_false(is_cased('\u{105b2}'))
        // charcode 67002
        assert_false(is_cased('\u{105ba}'))
        for chn in 67005U..<67456U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67457U..<67459U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 67462
        assert_false(is_cased('\u{10786}'))
        // charcode 67505
        assert_false(is_cased('\u{107b1}'))
        for chn in 67515U..<68736U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68787U..<68800U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68851U..<68944U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68966U..<68976U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68998U..<71840U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71904U..<93760U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93824U..<119808U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119893
        assert_false(is_cased('\u{1d455}'))
        // charcode 119965
        assert_false(is_cased('\u{1d49d}'))
        for chn in 119968U..<119970U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119971U..<119973U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119975U..<119977U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119981
        assert_false(is_cased('\u{1d4ad}'))
        // charcode 119994
        assert_false(is_cased('\u{1d4ba}'))
        // charcode 119996
        assert_false(is_cased('\u{1d4bc}'))
        // charcode 120004
        assert_false(is_cased('\u{1d4c4}'))
        // charcode 120070
        assert_false(is_cased('\u{1d506}'))
        for chn in 120075U..<120077U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120085
        assert_false(is_cased('\u{1d515}'))
        // charcode 120093
        assert_false(is_cased('\u{1d51d}'))
        // charcode 120122
        assert_false(is_cased('\u{1d53a}'))
        // charcode 120127
        assert_false(is_cased('\u{1d53f}'))
        // charcode 120133
        assert_false(is_cased('\u{1d545}'))
        for chn in 120135U..<120138U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120145
        assert_false(is_cased('\u{1d551}'))
        for chn in 120486U..<120488U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120513
        assert_false(is_cased('𝛁'))
        // charcode 120539
        assert_false(is_cased('𝛛'))
        // charcode 120571
        assert_false(is_cased('𝛻'))
        // charcode 120597
        assert_false(is_cased('𝜕'))
        // charcode 120629
        assert_false(is_cased('𝜵'))
        // charcode 120655
        assert_false(is_cased('𝝏'))
        // charcode 120687
        assert_false(is_cased('𝝯'))
        // charcode 120713
        assert_false(is_cased('𝞉'))
        // charcode 120745
        assert_false(is_cased('𝞩'))
        // charcode 120771
        assert_false(is_cased('𝟃'))
        for chn in 120780U..<122624U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 122634
        assert_false(is_cased('𝼊'))
        for chn in 122655U..<122661U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122667U..<122928U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122990U..<125184U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125252U..<127280U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127306U..<127312U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127338U..<127344U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127370U..<1114111U {
            ensure_not(is_cased(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    cased_true();
    cased_false();

    fn cc_true() -> Unit!Error {
        for chn in 0U..<32U {
            ensure(is_cc(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127U..<160U {
            ensure(is_cc(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    fn cc_false() -> Unit!Error {
        for chn in 32U..<127U {
            ensure_not(is_cc(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 160U..<55296U {
            ensure_not(is_cc(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 57344U..<1114111U {
            ensure_not(is_cc(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    cc_true();
    cc_false();

    fn grapheme_extend_true() -> Unit!Error {
        for chn in 768U..<880U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1155U..<1162U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1425U..<1470U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1471
        assert_true(is_grapheme_extend('\u{5bf}'))
        for chn in 1473U..<1475U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1476U..<1478U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1479
        assert_true(is_grapheme_extend('\u{5c7}'))
        for chn in 1552U..<1563U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1611U..<1632U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1648
        assert_true(is_grapheme_extend('\u{670}'))
        for chn in 1750U..<1757U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1759U..<1765U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1767U..<1769U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1770U..<1774U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1809
        assert_true(is_grapheme_extend('\u{711}'))
        for chn in 1840U..<1867U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1958U..<1969U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2027U..<2036U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2045
        assert_true(is_grapheme_extend('\u{7fd}'))
        for chn in 2070U..<2074U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2075U..<2084U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2085U..<2088U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2089U..<2094U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2137U..<2140U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2199U..<2208U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2250U..<2274U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2275U..<2307U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2362
        assert_true(is_grapheme_extend('\u{93a}'))
        // charcode 2364
        assert_true(is_grapheme_extend('\u{93c}'))
        for chn in 2369U..<2377U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2381
        assert_true(is_grapheme_extend('\u{94d}'))
        for chn in 2385U..<2392U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2402U..<2404U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2433
        assert_true(is_grapheme_extend('\u{981}'))
        // charcode 2492
        assert_true(is_grapheme_extend('\u{9bc}'))
        // charcode 2494
        assert_true(is_grapheme_extend('\u{9be}'))
        for chn in 2497U..<2501U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2509
        assert_true(is_grapheme_extend('\u{9cd}'))
        // charcode 2519
        assert_true(is_grapheme_extend('\u{9d7}'))
        for chn in 2530U..<2532U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2558
        assert_true(is_grapheme_extend('\u{9fe}'))
        for chn in 2561U..<2563U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2620
        assert_true(is_grapheme_extend('\u{a3c}'))
        for chn in 2625U..<2627U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2631U..<2633U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2635U..<2638U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2641
        assert_true(is_grapheme_extend('\u{a51}'))
        for chn in 2672U..<2674U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2677
        assert_true(is_grapheme_extend('\u{a75}'))
        for chn in 2689U..<2691U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2748
        assert_true(is_grapheme_extend('\u{abc}'))
        for chn in 2753U..<2758U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2759U..<2761U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2765
        assert_true(is_grapheme_extend('\u{acd}'))
        for chn in 2786U..<2788U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2810U..<2816U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2817
        assert_true(is_grapheme_extend('\u{b01}'))
        // charcode 2876
        assert_true(is_grapheme_extend('\u{b3c}'))
        for chn in 2878U..<2880U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2881U..<2885U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2893
        assert_true(is_grapheme_extend('\u{b4d}'))
        for chn in 2901U..<2904U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2914U..<2916U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2946
        assert_true(is_grapheme_extend('\u{b82}'))
        // charcode 3006
        assert_true(is_grapheme_extend('\u{bbe}'))
        // charcode 3008
        assert_true(is_grapheme_extend('\u{bc0}'))
        // charcode 3021
        assert_true(is_grapheme_extend('\u{bcd}'))
        // charcode 3031
        assert_true(is_grapheme_extend('\u{bd7}'))
        // charcode 3072
        assert_true(is_grapheme_extend('\u{c00}'))
        // charcode 3076
        assert_true(is_grapheme_extend('\u{c04}'))
        // charcode 3132
        assert_true(is_grapheme_extend('\u{c3c}'))
        for chn in 3134U..<3137U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3142U..<3145U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3146U..<3150U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3157U..<3159U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3170U..<3172U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3201
        assert_true(is_grapheme_extend('\u{c81}'))
        // charcode 3260
        assert_true(is_grapheme_extend('\u{cbc}'))
        for chn in 3263U..<3265U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3266
        assert_true(is_grapheme_extend('\u{cc2}'))
        for chn in 3270U..<3273U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3274U..<3278U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3285U..<3287U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3298U..<3300U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3328U..<3330U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3387U..<3389U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3390
        assert_true(is_grapheme_extend('\u{d3e}'))
        for chn in 3393U..<3397U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3405
        assert_true(is_grapheme_extend('\u{d4d}'))
        // charcode 3415
        assert_true(is_grapheme_extend('\u{d57}'))
        for chn in 3426U..<3428U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3457
        assert_true(is_grapheme_extend('\u{d81}'))
        // charcode 3530
        assert_true(is_grapheme_extend('\u{dca}'))
        // charcode 3535
        assert_true(is_grapheme_extend('\u{dcf}'))
        for chn in 3538U..<3541U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3542
        assert_true(is_grapheme_extend('\u{dd6}'))
        // charcode 3551
        assert_true(is_grapheme_extend('\u{ddf}'))
        // charcode 3633
        assert_true(is_grapheme_extend('\u{e31}'))
        for chn in 3636U..<3643U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3655U..<3663U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3761
        assert_true(is_grapheme_extend('\u{eb1}'))
        for chn in 3764U..<3773U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3784U..<3791U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3864U..<3866U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3893
        assert_true(is_grapheme_extend('\u{f35}'))
        // charcode 3895
        assert_true(is_grapheme_extend('\u{f37}'))
        // charcode 3897
        assert_true(is_grapheme_extend('\u{f39}'))
        for chn in 3953U..<3967U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3968U..<3973U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3974U..<3976U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3981U..<3992U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3993U..<4029U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4038
        assert_true(is_grapheme_extend('\u{fc6}'))
        for chn in 4141U..<4145U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4146U..<4152U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4153U..<4155U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4157U..<4159U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4184U..<4186U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4190U..<4193U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4209U..<4213U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4226
        assert_true(is_grapheme_extend('\u{1082}'))
        for chn in 4229U..<4231U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4237
        assert_true(is_grapheme_extend('\u{108d}'))
        // charcode 4253
        assert_true(is_grapheme_extend('\u{109d}'))
        for chn in 4957U..<4960U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5906U..<5910U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5938U..<5941U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5970U..<5972U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6002U..<6004U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6068U..<6070U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6071U..<6078U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6086
        assert_true(is_grapheme_extend('\u{17c6}'))
        for chn in 6089U..<6100U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6109
        assert_true(is_grapheme_extend('\u{17dd}'))
        for chn in 6155U..<6158U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6159
        assert_true(is_grapheme_extend('\u{180f}'))
        for chn in 6277U..<6279U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6313
        assert_true(is_grapheme_extend('\u{18a9}'))
        for chn in 6432U..<6435U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6439U..<6441U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6450
        assert_true(is_grapheme_extend('\u{1932}'))
        for chn in 6457U..<6460U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6679U..<6681U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6683
        assert_true(is_grapheme_extend('\u{1a1b}'))
        // charcode 6742
        assert_true(is_grapheme_extend('\u{1a56}'))
        for chn in 6744U..<6751U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6752
        assert_true(is_grapheme_extend('\u{1a60}'))
        // charcode 6754
        assert_true(is_grapheme_extend('\u{1a62}'))
        for chn in 6757U..<6765U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6771U..<6781U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6783
        assert_true(is_grapheme_extend('\u{1a7f}'))
        for chn in 6832U..<6863U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6912U..<6916U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6964U..<6974U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6978U..<6981U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7019U..<7028U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7040U..<7042U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7074U..<7078U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7080U..<7086U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7142
        assert_true(is_grapheme_extend('\u{1be6}'))
        for chn in 7144U..<7146U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7149
        assert_true(is_grapheme_extend('\u{1bed}'))
        for chn in 7151U..<7156U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7212U..<7220U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7222U..<7224U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7376U..<7379U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7380U..<7393U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7394U..<7401U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7405
        assert_true(is_grapheme_extend('\u{1ced}'))
        // charcode 7412
        assert_true(is_grapheme_extend('\u{1cf4}'))
        for chn in 7416U..<7418U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7616U..<7680U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8204
        assert_true(is_grapheme_extend('\u{200c}'))
        for chn in 8400U..<8433U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11503U..<11506U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11647
        assert_true(is_grapheme_extend('\u{2d7f}'))
        for chn in 11744U..<11776U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12330U..<12336U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12441U..<12443U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42607U..<42611U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42612U..<42622U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42654U..<42656U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42736U..<42738U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43010
        assert_true(is_grapheme_extend('\u{a802}'))
        // charcode 43014
        assert_true(is_grapheme_extend('\u{a806}'))
        // charcode 43019
        assert_true(is_grapheme_extend('\u{a80b}'))
        for chn in 43045U..<43047U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43052
        assert_true(is_grapheme_extend('\u{a82c}'))
        for chn in 43204U..<43206U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43232U..<43250U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43263
        assert_true(is_grapheme_extend('\u{a8ff}'))
        for chn in 43302U..<43310U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43335U..<43346U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43347
        assert_true(is_grapheme_extend('\u{a953}'))
        for chn in 43392U..<43395U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43443
        assert_true(is_grapheme_extend('\u{a9b3}'))
        for chn in 43446U..<43450U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43452U..<43454U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43456
        assert_true(is_grapheme_extend('\u{a9c0}'))
        // charcode 43493
        assert_true(is_grapheme_extend('\u{a9e5}'))
        for chn in 43561U..<43567U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43569U..<43571U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43573U..<43575U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43587
        assert_true(is_grapheme_extend('\u{aa43}'))
        // charcode 43596
        assert_true(is_grapheme_extend('\u{aa4c}'))
        // charcode 43644
        assert_true(is_grapheme_extend('\u{aa7c}'))
        // charcode 43696
        assert_true(is_grapheme_extend('\u{aab0}'))
        for chn in 43698U..<43701U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43703U..<43705U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43710U..<43712U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43713
        assert_true(is_grapheme_extend('\u{aac1}'))
        for chn in 43756U..<43758U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43766
        assert_true(is_grapheme_extend('\u{aaf6}'))
        // charcode 44005
        assert_true(is_grapheme_extend('\u{abe5}'))
        // charcode 44008
        assert_true(is_grapheme_extend('\u{abe8}'))
        // charcode 44013
        assert_true(is_grapheme_extend('\u{abed}'))
        // charcode 64286
        assert_true(is_grapheme_extend('\u{fb1e}'))
        for chn in 65024U..<65040U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65056U..<65072U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65438U..<65440U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 66045
        assert_true(is_grapheme_extend('\u{101fd}'))
        // charcode 66272
        assert_true(is_grapheme_extend('\u{102e0}'))
        for chn in 66422U..<66427U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68097U..<68100U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68101U..<68103U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68108U..<68112U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68152U..<68155U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 68159
        assert_true(is_grapheme_extend('\u{10a3f}'))
        for chn in 68325U..<68327U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68900U..<68904U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68969U..<68974U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69291U..<69293U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69372U..<69376U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69446U..<69457U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69506U..<69510U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 69633
        assert_true(is_grapheme_extend('\u{11001}'))
        for chn in 69688U..<69703U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 69744
        assert_true(is_grapheme_extend('\u{11070}'))
        for chn in 69747U..<69749U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69759U..<69762U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69811U..<69815U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69817U..<69819U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 69826
        assert_true(is_grapheme_extend('\u{110c2}'))
        for chn in 69888U..<69891U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69927U..<69932U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69933U..<69941U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70003
        assert_true(is_grapheme_extend('\u{11173}'))
        for chn in 70016U..<70018U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70070U..<70079U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70080
        assert_true(is_grapheme_extend('\u{111c0}'))
        for chn in 70089U..<70093U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70095
        assert_true(is_grapheme_extend('\u{111cf}'))
        for chn in 70191U..<70194U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70196U..<70200U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70206
        assert_true(is_grapheme_extend('\u{1123e}'))
        // charcode 70209
        assert_true(is_grapheme_extend('\u{11241}'))
        // charcode 70367
        assert_true(is_grapheme_extend('\u{112df}'))
        for chn in 70371U..<70379U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70400U..<70402U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70459U..<70461U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70462
        assert_true(is_grapheme_extend('\u{1133e}'))
        // charcode 70464
        assert_true(is_grapheme_extend('\u{11340}'))
        // charcode 70477
        assert_true(is_grapheme_extend('\u{1134d}'))
        // charcode 70487
        assert_true(is_grapheme_extend('\u{11357}'))
        for chn in 70502U..<70509U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70512U..<70517U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70584
        assert_true(is_grapheme_extend('\u{113b8}'))
        for chn in 70587U..<70593U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70594
        assert_true(is_grapheme_extend('\u{113c2}'))
        // charcode 70597
        assert_true(is_grapheme_extend('\u{113c5}'))
        for chn in 70599U..<70602U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70606U..<70609U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70610
        assert_true(is_grapheme_extend('\u{113d2}'))
        for chn in 70625U..<70627U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70712U..<70720U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70722U..<70725U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70726
        assert_true(is_grapheme_extend('\u{11446}'))
        // charcode 70750
        assert_true(is_grapheme_extend('\u{1145e}'))
        // charcode 70832
        assert_true(is_grapheme_extend('\u{114b0}'))
        for chn in 70835U..<70841U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70842
        assert_true(is_grapheme_extend('\u{114ba}'))
        // charcode 70845
        assert_true(is_grapheme_extend('\u{114bd}'))
        for chn in 70847U..<70849U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70850U..<70852U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71087
        assert_true(is_grapheme_extend('\u{115af}'))
        for chn in 71090U..<71094U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71100U..<71102U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71103U..<71105U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71132U..<71134U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71219U..<71227U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71229
        assert_true(is_grapheme_extend('\u{1163d}'))
        for chn in 71231U..<71233U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71339
        assert_true(is_grapheme_extend('\u{116ab}'))
        // charcode 71341
        assert_true(is_grapheme_extend('\u{116ad}'))
        for chn in 71344U..<71352U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71453
        assert_true(is_grapheme_extend('\u{1171d}'))
        // charcode 71455
        assert_true(is_grapheme_extend('\u{1171f}'))
        for chn in 71458U..<71462U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71463U..<71468U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71727U..<71736U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71737U..<71739U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71984
        assert_true(is_grapheme_extend('\u{11930}'))
        for chn in 71995U..<71999U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72003
        assert_true(is_grapheme_extend('\u{11943}'))
        for chn in 72148U..<72152U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72154U..<72156U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72160
        assert_true(is_grapheme_extend('\u{119e0}'))
        for chn in 72193U..<72203U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72243U..<72249U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72251U..<72255U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72263
        assert_true(is_grapheme_extend('\u{11a47}'))
        for chn in 72273U..<72279U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72281U..<72284U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72330U..<72343U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72344U..<72346U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72752U..<72759U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72760U..<72766U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72767
        assert_true(is_grapheme_extend('\u{11c3f}'))
        for chn in 72850U..<72872U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72874U..<72881U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72882U..<72884U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72885U..<72887U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73009U..<73015U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73018
        assert_true(is_grapheme_extend('\u{11d3a}'))
        for chn in 73020U..<73022U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73023U..<73030U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73031
        assert_true(is_grapheme_extend('\u{11d47}'))
        for chn in 73104U..<73106U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73109
        assert_true(is_grapheme_extend('\u{11d95}'))
        // charcode 73111
        assert_true(is_grapheme_extend('\u{11d97}'))
        for chn in 73459U..<73461U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73472U..<73474U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73526U..<73531U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73536U..<73539U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73562
        assert_true(is_grapheme_extend('\u{11f5a}'))
        // charcode 78912
        assert_true(is_grapheme_extend('\u{13440}'))
        for chn in 78919U..<78934U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 90398U..<90410U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 90413U..<90416U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92912U..<92917U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92976U..<92983U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 94031
        assert_true(is_grapheme_extend('\u{16f4f}'))
        for chn in 94095U..<94099U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 94180
        assert_true(is_grapheme_extend('\u{16fe4}'))
        for chn in 94192U..<94194U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 113821U..<113823U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 118528U..<118574U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 118576U..<118599U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119141U..<119146U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119149U..<119155U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119163U..<119171U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119173U..<119180U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119210U..<119214U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119362U..<119365U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 121344U..<121399U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 121403U..<121453U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 121461
        assert_true(is_grapheme_extend('\u{1da75}'))
        // charcode 121476
        assert_true(is_grapheme_extend('\u{1da84}'))
        for chn in 121499U..<121504U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 121505U..<121520U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122880U..<122887U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122888U..<122905U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122907U..<122914U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122915U..<122917U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122918U..<122923U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 123023
        assert_true(is_grapheme_extend('\u{1e08f}'))
        for chn in 123184U..<123191U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 123566
        assert_true(is_grapheme_extend('\u{1e2ae}'))
        for chn in 123628U..<123632U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124140U..<124144U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124398U..<124400U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125136U..<125143U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125252U..<125259U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 917536U..<917632U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 917760U..<918000U {
            ensure(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    fn grapheme_extend_false() -> Unit!Error {
        for chn in 0U..<768U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 880U..<1155U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1162U..<1425U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1470
        assert_false(is_grapheme_extend('־'))
        // charcode 1472
        assert_false(is_grapheme_extend('׀'))
        // charcode 1475
        assert_false(is_grapheme_extend('׃'))
        // charcode 1478
        assert_false(is_grapheme_extend('׆'))
        for chn in 1480U..<1552U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1563U..<1611U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1632U..<1648U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1649U..<1750U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1757U..<1759U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1765U..<1767U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1769
        assert_false(is_grapheme_extend('۩'))
        for chn in 1774U..<1809U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1810U..<1840U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1867U..<1958U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1969U..<2027U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2036U..<2045U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2046U..<2070U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2074
        assert_false(is_grapheme_extend('ࠚ'))
        // charcode 2084
        assert_false(is_grapheme_extend('ࠤ'))
        // charcode 2088
        assert_false(is_grapheme_extend('ࠨ'))
        for chn in 2094U..<2137U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2140U..<2199U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2208U..<2250U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2274
        assert_false(is_grapheme_extend('\u{8e2}'))
        for chn in 2307U..<2362U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2363
        assert_false(is_grapheme_extend('ऻ'))
        for chn in 2365U..<2369U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2377U..<2381U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2382U..<2385U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2392U..<2402U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2404U..<2433U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2434U..<2492U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2493
        assert_false(is_grapheme_extend('ঽ'))
        for chn in 2495U..<2497U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2501U..<2509U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2510U..<2519U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2520U..<2530U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2532U..<2558U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2559U..<2561U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2563U..<2620U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2621U..<2625U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2627U..<2631U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2633U..<2635U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2638U..<2641U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2642U..<2672U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2674U..<2677U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2678U..<2689U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2691U..<2748U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2749U..<2753U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2758
        assert_false(is_grapheme_extend('\u{ac6}'))
        for chn in 2761U..<2765U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2766U..<2786U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2788U..<2810U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2816
        assert_false(is_grapheme_extend('\u{b00}'))
        for chn in 2818U..<2876U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 2877
        assert_false(is_grapheme_extend('ଽ'))
        // charcode 2880
        assert_false(is_grapheme_extend('ୀ'))
        for chn in 2885U..<2893U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2894U..<2901U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2904U..<2914U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2916U..<2946U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2947U..<3006U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3007
        assert_false(is_grapheme_extend('ி'))
        for chn in 3009U..<3021U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3022U..<3031U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3032U..<3072U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3073U..<3076U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3077U..<3132U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3133
        assert_false(is_grapheme_extend('ఽ'))
        for chn in 3137U..<3142U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3145
        assert_false(is_grapheme_extend('\u{c49}'))
        for chn in 3150U..<3157U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3159U..<3170U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3172U..<3201U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3202U..<3260U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3261U..<3263U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3265
        assert_false(is_grapheme_extend('ು'))
        for chn in 3267U..<3270U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3273
        assert_false(is_grapheme_extend('\u{cc9}'))
        for chn in 3278U..<3285U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3287U..<3298U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3300U..<3328U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3330U..<3387U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3389
        assert_false(is_grapheme_extend('ഽ'))
        for chn in 3391U..<3393U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3397U..<3405U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3406U..<3415U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3416U..<3426U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3428U..<3457U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3458U..<3530U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3531U..<3535U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3536U..<3538U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3541
        assert_false(is_grapheme_extend('\u{dd5}'))
        for chn in 3543U..<3551U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3552U..<3633U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3634U..<3636U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3643U..<3655U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3663U..<3761U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3762U..<3764U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3773U..<3784U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3791U..<3864U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3866U..<3893U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3894
        assert_false(is_grapheme_extend('༶'))
        // charcode 3896
        assert_false(is_grapheme_extend('༸'))
        for chn in 3898U..<3953U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3967
        assert_false(is_grapheme_extend('ཿ'))
        // charcode 3973
        assert_false(is_grapheme_extend('྅'))
        for chn in 3976U..<3981U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 3992
        assert_false(is_grapheme_extend('\u{f98}'))
        for chn in 4029U..<4038U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4039U..<4141U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4145
        assert_false(is_grapheme_extend('ေ'))
        // charcode 4152
        assert_false(is_grapheme_extend('း'))
        for chn in 4155U..<4157U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4159U..<4184U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4186U..<4190U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4193U..<4209U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4213U..<4226U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4227U..<4229U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4231U..<4237U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4238U..<4253U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4254U..<4957U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4960U..<5906U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5910U..<5938U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5941U..<5970U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5972U..<6002U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6004U..<6068U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6070
        assert_false(is_grapheme_extend('ា'))
        for chn in 6078U..<6086U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6087U..<6089U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6100U..<6109U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6110U..<6155U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6158
        assert_false(is_grapheme_extend('\u{180e}'))
        for chn in 6160U..<6277U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6279U..<6313U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6314U..<6432U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6435U..<6439U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6441U..<6450U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6451U..<6457U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6460U..<6679U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6681U..<6683U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6684U..<6742U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 6743
        assert_false(is_grapheme_extend('ᩗ'))
        // charcode 6751
        assert_false(is_grapheme_extend('\u{1a5f}'))
        // charcode 6753
        assert_false(is_grapheme_extend('ᩡ'))
        for chn in 6755U..<6757U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6765U..<6771U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6781U..<6783U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6784U..<6832U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6863U..<6912U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6916U..<6964U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6974U..<6978U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6981U..<7019U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7028U..<7040U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7042U..<7074U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7078U..<7080U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7086U..<7142U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7143
        assert_false(is_grapheme_extend('ᯧ'))
        for chn in 7146U..<7149U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7150
        assert_false(is_grapheme_extend('ᯮ'))
        for chn in 7156U..<7212U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7220U..<7222U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7224U..<7376U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7379
        assert_false(is_grapheme_extend('᳓'))
        // charcode 7393
        assert_false(is_grapheme_extend('᳡'))
        for chn in 7401U..<7405U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7406U..<7412U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7413U..<7416U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7418U..<7616U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7680U..<8204U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8205U..<8400U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8433U..<11503U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11506U..<11647U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11648U..<11744U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11776U..<12330U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12336U..<12441U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12443U..<42607U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42611
        assert_false(is_grapheme_extend('꙳'))
        for chn in 42622U..<42654U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42656U..<42736U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42738U..<43010U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43011U..<43014U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43015U..<43019U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43020U..<43045U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43047U..<43052U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43053U..<43204U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43206U..<43232U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43250U..<43263U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43264U..<43302U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43310U..<43335U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43346
        assert_false(is_grapheme_extend('ꥒ'))
        for chn in 43348U..<43392U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43395U..<43443U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43444U..<43446U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43450U..<43452U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43454U..<43456U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43457U..<43493U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43494U..<43561U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43567U..<43569U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43571U..<43573U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43575U..<43587U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43588U..<43596U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43597U..<43644U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43645U..<43696U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43697
        assert_false(is_grapheme_extend('ꪱ'))
        for chn in 43701U..<43703U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43705U..<43710U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43712
        assert_false(is_grapheme_extend('ꫀ'))
        for chn in 43714U..<43756U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43758U..<43766U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43767U..<44005U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 44006U..<44008U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 44009U..<44013U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 44014U..<55296U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 57344U..<64286U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64287U..<65024U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65040U..<65056U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65072U..<65438U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65440U..<66045U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66046U..<66272U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66273U..<66422U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66427U..<68097U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 68100
        assert_false(is_grapheme_extend('\u{10a04}'))
        for chn in 68103U..<68108U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68112U..<68152U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68155U..<68159U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68160U..<68325U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68327U..<68900U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68904U..<68969U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68974U..<69291U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69293U..<69372U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69376U..<69446U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69457U..<69506U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69510U..<69633U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69634U..<69688U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69703U..<69744U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69745U..<69747U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69749U..<69759U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69762U..<69811U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69815U..<69817U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69819U..<69826U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69827U..<69888U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69891U..<69927U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 69932
        assert_false(is_grapheme_extend('𑄬'))
        for chn in 69941U..<70003U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70004U..<70016U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70018U..<70070U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70079
        assert_false(is_grapheme_extend('𑆿'))
        for chn in 70081U..<70089U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70093U..<70095U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70096U..<70191U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70194U..<70196U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70200U..<70206U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70207U..<70209U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70210U..<70367U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70368U..<70371U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70379U..<70400U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70402U..<70459U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70461
        assert_false(is_grapheme_extend('𑌽'))
        // charcode 70463
        assert_false(is_grapheme_extend('𑌿'))
        for chn in 70465U..<70477U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70478U..<70487U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70488U..<70502U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70509U..<70512U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70517U..<70584U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70585U..<70587U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70593
        assert_false(is_grapheme_extend('\u{113c1}'))
        for chn in 70595U..<70597U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70598
        assert_false(is_grapheme_extend('\u{113c6}'))
        for chn in 70602U..<70606U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70609
        assert_false(is_grapheme_extend('𑏑'))
        for chn in 70611U..<70625U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70627U..<70712U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70720U..<70722U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70725
        assert_false(is_grapheme_extend('𑑅'))
        for chn in 70727U..<70750U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70751U..<70832U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70833U..<70835U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70841
        assert_false(is_grapheme_extend('𑒹'))
        for chn in 70843U..<70845U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 70846
        assert_false(is_grapheme_extend('𑒾'))
        // charcode 70849
        assert_false(is_grapheme_extend('𑓁'))
        for chn in 70852U..<71087U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71088U..<71090U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71094U..<71100U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71102
        assert_false(is_grapheme_extend('𑖾'))
        for chn in 71105U..<71132U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71134U..<71219U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71227U..<71229U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71230
        assert_false(is_grapheme_extend('𑘾'))
        for chn in 71233U..<71339U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71340
        assert_false(is_grapheme_extend('𑚬'))
        for chn in 71342U..<71344U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71352U..<71453U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71454
        assert_false(is_grapheme_extend('𑜞'))
        for chn in 71456U..<71458U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71462
        assert_false(is_grapheme_extend('𑜦'))
        for chn in 71468U..<71727U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 71736
        assert_false(is_grapheme_extend('𑠸'))
        for chn in 71739U..<71984U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71985U..<71995U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71999U..<72003U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72004U..<72148U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72152U..<72154U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72156U..<72160U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72161U..<72193U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72203U..<72243U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72249U..<72251U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72255U..<72263U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72264U..<72273U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72279U..<72281U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72284U..<72330U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72343
        assert_false(is_grapheme_extend('𑪗'))
        for chn in 72346U..<72752U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72759
        assert_false(is_grapheme_extend('\u{11c37}'))
        // charcode 72766
        assert_false(is_grapheme_extend('𑰾'))
        for chn in 72768U..<72850U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72872U..<72874U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 72881
        assert_false(is_grapheme_extend('𑲱'))
        // charcode 72884
        assert_false(is_grapheme_extend('𑲴'))
        for chn in 72887U..<73009U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73015U..<73018U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73019
        assert_false(is_grapheme_extend('\u{11d3b}'))
        // charcode 73022
        assert_false(is_grapheme_extend('\u{11d3e}'))
        // charcode 73030
        assert_false(is_grapheme_extend('𑵆'))
        for chn in 73032U..<73104U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73106U..<73109U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 73110
        assert_false(is_grapheme_extend('𑶖'))
        for chn in 73112U..<73459U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73461U..<73472U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73474U..<73526U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73531U..<73536U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73539U..<73562U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73563U..<78912U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 78913U..<78919U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 78934U..<90398U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 90410U..<90413U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 90416U..<92912U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92917U..<92976U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92983U..<94031U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94032U..<94095U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94099U..<94180U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94181U..<94192U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 94194U..<113821U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 113823U..<118528U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 118574U..<118576U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 118599U..<119141U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119146U..<119149U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119155U..<119163U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119171U..<119173U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119180U..<119210U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119214U..<119362U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119365U..<121344U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 121399U..<121403U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 121453U..<121461U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 121462U..<121476U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 121477U..<121499U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 121504
        assert_false(is_grapheme_extend('\u{1daa0}'))
        for chn in 121520U..<122880U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 122887
        assert_false(is_grapheme_extend('\u{1e007}'))
        for chn in 122905U..<122907U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 122914
        assert_false(is_grapheme_extend('\u{1e022}'))
        // charcode 122917
        assert_false(is_grapheme_extend('\u{1e025}'))
        for chn in 122923U..<123023U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123024U..<123184U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123191U..<123566U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123567U..<123628U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123632U..<124140U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124144U..<124398U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124400U..<125136U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125143U..<125252U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125259U..<917536U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 917632U..<917760U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 918000U..<1114111U {
            ensure_not(is_grapheme_extend(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    grapheme_extend_true();
    grapheme_extend_false();

    fn lowercase_true() -> Unit!Error {
        for chn in 97U..<123U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 170
        assert_true(is_lowercase('ª'))
        // charcode 181
        assert_true(is_lowercase('µ'))
        // charcode 186
        assert_true(is_lowercase('º'))
        for chn in 223U..<247U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 248U..<256U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 257
        assert_true(is_lowercase('ā'))
        // charcode 259
        assert_true(is_lowercase('ă'))
        // charcode 261
        assert_true(is_lowercase('ą'))
        // charcode 263
        assert_true(is_lowercase('ć'))
        // charcode 265
        assert_true(is_lowercase('ĉ'))
        // charcode 267
        assert_true(is_lowercase('ċ'))
        // charcode 269
        assert_true(is_lowercase('č'))
        // charcode 271
        assert_true(is_lowercase('ď'))
        // charcode 273
        assert_true(is_lowercase('đ'))
        // charcode 275
        assert_true(is_lowercase('ē'))
        // charcode 277
        assert_true(is_lowercase('ĕ'))
        // charcode 279
        assert_true(is_lowercase('ė'))
        // charcode 281
        assert_true(is_lowercase('ę'))
        // charcode 283
        assert_true(is_lowercase('ě'))
        // charcode 285
        assert_true(is_lowercase('ĝ'))
        // charcode 287
        assert_true(is_lowercase('ğ'))
        // charcode 289
        assert_true(is_lowercase('ġ'))
        // charcode 291
        assert_true(is_lowercase('ģ'))
        // charcode 293
        assert_true(is_lowercase('ĥ'))
        // charcode 295
        assert_true(is_lowercase('ħ'))
        // charcode 297
        assert_true(is_lowercase('ĩ'))
        // charcode 299
        assert_true(is_lowercase('ī'))
        // charcode 301
        assert_true(is_lowercase('ĭ'))
        // charcode 303
        assert_true(is_lowercase('į'))
        // charcode 305
        assert_true(is_lowercase('ı'))
        // charcode 307
        assert_true(is_lowercase('ĳ'))
        // charcode 309
        assert_true(is_lowercase('ĵ'))
        for chn in 311U..<313U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 314
        assert_true(is_lowercase('ĺ'))
        // charcode 316
        assert_true(is_lowercase('ļ'))
        // charcode 318
        assert_true(is_lowercase('ľ'))
        // charcode 320
        assert_true(is_lowercase('ŀ'))
        // charcode 322
        assert_true(is_lowercase('ł'))
        // charcode 324
        assert_true(is_lowercase('ń'))
        // charcode 326
        assert_true(is_lowercase('ņ'))
        for chn in 328U..<330U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 331
        assert_true(is_lowercase('ŋ'))
        // charcode 333
        assert_true(is_lowercase('ō'))
        // charcode 335
        assert_true(is_lowercase('ŏ'))
        // charcode 337
        assert_true(is_lowercase('ő'))
        // charcode 339
        assert_true(is_lowercase('œ'))
        // charcode 341
        assert_true(is_lowercase('ŕ'))
        // charcode 343
        assert_true(is_lowercase('ŗ'))
        // charcode 345
        assert_true(is_lowercase('ř'))
        // charcode 347
        assert_true(is_lowercase('ś'))
        // charcode 349
        assert_true(is_lowercase('ŝ'))
        // charcode 351
        assert_true(is_lowercase('ş'))
        // charcode 353
        assert_true(is_lowercase('š'))
        // charcode 355
        assert_true(is_lowercase('ţ'))
        // charcode 357
        assert_true(is_lowercase('ť'))
        // charcode 359
        assert_true(is_lowercase('ŧ'))
        // charcode 361
        assert_true(is_lowercase('ũ'))
        // charcode 363
        assert_true(is_lowercase('ū'))
        // charcode 365
        assert_true(is_lowercase('ŭ'))
        // charcode 367
        assert_true(is_lowercase('ů'))
        // charcode 369
        assert_true(is_lowercase('ű'))
        // charcode 371
        assert_true(is_lowercase('ų'))
        // charcode 373
        assert_true(is_lowercase('ŵ'))
        // charcode 375
        assert_true(is_lowercase('ŷ'))
        // charcode 378
        assert_true(is_lowercase('ź'))
        // charcode 380
        assert_true(is_lowercase('ż'))
        for chn in 382U..<385U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 387
        assert_true(is_lowercase('ƃ'))
        // charcode 389
        assert_true(is_lowercase('ƅ'))
        // charcode 392
        assert_true(is_lowercase('ƈ'))
        for chn in 396U..<398U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 402
        assert_true(is_lowercase('ƒ'))
        // charcode 405
        assert_true(is_lowercase('ƕ'))
        for chn in 409U..<412U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 414
        assert_true(is_lowercase('ƞ'))
        // charcode 417
        assert_true(is_lowercase('ơ'))
        // charcode 419
        assert_true(is_lowercase('ƣ'))
        // charcode 421
        assert_true(is_lowercase('ƥ'))
        // charcode 424
        assert_true(is_lowercase('ƨ'))
        for chn in 426U..<428U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 429
        assert_true(is_lowercase('ƭ'))
        // charcode 432
        assert_true(is_lowercase('ư'))
        // charcode 436
        assert_true(is_lowercase('ƴ'))
        // charcode 438
        assert_true(is_lowercase('ƶ'))
        for chn in 441U..<443U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 445U..<448U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 454
        assert_true(is_lowercase('ǆ'))
        // charcode 457
        assert_true(is_lowercase('ǉ'))
        // charcode 460
        assert_true(is_lowercase('ǌ'))
        // charcode 462
        assert_true(is_lowercase('ǎ'))
        // charcode 464
        assert_true(is_lowercase('ǐ'))
        // charcode 466
        assert_true(is_lowercase('ǒ'))
        // charcode 468
        assert_true(is_lowercase('ǔ'))
        // charcode 470
        assert_true(is_lowercase('ǖ'))
        // charcode 472
        assert_true(is_lowercase('ǘ'))
        // charcode 474
        assert_true(is_lowercase('ǚ'))
        for chn in 476U..<478U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 479
        assert_true(is_lowercase('ǟ'))
        // charcode 481
        assert_true(is_lowercase('ǡ'))
        // charcode 483
        assert_true(is_lowercase('ǣ'))
        // charcode 485
        assert_true(is_lowercase('ǥ'))
        // charcode 487
        assert_true(is_lowercase('ǧ'))
        // charcode 489
        assert_true(is_lowercase('ǩ'))
        // charcode 491
        assert_true(is_lowercase('ǫ'))
        // charcode 493
        assert_true(is_lowercase('ǭ'))
        for chn in 495U..<497U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 499
        assert_true(is_lowercase('ǳ'))
        // charcode 501
        assert_true(is_lowercase('ǵ'))
        // charcode 505
        assert_true(is_lowercase('ǹ'))
        // charcode 507
        assert_true(is_lowercase('ǻ'))
        // charcode 509
        assert_true(is_lowercase('ǽ'))
        // charcode 511
        assert_true(is_lowercase('ǿ'))
        // charcode 513
        assert_true(is_lowercase('ȁ'))
        // charcode 515
        assert_true(is_lowercase('ȃ'))
        // charcode 517
        assert_true(is_lowercase('ȅ'))
        // charcode 519
        assert_true(is_lowercase('ȇ'))
        // charcode 521
        assert_true(is_lowercase('ȉ'))
        // charcode 523
        assert_true(is_lowercase('ȋ'))
        // charcode 525
        assert_true(is_lowercase('ȍ'))
        // charcode 527
        assert_true(is_lowercase('ȏ'))
        // charcode 529
        assert_true(is_lowercase('ȑ'))
        // charcode 531
        assert_true(is_lowercase('ȓ'))
        // charcode 533
        assert_true(is_lowercase('ȕ'))
        // charcode 535
        assert_true(is_lowercase('ȗ'))
        // charcode 537
        assert_true(is_lowercase('ș'))
        // charcode 539
        assert_true(is_lowercase('ț'))
        // charcode 541
        assert_true(is_lowercase('ȝ'))
        // charcode 543
        assert_true(is_lowercase('ȟ'))
        // charcode 545
        assert_true(is_lowercase('ȡ'))
        // charcode 547
        assert_true(is_lowercase('ȣ'))
        // charcode 549
        assert_true(is_lowercase('ȥ'))
        // charcode 551
        assert_true(is_lowercase('ȧ'))
        // charcode 553
        assert_true(is_lowercase('ȩ'))
        // charcode 555
        assert_true(is_lowercase('ȫ'))
        // charcode 557
        assert_true(is_lowercase('ȭ'))
        // charcode 559
        assert_true(is_lowercase('ȯ'))
        // charcode 561
        assert_true(is_lowercase('ȱ'))
        for chn in 563U..<570U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 572
        assert_true(is_lowercase('ȼ'))
        for chn in 575U..<577U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 578
        assert_true(is_lowercase('ɂ'))
        // charcode 583
        assert_true(is_lowercase('ɇ'))
        // charcode 585
        assert_true(is_lowercase('ɉ'))
        // charcode 587
        assert_true(is_lowercase('ɋ'))
        // charcode 589
        assert_true(is_lowercase('ɍ'))
        for chn in 591U..<660U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 661U..<697U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 704U..<706U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 736U..<741U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 837
        assert_true(is_lowercase('\u{345}'))
        // charcode 881
        assert_true(is_lowercase('ͱ'))
        // charcode 883
        assert_true(is_lowercase('ͳ'))
        // charcode 887
        assert_true(is_lowercase('ͷ'))
        for chn in 890U..<894U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 912
        assert_true(is_lowercase('ΐ'))
        for chn in 940U..<975U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 976U..<978U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 981U..<984U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 985
        assert_true(is_lowercase('ϙ'))
        // charcode 987
        assert_true(is_lowercase('ϛ'))
        // charcode 989
        assert_true(is_lowercase('ϝ'))
        // charcode 991
        assert_true(is_lowercase('ϟ'))
        // charcode 993
        assert_true(is_lowercase('ϡ'))
        // charcode 995
        assert_true(is_lowercase('ϣ'))
        // charcode 997
        assert_true(is_lowercase('ϥ'))
        // charcode 999
        assert_true(is_lowercase('ϧ'))
        // charcode 1001
        assert_true(is_lowercase('ϩ'))
        // charcode 1003
        assert_true(is_lowercase('ϫ'))
        // charcode 1005
        assert_true(is_lowercase('ϭ'))
        for chn in 1007U..<1012U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1013
        assert_true(is_lowercase('ϵ'))
        // charcode 1016
        assert_true(is_lowercase('ϸ'))
        for chn in 1019U..<1021U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1072U..<1120U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1121
        assert_true(is_lowercase('ѡ'))
        // charcode 1123
        assert_true(is_lowercase('ѣ'))
        // charcode 1125
        assert_true(is_lowercase('ѥ'))
        // charcode 1127
        assert_true(is_lowercase('ѧ'))
        // charcode 1129
        assert_true(is_lowercase('ѩ'))
        // charcode 1131
        assert_true(is_lowercase('ѫ'))
        // charcode 1133
        assert_true(is_lowercase('ѭ'))
        // charcode 1135
        assert_true(is_lowercase('ѯ'))
        // charcode 1137
        assert_true(is_lowercase('ѱ'))
        // charcode 1139
        assert_true(is_lowercase('ѳ'))
        // charcode 1141
        assert_true(is_lowercase('ѵ'))
        // charcode 1143
        assert_true(is_lowercase('ѷ'))
        // charcode 1145
        assert_true(is_lowercase('ѹ'))
        // charcode 1147
        assert_true(is_lowercase('ѻ'))
        // charcode 1149
        assert_true(is_lowercase('ѽ'))
        // charcode 1151
        assert_true(is_lowercase('ѿ'))
        // charcode 1153
        assert_true(is_lowercase('ҁ'))
        // charcode 1163
        assert_true(is_lowercase('ҋ'))
        // charcode 1165
        assert_true(is_lowercase('ҍ'))
        // charcode 1167
        assert_true(is_lowercase('ҏ'))
        // charcode 1169
        assert_true(is_lowercase('ґ'))
        // charcode 1171
        assert_true(is_lowercase('ғ'))
        // charcode 1173
        assert_true(is_lowercase('ҕ'))
        // charcode 1175
        assert_true(is_lowercase('җ'))
        // charcode 1177
        assert_true(is_lowercase('ҙ'))
        // charcode 1179
        assert_true(is_lowercase('қ'))
        // charcode 1181
        assert_true(is_lowercase('ҝ'))
        // charcode 1183
        assert_true(is_lowercase('ҟ'))
        // charcode 1185
        assert_true(is_lowercase('ҡ'))
        // charcode 1187
        assert_true(is_lowercase('ң'))
        // charcode 1189
        assert_true(is_lowercase('ҥ'))
        // charcode 1191
        assert_true(is_lowercase('ҧ'))
        // charcode 1193
        assert_true(is_lowercase('ҩ'))
        // charcode 1195
        assert_true(is_lowercase('ҫ'))
        // charcode 1197
        assert_true(is_lowercase('ҭ'))
        // charcode 1199
        assert_true(is_lowercase('ү'))
        // charcode 1201
        assert_true(is_lowercase('ұ'))
        // charcode 1203
        assert_true(is_lowercase('ҳ'))
        // charcode 1205
        assert_true(is_lowercase('ҵ'))
        // charcode 1207
        assert_true(is_lowercase('ҷ'))
        // charcode 1209
        assert_true(is_lowercase('ҹ'))
        // charcode 1211
        assert_true(is_lowercase('һ'))
        // charcode 1213
        assert_true(is_lowercase('ҽ'))
        // charcode 1215
        assert_true(is_lowercase('ҿ'))
        // charcode 1218
        assert_true(is_lowercase('ӂ'))
        // charcode 1220
        assert_true(is_lowercase('ӄ'))
        // charcode 1222
        assert_true(is_lowercase('ӆ'))
        // charcode 1224
        assert_true(is_lowercase('ӈ'))
        // charcode 1226
        assert_true(is_lowercase('ӊ'))
        // charcode 1228
        assert_true(is_lowercase('ӌ'))
        for chn in 1230U..<1232U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1233
        assert_true(is_lowercase('ӑ'))
        // charcode 1235
        assert_true(is_lowercase('ӓ'))
        // charcode 1237
        assert_true(is_lowercase('ӕ'))
        // charcode 1239
        assert_true(is_lowercase('ӗ'))
        // charcode 1241
        assert_true(is_lowercase('ә'))
        // charcode 1243
        assert_true(is_lowercase('ӛ'))
        // charcode 1245
        assert_true(is_lowercase('ӝ'))
        // charcode 1247
        assert_true(is_lowercase('ӟ'))
        // charcode 1249
        assert_true(is_lowercase('ӡ'))
        // charcode 1251
        assert_true(is_lowercase('ӣ'))
        // charcode 1253
        assert_true(is_lowercase('ӥ'))
        // charcode 1255
        assert_true(is_lowercase('ӧ'))
        // charcode 1257
        assert_true(is_lowercase('ө'))
        // charcode 1259
        assert_true(is_lowercase('ӫ'))
        // charcode 1261
        assert_true(is_lowercase('ӭ'))
        // charcode 1263
        assert_true(is_lowercase('ӯ'))
        // charcode 1265
        assert_true(is_lowercase('ӱ'))
        // charcode 1267
        assert_true(is_lowercase('ӳ'))
        // charcode 1269
        assert_true(is_lowercase('ӵ'))
        // charcode 1271
        assert_true(is_lowercase('ӷ'))
        // charcode 1273
        assert_true(is_lowercase('ӹ'))
        // charcode 1275
        assert_true(is_lowercase('ӻ'))
        // charcode 1277
        assert_true(is_lowercase('ӽ'))
        // charcode 1279
        assert_true(is_lowercase('ӿ'))
        // charcode 1281
        assert_true(is_lowercase('ԁ'))
        // charcode 1283
        assert_true(is_lowercase('ԃ'))
        // charcode 1285
        assert_true(is_lowercase('ԅ'))
        // charcode 1287
        assert_true(is_lowercase('ԇ'))
        // charcode 1289
        assert_true(is_lowercase('ԉ'))
        // charcode 1291
        assert_true(is_lowercase('ԋ'))
        // charcode 1293
        assert_true(is_lowercase('ԍ'))
        // charcode 1295
        assert_true(is_lowercase('ԏ'))
        // charcode 1297
        assert_true(is_lowercase('ԑ'))
        // charcode 1299
        assert_true(is_lowercase('ԓ'))
        // charcode 1301
        assert_true(is_lowercase('ԕ'))
        // charcode 1303
        assert_true(is_lowercase('ԗ'))
        // charcode 1305
        assert_true(is_lowercase('ԙ'))
        // charcode 1307
        assert_true(is_lowercase('ԛ'))
        // charcode 1309
        assert_true(is_lowercase('ԝ'))
        // charcode 1311
        assert_true(is_lowercase('ԟ'))
        // charcode 1313
        assert_true(is_lowercase('ԡ'))
        // charcode 1315
        assert_true(is_lowercase('ԣ'))
        // charcode 1317
        assert_true(is_lowercase('ԥ'))
        // charcode 1319
        assert_true(is_lowercase('ԧ'))
        // charcode 1321
        assert_true(is_lowercase('ԩ'))
        // charcode 1323
        assert_true(is_lowercase('ԫ'))
        // charcode 1325
        assert_true(is_lowercase('ԭ'))
        // charcode 1327
        assert_true(is_lowercase('ԯ'))
        for chn in 1376U..<1417U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4304U..<4347U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4348U..<4352U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5112U..<5118U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7296U..<7305U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7306
        assert_true(is_lowercase('ᲊ'))
        for chn in 7424U..<7616U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7681
        assert_true(is_lowercase('ḁ'))
        // charcode 7683
        assert_true(is_lowercase('ḃ'))
        // charcode 7685
        assert_true(is_lowercase('ḅ'))
        // charcode 7687
        assert_true(is_lowercase('ḇ'))
        // charcode 7689
        assert_true(is_lowercase('ḉ'))
        // charcode 7691
        assert_true(is_lowercase('ḋ'))
        // charcode 7693
        assert_true(is_lowercase('ḍ'))
        // charcode 7695
        assert_true(is_lowercase('ḏ'))
        // charcode 7697
        assert_true(is_lowercase('ḑ'))
        // charcode 7699
        assert_true(is_lowercase('ḓ'))
        // charcode 7701
        assert_true(is_lowercase('ḕ'))
        // charcode 7703
        assert_true(is_lowercase('ḗ'))
        // charcode 7705
        assert_true(is_lowercase('ḙ'))
        // charcode 7707
        assert_true(is_lowercase('ḛ'))
        // charcode 7709
        assert_true(is_lowercase('ḝ'))
        // charcode 7711
        assert_true(is_lowercase('ḟ'))
        // charcode 7713
        assert_true(is_lowercase('ḡ'))
        // charcode 7715
        assert_true(is_lowercase('ḣ'))
        // charcode 7717
        assert_true(is_lowercase('ḥ'))
        // charcode 7719
        assert_true(is_lowercase('ḧ'))
        // charcode 7721
        assert_true(is_lowercase('ḩ'))
        // charcode 7723
        assert_true(is_lowercase('ḫ'))
        // charcode 7725
        assert_true(is_lowercase('ḭ'))
        // charcode 7727
        assert_true(is_lowercase('ḯ'))
        // charcode 7729
        assert_true(is_lowercase('ḱ'))
        // charcode 7731
        assert_true(is_lowercase('ḳ'))
        // charcode 7733
        assert_true(is_lowercase('ḵ'))
        // charcode 7735
        assert_true(is_lowercase('ḷ'))
        // charcode 7737
        assert_true(is_lowercase('ḹ'))
        // charcode 7739
        assert_true(is_lowercase('ḻ'))
        // charcode 7741
        assert_true(is_lowercase('ḽ'))
        // charcode 7743
        assert_true(is_lowercase('ḿ'))
        // charcode 7745
        assert_true(is_lowercase('ṁ'))
        // charcode 7747
        assert_true(is_lowercase('ṃ'))
        // charcode 7749
        assert_true(is_lowercase('ṅ'))
        // charcode 7751
        assert_true(is_lowercase('ṇ'))
        // charcode 7753
        assert_true(is_lowercase('ṉ'))
        // charcode 7755
        assert_true(is_lowercase('ṋ'))
        // charcode 7757
        assert_true(is_lowercase('ṍ'))
        // charcode 7759
        assert_true(is_lowercase('ṏ'))
        // charcode 7761
        assert_true(is_lowercase('ṑ'))
        // charcode 7763
        assert_true(is_lowercase('ṓ'))
        // charcode 7765
        assert_true(is_lowercase('ṕ'))
        // charcode 7767
        assert_true(is_lowercase('ṗ'))
        // charcode 7769
        assert_true(is_lowercase('ṙ'))
        // charcode 7771
        assert_true(is_lowercase('ṛ'))
        // charcode 7773
        assert_true(is_lowercase('ṝ'))
        // charcode 7775
        assert_true(is_lowercase('ṟ'))
        // charcode 7777
        assert_true(is_lowercase('ṡ'))
        // charcode 7779
        assert_true(is_lowercase('ṣ'))
        // charcode 7781
        assert_true(is_lowercase('ṥ'))
        // charcode 7783
        assert_true(is_lowercase('ṧ'))
        // charcode 7785
        assert_true(is_lowercase('ṩ'))
        // charcode 7787
        assert_true(is_lowercase('ṫ'))
        // charcode 7789
        assert_true(is_lowercase('ṭ'))
        // charcode 7791
        assert_true(is_lowercase('ṯ'))
        // charcode 7793
        assert_true(is_lowercase('ṱ'))
        // charcode 7795
        assert_true(is_lowercase('ṳ'))
        // charcode 7797
        assert_true(is_lowercase('ṵ'))
        // charcode 7799
        assert_true(is_lowercase('ṷ'))
        // charcode 7801
        assert_true(is_lowercase('ṹ'))
        // charcode 7803
        assert_true(is_lowercase('ṻ'))
        // charcode 7805
        assert_true(is_lowercase('ṽ'))
        // charcode 7807
        assert_true(is_lowercase('ṿ'))
        // charcode 7809
        assert_true(is_lowercase('ẁ'))
        // charcode 7811
        assert_true(is_lowercase('ẃ'))
        // charcode 7813
        assert_true(is_lowercase('ẅ'))
        // charcode 7815
        assert_true(is_lowercase('ẇ'))
        // charcode 7817
        assert_true(is_lowercase('ẉ'))
        // charcode 7819
        assert_true(is_lowercase('ẋ'))
        // charcode 7821
        assert_true(is_lowercase('ẍ'))
        // charcode 7823
        assert_true(is_lowercase('ẏ'))
        // charcode 7825
        assert_true(is_lowercase('ẑ'))
        // charcode 7827
        assert_true(is_lowercase('ẓ'))
        for chn in 7829U..<7838U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7839
        assert_true(is_lowercase('ẟ'))
        // charcode 7841
        assert_true(is_lowercase('ạ'))
        // charcode 7843
        assert_true(is_lowercase('ả'))
        // charcode 7845
        assert_true(is_lowercase('ấ'))
        // charcode 7847
        assert_true(is_lowercase('ầ'))
        // charcode 7849
        assert_true(is_lowercase('ẩ'))
        // charcode 7851
        assert_true(is_lowercase('ẫ'))
        // charcode 7853
        assert_true(is_lowercase('ậ'))
        // charcode 7855
        assert_true(is_lowercase('ắ'))
        // charcode 7857
        assert_true(is_lowercase('ằ'))
        // charcode 7859
        assert_true(is_lowercase('ẳ'))
        // charcode 7861
        assert_true(is_lowercase('ẵ'))
        // charcode 7863
        assert_true(is_lowercase('ặ'))
        // charcode 7865
        assert_true(is_lowercase('ẹ'))
        // charcode 7867
        assert_true(is_lowercase('ẻ'))
        // charcode 7869
        assert_true(is_lowercase('ẽ'))
        // charcode 7871
        assert_true(is_lowercase('ế'))
        // charcode 7873
        assert_true(is_lowercase('ề'))
        // charcode 7875
        assert_true(is_lowercase('ể'))
        // charcode 7877
        assert_true(is_lowercase('ễ'))
        // charcode 7879
        assert_true(is_lowercase('ệ'))
        // charcode 7881
        assert_true(is_lowercase('ỉ'))
        // charcode 7883
        assert_true(is_lowercase('ị'))
        // charcode 7885
        assert_true(is_lowercase('ọ'))
        // charcode 7887
        assert_true(is_lowercase('ỏ'))
        // charcode 7889
        assert_true(is_lowercase('ố'))
        // charcode 7891
        assert_true(is_lowercase('ồ'))
        // charcode 7893
        assert_true(is_lowercase('ổ'))
        // charcode 7895
        assert_true(is_lowercase('ỗ'))
        // charcode 7897
        assert_true(is_lowercase('ộ'))
        // charcode 7899
        assert_true(is_lowercase('ớ'))
        // charcode 7901
        assert_true(is_lowercase('ờ'))
        // charcode 7903
        assert_true(is_lowercase('ở'))
        // charcode 7905
        assert_true(is_lowercase('ỡ'))
        // charcode 7907
        assert_true(is_lowercase('ợ'))
        // charcode 7909
        assert_true(is_lowercase('ụ'))
        // charcode 7911
        assert_true(is_lowercase('ủ'))
        // charcode 7913
        assert_true(is_lowercase('ứ'))
        // charcode 7915
        assert_true(is_lowercase('ừ'))
        // charcode 7917
        assert_true(is_lowercase('ử'))
        // charcode 7919
        assert_true(is_lowercase('ữ'))
        // charcode 7921
        assert_true(is_lowercase('ự'))
        // charcode 7923
        assert_true(is_lowercase('ỳ'))
        // charcode 7925
        assert_true(is_lowercase('ỵ'))
        // charcode 7927
        assert_true(is_lowercase('ỷ'))
        // charcode 7929
        assert_true(is_lowercase('ỹ'))
        // charcode 7931
        assert_true(is_lowercase('ỻ'))
        // charcode 7933
        assert_true(is_lowercase('ỽ'))
        for chn in 7935U..<7944U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7952U..<7958U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7968U..<7976U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7984U..<7992U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8000U..<8006U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8016U..<8024U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8032U..<8040U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8048U..<8062U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8064U..<8072U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8080U..<8088U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8096U..<8104U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8112U..<8117U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8118U..<8120U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8126
        assert_true(is_lowercase('ι'))
        for chn in 8130U..<8133U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8134U..<8136U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8144U..<8148U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8150U..<8152U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8160U..<8168U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8178U..<8181U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8182U..<8184U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8305
        assert_true(is_lowercase('ⁱ'))
        // charcode 8319
        assert_true(is_lowercase('ⁿ'))
        for chn in 8336U..<8349U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8458
        assert_true(is_lowercase('ℊ'))
        for chn in 8462U..<8464U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8467
        assert_true(is_lowercase('ℓ'))
        // charcode 8495
        assert_true(is_lowercase('ℯ'))
        // charcode 8500
        assert_true(is_lowercase('ℴ'))
        // charcode 8505
        assert_true(is_lowercase('ℹ'))
        for chn in 8508U..<8510U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8518U..<8522U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8526
        assert_true(is_lowercase('ⅎ'))
        for chn in 8560U..<8576U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8580
        assert_true(is_lowercase('ↄ'))
        for chn in 9424U..<9450U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11312U..<11360U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11361
        assert_true(is_lowercase('ⱡ'))
        for chn in 11365U..<11367U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11368
        assert_true(is_lowercase('ⱨ'))
        // charcode 11370
        assert_true(is_lowercase('ⱪ'))
        // charcode 11372
        assert_true(is_lowercase('ⱬ'))
        // charcode 11377
        assert_true(is_lowercase('ⱱ'))
        for chn in 11379U..<11381U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11382U..<11390U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11393
        assert_true(is_lowercase('ⲁ'))
        // charcode 11395
        assert_true(is_lowercase('ⲃ'))
        // charcode 11397
        assert_true(is_lowercase('ⲅ'))
        // charcode 11399
        assert_true(is_lowercase('ⲇ'))
        // charcode 11401
        assert_true(is_lowercase('ⲉ'))
        // charcode 11403
        assert_true(is_lowercase('ⲋ'))
        // charcode 11405
        assert_true(is_lowercase('ⲍ'))
        // charcode 11407
        assert_true(is_lowercase('ⲏ'))
        // charcode 11409
        assert_true(is_lowercase('ⲑ'))
        // charcode 11411
        assert_true(is_lowercase('ⲓ'))
        // charcode 11413
        assert_true(is_lowercase('ⲕ'))
        // charcode 11415
        assert_true(is_lowercase('ⲗ'))
        // charcode 11417
        assert_true(is_lowercase('ⲙ'))
        // charcode 11419
        assert_true(is_lowercase('ⲛ'))
        // charcode 11421
        assert_true(is_lowercase('ⲝ'))
        // charcode 11423
        assert_true(is_lowercase('ⲟ'))
        // charcode 11425
        assert_true(is_lowercase('ⲡ'))
        // charcode 11427
        assert_true(is_lowercase('ⲣ'))
        // charcode 11429
        assert_true(is_lowercase('ⲥ'))
        // charcode 11431
        assert_true(is_lowercase('ⲧ'))
        // charcode 11433
        assert_true(is_lowercase('ⲩ'))
        // charcode 11435
        assert_true(is_lowercase('ⲫ'))
        // charcode 11437
        assert_true(is_lowercase('ⲭ'))
        // charcode 11439
        assert_true(is_lowercase('ⲯ'))
        // charcode 11441
        assert_true(is_lowercase('ⲱ'))
        // charcode 11443
        assert_true(is_lowercase('ⲳ'))
        // charcode 11445
        assert_true(is_lowercase('ⲵ'))
        // charcode 11447
        assert_true(is_lowercase('ⲷ'))
        // charcode 11449
        assert_true(is_lowercase('ⲹ'))
        // charcode 11451
        assert_true(is_lowercase('ⲻ'))
        // charcode 11453
        assert_true(is_lowercase('ⲽ'))
        // charcode 11455
        assert_true(is_lowercase('ⲿ'))
        // charcode 11457
        assert_true(is_lowercase('ⳁ'))
        // charcode 11459
        assert_true(is_lowercase('ⳃ'))
        // charcode 11461
        assert_true(is_lowercase('ⳅ'))
        // charcode 11463
        assert_true(is_lowercase('ⳇ'))
        // charcode 11465
        assert_true(is_lowercase('ⳉ'))
        // charcode 11467
        assert_true(is_lowercase('ⳋ'))
        // charcode 11469
        assert_true(is_lowercase('ⳍ'))
        // charcode 11471
        assert_true(is_lowercase('ⳏ'))
        // charcode 11473
        assert_true(is_lowercase('ⳑ'))
        // charcode 11475
        assert_true(is_lowercase('ⳓ'))
        // charcode 11477
        assert_true(is_lowercase('ⳕ'))
        // charcode 11479
        assert_true(is_lowercase('ⳗ'))
        // charcode 11481
        assert_true(is_lowercase('ⳙ'))
        // charcode 11483
        assert_true(is_lowercase('ⳛ'))
        // charcode 11485
        assert_true(is_lowercase('ⳝ'))
        // charcode 11487
        assert_true(is_lowercase('ⳟ'))
        // charcode 11489
        assert_true(is_lowercase('ⳡ'))
        for chn in 11491U..<11493U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11500
        assert_true(is_lowercase('ⳬ'))
        // charcode 11502
        assert_true(is_lowercase('ⳮ'))
        // charcode 11507
        assert_true(is_lowercase('ⳳ'))
        for chn in 11520U..<11558U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11559
        assert_true(is_lowercase('ⴧ'))
        // charcode 11565
        assert_true(is_lowercase('ⴭ'))
        // charcode 42561
        assert_true(is_lowercase('ꙁ'))
        // charcode 42563
        assert_true(is_lowercase('ꙃ'))
        // charcode 42565
        assert_true(is_lowercase('ꙅ'))
        // charcode 42567
        assert_true(is_lowercase('ꙇ'))
        // charcode 42569
        assert_true(is_lowercase('ꙉ'))
        // charcode 42571
        assert_true(is_lowercase('ꙋ'))
        // charcode 42573
        assert_true(is_lowercase('ꙍ'))
        // charcode 42575
        assert_true(is_lowercase('ꙏ'))
        // charcode 42577
        assert_true(is_lowercase('ꙑ'))
        // charcode 42579
        assert_true(is_lowercase('ꙓ'))
        // charcode 42581
        assert_true(is_lowercase('ꙕ'))
        // charcode 42583
        assert_true(is_lowercase('ꙗ'))
        // charcode 42585
        assert_true(is_lowercase('ꙙ'))
        // charcode 42587
        assert_true(is_lowercase('ꙛ'))
        // charcode 42589
        assert_true(is_lowercase('ꙝ'))
        // charcode 42591
        assert_true(is_lowercase('ꙟ'))
        // charcode 42593
        assert_true(is_lowercase('ꙡ'))
        // charcode 42595
        assert_true(is_lowercase('ꙣ'))
        // charcode 42597
        assert_true(is_lowercase('ꙥ'))
        // charcode 42599
        assert_true(is_lowercase('ꙧ'))
        // charcode 42601
        assert_true(is_lowercase('ꙩ'))
        // charcode 42603
        assert_true(is_lowercase('ꙫ'))
        // charcode 42605
        assert_true(is_lowercase('ꙭ'))
        // charcode 42625
        assert_true(is_lowercase('ꚁ'))
        // charcode 42627
        assert_true(is_lowercase('ꚃ'))
        // charcode 42629
        assert_true(is_lowercase('ꚅ'))
        // charcode 42631
        assert_true(is_lowercase('ꚇ'))
        // charcode 42633
        assert_true(is_lowercase('ꚉ'))
        // charcode 42635
        assert_true(is_lowercase('ꚋ'))
        // charcode 42637
        assert_true(is_lowercase('ꚍ'))
        // charcode 42639
        assert_true(is_lowercase('ꚏ'))
        // charcode 42641
        assert_true(is_lowercase('ꚑ'))
        // charcode 42643
        assert_true(is_lowercase('ꚓ'))
        // charcode 42645
        assert_true(is_lowercase('ꚕ'))
        // charcode 42647
        assert_true(is_lowercase('ꚗ'))
        // charcode 42649
        assert_true(is_lowercase('ꚙ'))
        for chn in 42651U..<42654U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42787
        assert_true(is_lowercase('ꜣ'))
        // charcode 42789
        assert_true(is_lowercase('ꜥ'))
        // charcode 42791
        assert_true(is_lowercase('ꜧ'))
        // charcode 42793
        assert_true(is_lowercase('ꜩ'))
        // charcode 42795
        assert_true(is_lowercase('ꜫ'))
        // charcode 42797
        assert_true(is_lowercase('ꜭ'))
        for chn in 42799U..<42802U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42803
        assert_true(is_lowercase('ꜳ'))
        // charcode 42805
        assert_true(is_lowercase('ꜵ'))
        // charcode 42807
        assert_true(is_lowercase('ꜷ'))
        // charcode 42809
        assert_true(is_lowercase('ꜹ'))
        // charcode 42811
        assert_true(is_lowercase('ꜻ'))
        // charcode 42813
        assert_true(is_lowercase('ꜽ'))
        // charcode 42815
        assert_true(is_lowercase('ꜿ'))
        // charcode 42817
        assert_true(is_lowercase('ꝁ'))
        // charcode 42819
        assert_true(is_lowercase('ꝃ'))
        // charcode 42821
        assert_true(is_lowercase('ꝅ'))
        // charcode 42823
        assert_true(is_lowercase('ꝇ'))
        // charcode 42825
        assert_true(is_lowercase('ꝉ'))
        // charcode 42827
        assert_true(is_lowercase('ꝋ'))
        // charcode 42829
        assert_true(is_lowercase('ꝍ'))
        // charcode 42831
        assert_true(is_lowercase('ꝏ'))
        // charcode 42833
        assert_true(is_lowercase('ꝑ'))
        // charcode 42835
        assert_true(is_lowercase('ꝓ'))
        // charcode 42837
        assert_true(is_lowercase('ꝕ'))
        // charcode 42839
        assert_true(is_lowercase('ꝗ'))
        // charcode 42841
        assert_true(is_lowercase('ꝙ'))
        // charcode 42843
        assert_true(is_lowercase('ꝛ'))
        // charcode 42845
        assert_true(is_lowercase('ꝝ'))
        // charcode 42847
        assert_true(is_lowercase('ꝟ'))
        // charcode 42849
        assert_true(is_lowercase('ꝡ'))
        // charcode 42851
        assert_true(is_lowercase('ꝣ'))
        // charcode 42853
        assert_true(is_lowercase('ꝥ'))
        // charcode 42855
        assert_true(is_lowercase('ꝧ'))
        // charcode 42857
        assert_true(is_lowercase('ꝩ'))
        // charcode 42859
        assert_true(is_lowercase('ꝫ'))
        // charcode 42861
        assert_true(is_lowercase('ꝭ'))
        for chn in 42863U..<42873U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42874
        assert_true(is_lowercase('ꝺ'))
        // charcode 42876
        assert_true(is_lowercase('ꝼ'))
        // charcode 42879
        assert_true(is_lowercase('ꝿ'))
        // charcode 42881
        assert_true(is_lowercase('ꞁ'))
        // charcode 42883
        assert_true(is_lowercase('ꞃ'))
        // charcode 42885
        assert_true(is_lowercase('ꞅ'))
        // charcode 42887
        assert_true(is_lowercase('ꞇ'))
        // charcode 42892
        assert_true(is_lowercase('ꞌ'))
        // charcode 42894
        assert_true(is_lowercase('ꞎ'))
        // charcode 42897
        assert_true(is_lowercase('ꞑ'))
        for chn in 42899U..<42902U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42903
        assert_true(is_lowercase('ꞗ'))
        // charcode 42905
        assert_true(is_lowercase('ꞙ'))
        // charcode 42907
        assert_true(is_lowercase('ꞛ'))
        // charcode 42909
        assert_true(is_lowercase('ꞝ'))
        // charcode 42911
        assert_true(is_lowercase('ꞟ'))
        // charcode 42913
        assert_true(is_lowercase('ꞡ'))
        // charcode 42915
        assert_true(is_lowercase('ꞣ'))
        // charcode 42917
        assert_true(is_lowercase('ꞥ'))
        // charcode 42919
        assert_true(is_lowercase('ꞧ'))
        // charcode 42921
        assert_true(is_lowercase('ꞩ'))
        // charcode 42927
        assert_true(is_lowercase('ꞯ'))
        // charcode 42933
        assert_true(is_lowercase('ꞵ'))
        // charcode 42935
        assert_true(is_lowercase('ꞷ'))
        // charcode 42937
        assert_true(is_lowercase('ꞹ'))
        // charcode 42939
        assert_true(is_lowercase('ꞻ'))
        // charcode 42941
        assert_true(is_lowercase('ꞽ'))
        // charcode 42943
        assert_true(is_lowercase('ꞿ'))
        // charcode 42945
        assert_true(is_lowercase('ꟁ'))
        // charcode 42947
        assert_true(is_lowercase('ꟃ'))
        // charcode 42952
        assert_true(is_lowercase('ꟈ'))
        // charcode 42954
        assert_true(is_lowercase('ꟊ'))
        // charcode 42957
        assert_true(is_lowercase('ꟍ'))
        // charcode 42961
        assert_true(is_lowercase('ꟑ'))
        // charcode 42963
        assert_true(is_lowercase('ꟓ'))
        // charcode 42965
        assert_true(is_lowercase('ꟕ'))
        // charcode 42967
        assert_true(is_lowercase('ꟗ'))
        // charcode 42969
        assert_true(is_lowercase('ꟙ'))
        // charcode 42971
        assert_true(is_lowercase('ꟛ'))
        for chn in 42994U..<42997U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42998
        assert_true(is_lowercase('ꟶ'))
        for chn in 43000U..<43003U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43824U..<43867U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43868U..<43882U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43888U..<43968U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64256U..<64263U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64275U..<64280U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65345U..<65371U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66600U..<66640U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66776U..<66812U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66967U..<66978U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66979U..<66994U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66995U..<67002U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67003U..<67005U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 67456
        assert_true(is_lowercase('𐞀'))
        for chn in 67459U..<67462U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67463U..<67505U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67506U..<67515U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68800U..<68851U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68976U..<68998U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71872U..<71904U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93792U..<93824U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119834U..<119860U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119886U..<119893U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119894U..<119912U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119938U..<119964U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119990U..<119994U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119995
        assert_true(is_lowercase('𝒻'))
        for chn in 119997U..<120004U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120005U..<120016U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120042U..<120068U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120094U..<120120U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120146U..<120172U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120198U..<120224U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120250U..<120276U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120302U..<120328U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120354U..<120380U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120406U..<120432U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120458U..<120486U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120514U..<120539U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120540U..<120546U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120572U..<120597U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120598U..<120604U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120630U..<120655U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120656U..<120662U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120688U..<120713U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120714U..<120720U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120746U..<120771U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120772U..<120778U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120779
        assert_true(is_lowercase('𝟋'))
        for chn in 122624U..<122634U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122635U..<122655U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122661U..<122667U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122928U..<122990U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125218U..<125252U {
            ensure(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    fn lowercase_false() -> Unit!Error {
        for chn in 0U..<97U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123U..<170U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 171U..<181U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 182U..<186U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 187U..<223U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 247
        assert_false(is_lowercase('÷'))
        // charcode 256
        assert_false(is_lowercase('Ā'))
        // charcode 258
        assert_false(is_lowercase('Ă'))
        // charcode 260
        assert_false(is_lowercase('Ą'))
        // charcode 262
        assert_false(is_lowercase('Ć'))
        // charcode 264
        assert_false(is_lowercase('Ĉ'))
        // charcode 266
        assert_false(is_lowercase('Ċ'))
        // charcode 268
        assert_false(is_lowercase('Č'))
        // charcode 270
        assert_false(is_lowercase('Ď'))
        // charcode 272
        assert_false(is_lowercase('Đ'))
        // charcode 274
        assert_false(is_lowercase('Ē'))
        // charcode 276
        assert_false(is_lowercase('Ĕ'))
        // charcode 278
        assert_false(is_lowercase('Ė'))
        // charcode 280
        assert_false(is_lowercase('Ę'))
        // charcode 282
        assert_false(is_lowercase('Ě'))
        // charcode 284
        assert_false(is_lowercase('Ĝ'))
        // charcode 286
        assert_false(is_lowercase('Ğ'))
        // charcode 288
        assert_false(is_lowercase('Ġ'))
        // charcode 290
        assert_false(is_lowercase('Ģ'))
        // charcode 292
        assert_false(is_lowercase('Ĥ'))
        // charcode 294
        assert_false(is_lowercase('Ħ'))
        // charcode 296
        assert_false(is_lowercase('Ĩ'))
        // charcode 298
        assert_false(is_lowercase('Ī'))
        // charcode 300
        assert_false(is_lowercase('Ĭ'))
        // charcode 302
        assert_false(is_lowercase('Į'))
        // charcode 304
        assert_false(is_lowercase('İ'))
        // charcode 306
        assert_false(is_lowercase('Ĳ'))
        // charcode 308
        assert_false(is_lowercase('Ĵ'))
        // charcode 310
        assert_false(is_lowercase('Ķ'))
        // charcode 313
        assert_false(is_lowercase('Ĺ'))
        // charcode 315
        assert_false(is_lowercase('Ļ'))
        // charcode 317
        assert_false(is_lowercase('Ľ'))
        // charcode 319
        assert_false(is_lowercase('Ŀ'))
        // charcode 321
        assert_false(is_lowercase('Ł'))
        // charcode 323
        assert_false(is_lowercase('Ń'))
        // charcode 325
        assert_false(is_lowercase('Ņ'))
        // charcode 327
        assert_false(is_lowercase('Ň'))
        // charcode 330
        assert_false(is_lowercase('Ŋ'))
        // charcode 332
        assert_false(is_lowercase('Ō'))
        // charcode 334
        assert_false(is_lowercase('Ŏ'))
        // charcode 336
        assert_false(is_lowercase('Ő'))
        // charcode 338
        assert_false(is_lowercase('Œ'))
        // charcode 340
        assert_false(is_lowercase('Ŕ'))
        // charcode 342
        assert_false(is_lowercase('Ŗ'))
        // charcode 344
        assert_false(is_lowercase('Ř'))
        // charcode 346
        assert_false(is_lowercase('Ś'))
        // charcode 348
        assert_false(is_lowercase('Ŝ'))
        // charcode 350
        assert_false(is_lowercase('Ş'))
        // charcode 352
        assert_false(is_lowercase('Š'))
        // charcode 354
        assert_false(is_lowercase('Ţ'))
        // charcode 356
        assert_false(is_lowercase('Ť'))
        // charcode 358
        assert_false(is_lowercase('Ŧ'))
        // charcode 360
        assert_false(is_lowercase('Ũ'))
        // charcode 362
        assert_false(is_lowercase('Ū'))
        // charcode 364
        assert_false(is_lowercase('Ŭ'))
        // charcode 366
        assert_false(is_lowercase('Ů'))
        // charcode 368
        assert_false(is_lowercase('Ű'))
        // charcode 370
        assert_false(is_lowercase('Ų'))
        // charcode 372
        assert_false(is_lowercase('Ŵ'))
        // charcode 374
        assert_false(is_lowercase('Ŷ'))
        for chn in 376U..<378U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 379
        assert_false(is_lowercase('Ż'))
        // charcode 381
        assert_false(is_lowercase('Ž'))
        for chn in 385U..<387U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 388
        assert_false(is_lowercase('Ƅ'))
        for chn in 390U..<392U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 393U..<396U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 398U..<402U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 403U..<405U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 406U..<409U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 412U..<414U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 415U..<417U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 418
        assert_false(is_lowercase('Ƣ'))
        // charcode 420
        assert_false(is_lowercase('Ƥ'))
        for chn in 422U..<424U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 425
        assert_false(is_lowercase('Ʃ'))
        // charcode 428
        assert_false(is_lowercase('Ƭ'))
        for chn in 430U..<432U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 433U..<436U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 437
        assert_false(is_lowercase('Ƶ'))
        for chn in 439U..<441U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 443U..<445U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 448U..<454U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 455U..<457U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 458U..<460U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 461
        assert_false(is_lowercase('Ǎ'))
        // charcode 463
        assert_false(is_lowercase('Ǐ'))
        // charcode 465
        assert_false(is_lowercase('Ǒ'))
        // charcode 467
        assert_false(is_lowercase('Ǔ'))
        // charcode 469
        assert_false(is_lowercase('Ǖ'))
        // charcode 471
        assert_false(is_lowercase('Ǘ'))
        // charcode 473
        assert_false(is_lowercase('Ǚ'))
        // charcode 475
        assert_false(is_lowercase('Ǜ'))
        // charcode 478
        assert_false(is_lowercase('Ǟ'))
        // charcode 480
        assert_false(is_lowercase('Ǡ'))
        // charcode 482
        assert_false(is_lowercase('Ǣ'))
        // charcode 484
        assert_false(is_lowercase('Ǥ'))
        // charcode 486
        assert_false(is_lowercase('Ǧ'))
        // charcode 488
        assert_false(is_lowercase('Ǩ'))
        // charcode 490
        assert_false(is_lowercase('Ǫ'))
        // charcode 492
        assert_false(is_lowercase('Ǭ'))
        // charcode 494
        assert_false(is_lowercase('Ǯ'))
        for chn in 497U..<499U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 500
        assert_false(is_lowercase('Ǵ'))
        for chn in 502U..<505U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 506
        assert_false(is_lowercase('Ǻ'))
        // charcode 508
        assert_false(is_lowercase('Ǽ'))
        // charcode 510
        assert_false(is_lowercase('Ǿ'))
        // charcode 512
        assert_false(is_lowercase('Ȁ'))
        // charcode 514
        assert_false(is_lowercase('Ȃ'))
        // charcode 516
        assert_false(is_lowercase('Ȅ'))
        // charcode 518
        assert_false(is_lowercase('Ȇ'))
        // charcode 520
        assert_false(is_lowercase('Ȉ'))
        // charcode 522
        assert_false(is_lowercase('Ȋ'))
        // charcode 524
        assert_false(is_lowercase('Ȍ'))
        // charcode 526
        assert_false(is_lowercase('Ȏ'))
        // charcode 528
        assert_false(is_lowercase('Ȑ'))
        // charcode 530
        assert_false(is_lowercase('Ȓ'))
        // charcode 532
        assert_false(is_lowercase('Ȕ'))
        // charcode 534
        assert_false(is_lowercase('Ȗ'))
        // charcode 536
        assert_false(is_lowercase('Ș'))
        // charcode 538
        assert_false(is_lowercase('Ț'))
        // charcode 540
        assert_false(is_lowercase('Ȝ'))
        // charcode 542
        assert_false(is_lowercase('Ȟ'))
        // charcode 544
        assert_false(is_lowercase('Ƞ'))
        // charcode 546
        assert_false(is_lowercase('Ȣ'))
        // charcode 548
        assert_false(is_lowercase('Ȥ'))
        // charcode 550
        assert_false(is_lowercase('Ȧ'))
        // charcode 552
        assert_false(is_lowercase('Ȩ'))
        // charcode 554
        assert_false(is_lowercase('Ȫ'))
        // charcode 556
        assert_false(is_lowercase('Ȭ'))
        // charcode 558
        assert_false(is_lowercase('Ȯ'))
        // charcode 560
        assert_false(is_lowercase('Ȱ'))
        // charcode 562
        assert_false(is_lowercase('Ȳ'))
        for chn in 570U..<572U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 573U..<575U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 577
        assert_false(is_lowercase('Ɂ'))
        for chn in 579U..<583U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 584
        assert_false(is_lowercase('Ɉ'))
        // charcode 586
        assert_false(is_lowercase('Ɋ'))
        // charcode 588
        assert_false(is_lowercase('Ɍ'))
        // charcode 590
        assert_false(is_lowercase('Ɏ'))
        // charcode 660
        assert_false(is_lowercase('ʔ'))
        for chn in 697U..<704U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 706U..<736U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 741U..<837U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 838U..<881U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 882
        assert_false(is_lowercase('Ͳ'))
        for chn in 884U..<887U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 888U..<890U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 894U..<912U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 913U..<940U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 975
        assert_false(is_lowercase('Ϗ'))
        for chn in 978U..<981U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 984
        assert_false(is_lowercase('Ϙ'))
        // charcode 986
        assert_false(is_lowercase('Ϛ'))
        // charcode 988
        assert_false(is_lowercase('Ϝ'))
        // charcode 990
        assert_false(is_lowercase('Ϟ'))
        // charcode 992
        assert_false(is_lowercase('Ϡ'))
        // charcode 994
        assert_false(is_lowercase('Ϣ'))
        // charcode 996
        assert_false(is_lowercase('Ϥ'))
        // charcode 998
        assert_false(is_lowercase('Ϧ'))
        // charcode 1000
        assert_false(is_lowercase('Ϩ'))
        // charcode 1002
        assert_false(is_lowercase('Ϫ'))
        // charcode 1004
        assert_false(is_lowercase('Ϭ'))
        // charcode 1006
        assert_false(is_lowercase('Ϯ'))
        // charcode 1012
        assert_false(is_lowercase('ϴ'))
        for chn in 1014U..<1016U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1017U..<1019U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1021U..<1072U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1120
        assert_false(is_lowercase('Ѡ'))
        // charcode 1122
        assert_false(is_lowercase('Ѣ'))
        // charcode 1124
        assert_false(is_lowercase('Ѥ'))
        // charcode 1126
        assert_false(is_lowercase('Ѧ'))
        // charcode 1128
        assert_false(is_lowercase('Ѩ'))
        // charcode 1130
        assert_false(is_lowercase('Ѫ'))
        // charcode 1132
        assert_false(is_lowercase('Ѭ'))
        // charcode 1134
        assert_false(is_lowercase('Ѯ'))
        // charcode 1136
        assert_false(is_lowercase('Ѱ'))
        // charcode 1138
        assert_false(is_lowercase('Ѳ'))
        // charcode 1140
        assert_false(is_lowercase('Ѵ'))
        // charcode 1142
        assert_false(is_lowercase('Ѷ'))
        // charcode 1144
        assert_false(is_lowercase('Ѹ'))
        // charcode 1146
        assert_false(is_lowercase('Ѻ'))
        // charcode 1148
        assert_false(is_lowercase('Ѽ'))
        // charcode 1150
        assert_false(is_lowercase('Ѿ'))
        // charcode 1152
        assert_false(is_lowercase('Ҁ'))
        for chn in 1154U..<1163U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1164
        assert_false(is_lowercase('Ҍ'))
        // charcode 1166
        assert_false(is_lowercase('Ҏ'))
        // charcode 1168
        assert_false(is_lowercase('Ґ'))
        // charcode 1170
        assert_false(is_lowercase('Ғ'))
        // charcode 1172
        assert_false(is_lowercase('Ҕ'))
        // charcode 1174
        assert_false(is_lowercase('Җ'))
        // charcode 1176
        assert_false(is_lowercase('Ҙ'))
        // charcode 1178
        assert_false(is_lowercase('Қ'))
        // charcode 1180
        assert_false(is_lowercase('Ҝ'))
        // charcode 1182
        assert_false(is_lowercase('Ҟ'))
        // charcode 1184
        assert_false(is_lowercase('Ҡ'))
        // charcode 1186
        assert_false(is_lowercase('Ң'))
        // charcode 1188
        assert_false(is_lowercase('Ҥ'))
        // charcode 1190
        assert_false(is_lowercase('Ҧ'))
        // charcode 1192
        assert_false(is_lowercase('Ҩ'))
        // charcode 1194
        assert_false(is_lowercase('Ҫ'))
        // charcode 1196
        assert_false(is_lowercase('Ҭ'))
        // charcode 1198
        assert_false(is_lowercase('Ү'))
        // charcode 1200
        assert_false(is_lowercase('Ұ'))
        // charcode 1202
        assert_false(is_lowercase('Ҳ'))
        // charcode 1204
        assert_false(is_lowercase('Ҵ'))
        // charcode 1206
        assert_false(is_lowercase('Ҷ'))
        // charcode 1208
        assert_false(is_lowercase('Ҹ'))
        // charcode 1210
        assert_false(is_lowercase('Һ'))
        // charcode 1212
        assert_false(is_lowercase('Ҽ'))
        // charcode 1214
        assert_false(is_lowercase('Ҿ'))
        for chn in 1216U..<1218U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1219
        assert_false(is_lowercase('Ӄ'))
        // charcode 1221
        assert_false(is_lowercase('Ӆ'))
        // charcode 1223
        assert_false(is_lowercase('Ӈ'))
        // charcode 1225
        assert_false(is_lowercase('Ӊ'))
        // charcode 1227
        assert_false(is_lowercase('Ӌ'))
        // charcode 1229
        assert_false(is_lowercase('Ӎ'))
        // charcode 1232
        assert_false(is_lowercase('Ӑ'))
        // charcode 1234
        assert_false(is_lowercase('Ӓ'))
        // charcode 1236
        assert_false(is_lowercase('Ӕ'))
        // charcode 1238
        assert_false(is_lowercase('Ӗ'))
        // charcode 1240
        assert_false(is_lowercase('Ә'))
        // charcode 1242
        assert_false(is_lowercase('Ӛ'))
        // charcode 1244
        assert_false(is_lowercase('Ӝ'))
        // charcode 1246
        assert_false(is_lowercase('Ӟ'))
        // charcode 1248
        assert_false(is_lowercase('Ӡ'))
        // charcode 1250
        assert_false(is_lowercase('Ӣ'))
        // charcode 1252
        assert_false(is_lowercase('Ӥ'))
        // charcode 1254
        assert_false(is_lowercase('Ӧ'))
        // charcode 1256
        assert_false(is_lowercase('Ө'))
        // charcode 1258
        assert_false(is_lowercase('Ӫ'))
        // charcode 1260
        assert_false(is_lowercase('Ӭ'))
        // charcode 1262
        assert_false(is_lowercase('Ӯ'))
        // charcode 1264
        assert_false(is_lowercase('Ӱ'))
        // charcode 1266
        assert_false(is_lowercase('Ӳ'))
        // charcode 1268
        assert_false(is_lowercase('Ӵ'))
        // charcode 1270
        assert_false(is_lowercase('Ӷ'))
        // charcode 1272
        assert_false(is_lowercase('Ӹ'))
        // charcode 1274
        assert_false(is_lowercase('Ӻ'))
        // charcode 1276
        assert_false(is_lowercase('Ӽ'))
        // charcode 1278
        assert_false(is_lowercase('Ӿ'))
        // charcode 1280
        assert_false(is_lowercase('Ԁ'))
        // charcode 1282
        assert_false(is_lowercase('Ԃ'))
        // charcode 1284
        assert_false(is_lowercase('Ԅ'))
        // charcode 1286
        assert_false(is_lowercase('Ԇ'))
        // charcode 1288
        assert_false(is_lowercase('Ԉ'))
        // charcode 1290
        assert_false(is_lowercase('Ԋ'))
        // charcode 1292
        assert_false(is_lowercase('Ԍ'))
        // charcode 1294
        assert_false(is_lowercase('Ԏ'))
        // charcode 1296
        assert_false(is_lowercase('Ԑ'))
        // charcode 1298
        assert_false(is_lowercase('Ԓ'))
        // charcode 1300
        assert_false(is_lowercase('Ԕ'))
        // charcode 1302
        assert_false(is_lowercase('Ԗ'))
        // charcode 1304
        assert_false(is_lowercase('Ԙ'))
        // charcode 1306
        assert_false(is_lowercase('Ԛ'))
        // charcode 1308
        assert_false(is_lowercase('Ԝ'))
        // charcode 1310
        assert_false(is_lowercase('Ԟ'))
        // charcode 1312
        assert_false(is_lowercase('Ԡ'))
        // charcode 1314
        assert_false(is_lowercase('Ԣ'))
        // charcode 1316
        assert_false(is_lowercase('Ԥ'))
        // charcode 1318
        assert_false(is_lowercase('Ԧ'))
        // charcode 1320
        assert_false(is_lowercase('Ԩ'))
        // charcode 1322
        assert_false(is_lowercase('Ԫ'))
        // charcode 1324
        assert_false(is_lowercase('Ԭ'))
        // charcode 1326
        assert_false(is_lowercase('Ԯ'))
        for chn in 1328U..<1376U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1417U..<4304U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4347
        assert_false(is_lowercase('჻'))
        for chn in 4352U..<5112U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5118U..<7296U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7305
        assert_false(is_lowercase('Ᲊ'))
        for chn in 7307U..<7424U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7616U..<7681U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7682
        assert_false(is_lowercase('Ḃ'))
        // charcode 7684
        assert_false(is_lowercase('Ḅ'))
        // charcode 7686
        assert_false(is_lowercase('Ḇ'))
        // charcode 7688
        assert_false(is_lowercase('Ḉ'))
        // charcode 7690
        assert_false(is_lowercase('Ḋ'))
        // charcode 7692
        assert_false(is_lowercase('Ḍ'))
        // charcode 7694
        assert_false(is_lowercase('Ḏ'))
        // charcode 7696
        assert_false(is_lowercase('Ḑ'))
        // charcode 7698
        assert_false(is_lowercase('Ḓ'))
        // charcode 7700
        assert_false(is_lowercase('Ḕ'))
        // charcode 7702
        assert_false(is_lowercase('Ḗ'))
        // charcode 7704
        assert_false(is_lowercase('Ḙ'))
        // charcode 7706
        assert_false(is_lowercase('Ḛ'))
        // charcode 7708
        assert_false(is_lowercase('Ḝ'))
        // charcode 7710
        assert_false(is_lowercase('Ḟ'))
        // charcode 7712
        assert_false(is_lowercase('Ḡ'))
        // charcode 7714
        assert_false(is_lowercase('Ḣ'))
        // charcode 7716
        assert_false(is_lowercase('Ḥ'))
        // charcode 7718
        assert_false(is_lowercase('Ḧ'))
        // charcode 7720
        assert_false(is_lowercase('Ḩ'))
        // charcode 7722
        assert_false(is_lowercase('Ḫ'))
        // charcode 7724
        assert_false(is_lowercase('Ḭ'))
        // charcode 7726
        assert_false(is_lowercase('Ḯ'))
        // charcode 7728
        assert_false(is_lowercase('Ḱ'))
        // charcode 7730
        assert_false(is_lowercase('Ḳ'))
        // charcode 7732
        assert_false(is_lowercase('Ḵ'))
        // charcode 7734
        assert_false(is_lowercase('Ḷ'))
        // charcode 7736
        assert_false(is_lowercase('Ḹ'))
        // charcode 7738
        assert_false(is_lowercase('Ḻ'))
        // charcode 7740
        assert_false(is_lowercase('Ḽ'))
        // charcode 7742
        assert_false(is_lowercase('Ḿ'))
        // charcode 7744
        assert_false(is_lowercase('Ṁ'))
        // charcode 7746
        assert_false(is_lowercase('Ṃ'))
        // charcode 7748
        assert_false(is_lowercase('Ṅ'))
        // charcode 7750
        assert_false(is_lowercase('Ṇ'))
        // charcode 7752
        assert_false(is_lowercase('Ṉ'))
        // charcode 7754
        assert_false(is_lowercase('Ṋ'))
        // charcode 7756
        assert_false(is_lowercase('Ṍ'))
        // charcode 7758
        assert_false(is_lowercase('Ṏ'))
        // charcode 7760
        assert_false(is_lowercase('Ṑ'))
        // charcode 7762
        assert_false(is_lowercase('Ṓ'))
        // charcode 7764
        assert_false(is_lowercase('Ṕ'))
        // charcode 7766
        assert_false(is_lowercase('Ṗ'))
        // charcode 7768
        assert_false(is_lowercase('Ṙ'))
        // charcode 7770
        assert_false(is_lowercase('Ṛ'))
        // charcode 7772
        assert_false(is_lowercase('Ṝ'))
        // charcode 7774
        assert_false(is_lowercase('Ṟ'))
        // charcode 7776
        assert_false(is_lowercase('Ṡ'))
        // charcode 7778
        assert_false(is_lowercase('Ṣ'))
        // charcode 7780
        assert_false(is_lowercase('Ṥ'))
        // charcode 7782
        assert_false(is_lowercase('Ṧ'))
        // charcode 7784
        assert_false(is_lowercase('Ṩ'))
        // charcode 7786
        assert_false(is_lowercase('Ṫ'))
        // charcode 7788
        assert_false(is_lowercase('Ṭ'))
        // charcode 7790
        assert_false(is_lowercase('Ṯ'))
        // charcode 7792
        assert_false(is_lowercase('Ṱ'))
        // charcode 7794
        assert_false(is_lowercase('Ṳ'))
        // charcode 7796
        assert_false(is_lowercase('Ṵ'))
        // charcode 7798
        assert_false(is_lowercase('Ṷ'))
        // charcode 7800
        assert_false(is_lowercase('Ṹ'))
        // charcode 7802
        assert_false(is_lowercase('Ṻ'))
        // charcode 7804
        assert_false(is_lowercase('Ṽ'))
        // charcode 7806
        assert_false(is_lowercase('Ṿ'))
        // charcode 7808
        assert_false(is_lowercase('Ẁ'))
        // charcode 7810
        assert_false(is_lowercase('Ẃ'))
        // charcode 7812
        assert_false(is_lowercase('Ẅ'))
        // charcode 7814
        assert_false(is_lowercase('Ẇ'))
        // charcode 7816
        assert_false(is_lowercase('Ẉ'))
        // charcode 7818
        assert_false(is_lowercase('Ẋ'))
        // charcode 7820
        assert_false(is_lowercase('Ẍ'))
        // charcode 7822
        assert_false(is_lowercase('Ẏ'))
        // charcode 7824
        assert_false(is_lowercase('Ẑ'))
        // charcode 7826
        assert_false(is_lowercase('Ẓ'))
        // charcode 7828
        assert_false(is_lowercase('Ẕ'))
        // charcode 7838
        assert_false(is_lowercase('ẞ'))
        // charcode 7840
        assert_false(is_lowercase('Ạ'))
        // charcode 7842
        assert_false(is_lowercase('Ả'))
        // charcode 7844
        assert_false(is_lowercase('Ấ'))
        // charcode 7846
        assert_false(is_lowercase('Ầ'))
        // charcode 7848
        assert_false(is_lowercase('Ẩ'))
        // charcode 7850
        assert_false(is_lowercase('Ẫ'))
        // charcode 7852
        assert_false(is_lowercase('Ậ'))
        // charcode 7854
        assert_false(is_lowercase('Ắ'))
        // charcode 7856
        assert_false(is_lowercase('Ằ'))
        // charcode 7858
        assert_false(is_lowercase('Ẳ'))
        // charcode 7860
        assert_false(is_lowercase('Ẵ'))
        // charcode 7862
        assert_false(is_lowercase('Ặ'))
        // charcode 7864
        assert_false(is_lowercase('Ẹ'))
        // charcode 7866
        assert_false(is_lowercase('Ẻ'))
        // charcode 7868
        assert_false(is_lowercase('Ẽ'))
        // charcode 7870
        assert_false(is_lowercase('Ế'))
        // charcode 7872
        assert_false(is_lowercase('Ề'))
        // charcode 7874
        assert_false(is_lowercase('Ể'))
        // charcode 7876
        assert_false(is_lowercase('Ễ'))
        // charcode 7878
        assert_false(is_lowercase('Ệ'))
        // charcode 7880
        assert_false(is_lowercase('Ỉ'))
        // charcode 7882
        assert_false(is_lowercase('Ị'))
        // charcode 7884
        assert_false(is_lowercase('Ọ'))
        // charcode 7886
        assert_false(is_lowercase('Ỏ'))
        // charcode 7888
        assert_false(is_lowercase('Ố'))
        // charcode 7890
        assert_false(is_lowercase('Ồ'))
        // charcode 7892
        assert_false(is_lowercase('Ổ'))
        // charcode 7894
        assert_false(is_lowercase('Ỗ'))
        // charcode 7896
        assert_false(is_lowercase('Ộ'))
        // charcode 7898
        assert_false(is_lowercase('Ớ'))
        // charcode 7900
        assert_false(is_lowercase('Ờ'))
        // charcode 7902
        assert_false(is_lowercase('Ở'))
        // charcode 7904
        assert_false(is_lowercase('Ỡ'))
        // charcode 7906
        assert_false(is_lowercase('Ợ'))
        // charcode 7908
        assert_false(is_lowercase('Ụ'))
        // charcode 7910
        assert_false(is_lowercase('Ủ'))
        // charcode 7912
        assert_false(is_lowercase('Ứ'))
        // charcode 7914
        assert_false(is_lowercase('Ừ'))
        // charcode 7916
        assert_false(is_lowercase('Ử'))
        // charcode 7918
        assert_false(is_lowercase('Ữ'))
        // charcode 7920
        assert_false(is_lowercase('Ự'))
        // charcode 7922
        assert_false(is_lowercase('Ỳ'))
        // charcode 7924
        assert_false(is_lowercase('Ỵ'))
        // charcode 7926
        assert_false(is_lowercase('Ỷ'))
        // charcode 7928
        assert_false(is_lowercase('Ỹ'))
        // charcode 7930
        assert_false(is_lowercase('Ỻ'))
        // charcode 7932
        assert_false(is_lowercase('Ỽ'))
        // charcode 7934
        assert_false(is_lowercase('Ỿ'))
        for chn in 7944U..<7952U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7958U..<7968U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7976U..<7984U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7992U..<8000U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8006U..<8016U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8024U..<8032U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8040U..<8048U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8062U..<8064U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8072U..<8080U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8088U..<8096U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8104U..<8112U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8117
        assert_false(is_lowercase('\u{1fb5}'))
        for chn in 8120U..<8126U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8127U..<8130U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8133
        assert_false(is_lowercase('\u{1fc5}'))
        for chn in 8136U..<8144U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8148U..<8150U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8152U..<8160U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8168U..<8178U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8181
        assert_false(is_lowercase('\u{1ff5}'))
        for chn in 8184U..<8305U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8306U..<8319U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8320U..<8336U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8349U..<8458U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8459U..<8462U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8464U..<8467U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8468U..<8495U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8496U..<8500U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8501U..<8505U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8506U..<8508U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8510U..<8518U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8522U..<8526U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8527U..<8560U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8576U..<8580U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8581U..<9424U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 9450U..<11312U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11360
        assert_false(is_lowercase('Ⱡ'))
        for chn in 11362U..<11365U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11367
        assert_false(is_lowercase('Ⱨ'))
        // charcode 11369
        assert_false(is_lowercase('Ⱪ'))
        // charcode 11371
        assert_false(is_lowercase('Ⱬ'))
        for chn in 11373U..<11377U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11378
        assert_false(is_lowercase('Ⱳ'))
        // charcode 11381
        assert_false(is_lowercase('Ⱶ'))
        for chn in 11390U..<11393U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11394
        assert_false(is_lowercase('Ⲃ'))
        // charcode 11396
        assert_false(is_lowercase('Ⲅ'))
        // charcode 11398
        assert_false(is_lowercase('Ⲇ'))
        // charcode 11400
        assert_false(is_lowercase('Ⲉ'))
        // charcode 11402
        assert_false(is_lowercase('Ⲋ'))
        // charcode 11404
        assert_false(is_lowercase('Ⲍ'))
        // charcode 11406
        assert_false(is_lowercase('Ⲏ'))
        // charcode 11408
        assert_false(is_lowercase('Ⲑ'))
        // charcode 11410
        assert_false(is_lowercase('Ⲓ'))
        // charcode 11412
        assert_false(is_lowercase('Ⲕ'))
        // charcode 11414
        assert_false(is_lowercase('Ⲗ'))
        // charcode 11416
        assert_false(is_lowercase('Ⲙ'))
        // charcode 11418
        assert_false(is_lowercase('Ⲛ'))
        // charcode 11420
        assert_false(is_lowercase('Ⲝ'))
        // charcode 11422
        assert_false(is_lowercase('Ⲟ'))
        // charcode 11424
        assert_false(is_lowercase('Ⲡ'))
        // charcode 11426
        assert_false(is_lowercase('Ⲣ'))
        // charcode 11428
        assert_false(is_lowercase('Ⲥ'))
        // charcode 11430
        assert_false(is_lowercase('Ⲧ'))
        // charcode 11432
        assert_false(is_lowercase('Ⲩ'))
        // charcode 11434
        assert_false(is_lowercase('Ⲫ'))
        // charcode 11436
        assert_false(is_lowercase('Ⲭ'))
        // charcode 11438
        assert_false(is_lowercase('Ⲯ'))
        // charcode 11440
        assert_false(is_lowercase('Ⲱ'))
        // charcode 11442
        assert_false(is_lowercase('Ⲳ'))
        // charcode 11444
        assert_false(is_lowercase('Ⲵ'))
        // charcode 11446
        assert_false(is_lowercase('Ⲷ'))
        // charcode 11448
        assert_false(is_lowercase('Ⲹ'))
        // charcode 11450
        assert_false(is_lowercase('Ⲻ'))
        // charcode 11452
        assert_false(is_lowercase('Ⲽ'))
        // charcode 11454
        assert_false(is_lowercase('Ⲿ'))
        // charcode 11456
        assert_false(is_lowercase('Ⳁ'))
        // charcode 11458
        assert_false(is_lowercase('Ⳃ'))
        // charcode 11460
        assert_false(is_lowercase('Ⳅ'))
        // charcode 11462
        assert_false(is_lowercase('Ⳇ'))
        // charcode 11464
        assert_false(is_lowercase('Ⳉ'))
        // charcode 11466
        assert_false(is_lowercase('Ⳋ'))
        // charcode 11468
        assert_false(is_lowercase('Ⳍ'))
        // charcode 11470
        assert_false(is_lowercase('Ⳏ'))
        // charcode 11472
        assert_false(is_lowercase('Ⳑ'))
        // charcode 11474
        assert_false(is_lowercase('Ⳓ'))
        // charcode 11476
        assert_false(is_lowercase('Ⳕ'))
        // charcode 11478
        assert_false(is_lowercase('Ⳗ'))
        // charcode 11480
        assert_false(is_lowercase('Ⳙ'))
        // charcode 11482
        assert_false(is_lowercase('Ⳛ'))
        // charcode 11484
        assert_false(is_lowercase('Ⳝ'))
        // charcode 11486
        assert_false(is_lowercase('Ⳟ'))
        // charcode 11488
        assert_false(is_lowercase('Ⳡ'))
        // charcode 11490
        assert_false(is_lowercase('Ⳣ'))
        for chn in 11493U..<11500U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11501
        assert_false(is_lowercase('Ⳮ'))
        for chn in 11503U..<11507U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11508U..<11520U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11558
        assert_false(is_lowercase('\u{2d26}'))
        for chn in 11560U..<11565U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11566U..<42561U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42562
        assert_false(is_lowercase('Ꙃ'))
        // charcode 42564
        assert_false(is_lowercase('Ꙅ'))
        // charcode 42566
        assert_false(is_lowercase('Ꙇ'))
        // charcode 42568
        assert_false(is_lowercase('Ꙉ'))
        // charcode 42570
        assert_false(is_lowercase('Ꙋ'))
        // charcode 42572
        assert_false(is_lowercase('Ꙍ'))
        // charcode 42574
        assert_false(is_lowercase('Ꙏ'))
        // charcode 42576
        assert_false(is_lowercase('Ꙑ'))
        // charcode 42578
        assert_false(is_lowercase('Ꙓ'))
        // charcode 42580
        assert_false(is_lowercase('Ꙕ'))
        // charcode 42582
        assert_false(is_lowercase('Ꙗ'))
        // charcode 42584
        assert_false(is_lowercase('Ꙙ'))
        // charcode 42586
        assert_false(is_lowercase('Ꙛ'))
        // charcode 42588
        assert_false(is_lowercase('Ꙝ'))
        // charcode 42590
        assert_false(is_lowercase('Ꙟ'))
        // charcode 42592
        assert_false(is_lowercase('Ꙡ'))
        // charcode 42594
        assert_false(is_lowercase('Ꙣ'))
        // charcode 42596
        assert_false(is_lowercase('Ꙥ'))
        // charcode 42598
        assert_false(is_lowercase('Ꙧ'))
        // charcode 42600
        assert_false(is_lowercase('Ꙩ'))
        // charcode 42602
        assert_false(is_lowercase('Ꙫ'))
        // charcode 42604
        assert_false(is_lowercase('Ꙭ'))
        for chn in 42606U..<42625U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42626
        assert_false(is_lowercase('Ꚃ'))
        // charcode 42628
        assert_false(is_lowercase('Ꚅ'))
        // charcode 42630
        assert_false(is_lowercase('Ꚇ'))
        // charcode 42632
        assert_false(is_lowercase('Ꚉ'))
        // charcode 42634
        assert_false(is_lowercase('Ꚋ'))
        // charcode 42636
        assert_false(is_lowercase('Ꚍ'))
        // charcode 42638
        assert_false(is_lowercase('Ꚏ'))
        // charcode 42640
        assert_false(is_lowercase('Ꚑ'))
        // charcode 42642
        assert_false(is_lowercase('Ꚓ'))
        // charcode 42644
        assert_false(is_lowercase('Ꚕ'))
        // charcode 42646
        assert_false(is_lowercase('Ꚗ'))
        // charcode 42648
        assert_false(is_lowercase('Ꚙ'))
        // charcode 42650
        assert_false(is_lowercase('Ꚛ'))
        for chn in 42654U..<42787U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42788
        assert_false(is_lowercase('Ꜥ'))
        // charcode 42790
        assert_false(is_lowercase('Ꜧ'))
        // charcode 42792
        assert_false(is_lowercase('Ꜩ'))
        // charcode 42794
        assert_false(is_lowercase('Ꜫ'))
        // charcode 42796
        assert_false(is_lowercase('Ꜭ'))
        // charcode 42798
        assert_false(is_lowercase('Ꜯ'))
        // charcode 42802
        assert_false(is_lowercase('Ꜳ'))
        // charcode 42804
        assert_false(is_lowercase('Ꜵ'))
        // charcode 42806
        assert_false(is_lowercase('Ꜷ'))
        // charcode 42808
        assert_false(is_lowercase('Ꜹ'))
        // charcode 42810
        assert_false(is_lowercase('Ꜻ'))
        // charcode 42812
        assert_false(is_lowercase('Ꜽ'))
        // charcode 42814
        assert_false(is_lowercase('Ꜿ'))
        // charcode 42816
        assert_false(is_lowercase('Ꝁ'))
        // charcode 42818
        assert_false(is_lowercase('Ꝃ'))
        // charcode 42820
        assert_false(is_lowercase('Ꝅ'))
        // charcode 42822
        assert_false(is_lowercase('Ꝇ'))
        // charcode 42824
        assert_false(is_lowercase('Ꝉ'))
        // charcode 42826
        assert_false(is_lowercase('Ꝋ'))
        // charcode 42828
        assert_false(is_lowercase('Ꝍ'))
        // charcode 42830
        assert_false(is_lowercase('Ꝏ'))
        // charcode 42832
        assert_false(is_lowercase('Ꝑ'))
        // charcode 42834
        assert_false(is_lowercase('Ꝓ'))
        // charcode 42836
        assert_false(is_lowercase('Ꝕ'))
        // charcode 42838
        assert_false(is_lowercase('Ꝗ'))
        // charcode 42840
        assert_false(is_lowercase('Ꝙ'))
        // charcode 42842
        assert_false(is_lowercase('Ꝛ'))
        // charcode 42844
        assert_false(is_lowercase('Ꝝ'))
        // charcode 42846
        assert_false(is_lowercase('Ꝟ'))
        // charcode 42848
        assert_false(is_lowercase('Ꝡ'))
        // charcode 42850
        assert_false(is_lowercase('Ꝣ'))
        // charcode 42852
        assert_false(is_lowercase('Ꝥ'))
        // charcode 42854
        assert_false(is_lowercase('Ꝧ'))
        // charcode 42856
        assert_false(is_lowercase('Ꝩ'))
        // charcode 42858
        assert_false(is_lowercase('Ꝫ'))
        // charcode 42860
        assert_false(is_lowercase('Ꝭ'))
        // charcode 42862
        assert_false(is_lowercase('Ꝯ'))
        // charcode 42873
        assert_false(is_lowercase('Ꝺ'))
        // charcode 42875
        assert_false(is_lowercase('Ꝼ'))
        for chn in 42877U..<42879U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42880
        assert_false(is_lowercase('Ꞁ'))
        // charcode 42882
        assert_false(is_lowercase('Ꞃ'))
        // charcode 42884
        assert_false(is_lowercase('Ꞅ'))
        // charcode 42886
        assert_false(is_lowercase('Ꞇ'))
        for chn in 42888U..<42892U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42893
        assert_false(is_lowercase('Ɥ'))
        for chn in 42895U..<42897U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42898
        assert_false(is_lowercase('Ꞓ'))
        // charcode 42902
        assert_false(is_lowercase('Ꞗ'))
        // charcode 42904
        assert_false(is_lowercase('Ꞙ'))
        // charcode 42906
        assert_false(is_lowercase('Ꞛ'))
        // charcode 42908
        assert_false(is_lowercase('Ꞝ'))
        // charcode 42910
        assert_false(is_lowercase('Ꞟ'))
        // charcode 42912
        assert_false(is_lowercase('Ꞡ'))
        // charcode 42914
        assert_false(is_lowercase('Ꞣ'))
        // charcode 42916
        assert_false(is_lowercase('Ꞥ'))
        // charcode 42918
        assert_false(is_lowercase('Ꞧ'))
        // charcode 42920
        assert_false(is_lowercase('Ꞩ'))
        for chn in 42922U..<42927U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42928U..<42933U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42934
        assert_false(is_lowercase('Ꞷ'))
        // charcode 42936
        assert_false(is_lowercase('Ꞹ'))
        // charcode 42938
        assert_false(is_lowercase('Ꞻ'))
        // charcode 42940
        assert_false(is_lowercase('Ꞽ'))
        // charcode 42942
        assert_false(is_lowercase('Ꞿ'))
        // charcode 42944
        assert_false(is_lowercase('Ꟁ'))
        // charcode 42946
        assert_false(is_lowercase('Ꟃ'))
        for chn in 42948U..<42952U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42953
        assert_false(is_lowercase('Ꟊ'))
        for chn in 42955U..<42957U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42958U..<42961U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42962
        assert_false(is_lowercase('\u{a7d2}'))
        // charcode 42964
        assert_false(is_lowercase('\u{a7d4}'))
        // charcode 42966
        assert_false(is_lowercase('Ꟗ'))
        // charcode 42968
        assert_false(is_lowercase('Ꟙ'))
        // charcode 42970
        assert_false(is_lowercase('Ꟛ'))
        for chn in 42972U..<42994U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42997
        assert_false(is_lowercase('Ꟶ'))
        // charcode 42999
        assert_false(is_lowercase('ꟷ'))
        for chn in 43003U..<43824U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 43867
        assert_false(is_lowercase('꭛'))
        for chn in 43882U..<43888U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43968U..<55296U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 57344U..<64256U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64263U..<64275U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 64280U..<65345U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65371U..<66600U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66640U..<66776U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66812U..<66967U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 66978
        assert_false(is_lowercase('\u{105a2}'))
        // charcode 66994
        assert_false(is_lowercase('\u{105b2}'))
        // charcode 67002
        assert_false(is_lowercase('\u{105ba}'))
        for chn in 67005U..<67456U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67457U..<67459U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 67462
        assert_false(is_lowercase('\u{10786}'))
        // charcode 67505
        assert_false(is_lowercase('\u{107b1}'))
        for chn in 67515U..<68800U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68851U..<68976U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68998U..<71872U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71904U..<93792U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93824U..<119834U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119860U..<119886U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119893
        assert_false(is_lowercase('\u{1d455}'))
        for chn in 119912U..<119938U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119964U..<119990U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119994
        assert_false(is_lowercase('\u{1d4ba}'))
        // charcode 119996
        assert_false(is_lowercase('\u{1d4bc}'))
        // charcode 120004
        assert_false(is_lowercase('\u{1d4c4}'))
        for chn in 120016U..<120042U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120068U..<120094U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120120U..<120146U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120172U..<120198U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120224U..<120250U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120276U..<120302U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120328U..<120354U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120380U..<120406U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120432U..<120458U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120486U..<120514U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120539
        assert_false(is_lowercase('𝛛'))
        for chn in 120546U..<120572U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120597
        assert_false(is_lowercase('𝜕'))
        for chn in 120604U..<120630U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120655
        assert_false(is_lowercase('𝝏'))
        for chn in 120662U..<120688U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120713
        assert_false(is_lowercase('𝞉'))
        for chn in 120720U..<120746U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120771
        assert_false(is_lowercase('𝟃'))
        // charcode 120778
        assert_false(is_lowercase('𝟊'))
        for chn in 120780U..<122624U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 122634
        assert_false(is_lowercase('𝼊'))
        for chn in 122655U..<122661U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122667U..<122928U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 122990U..<125218U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125252U..<1114111U {
            ensure_not(is_lowercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    lowercase_true();
    lowercase_false();

    fn n_true() -> Unit!Error {
        for chn in 48U..<58U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 178U..<180U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 185
        assert_true(is_n('¹'))
        for chn in 188U..<191U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1632U..<1642U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1776U..<1786U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1984U..<1994U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2406U..<2416U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2534U..<2544U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2548U..<2554U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2662U..<2672U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2790U..<2800U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2918U..<2928U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2930U..<2936U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3046U..<3059U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3174U..<3184U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3192U..<3199U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3302U..<3312U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3416U..<3423U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3430U..<3449U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3558U..<3568U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3664U..<3674U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3792U..<3802U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3872U..<3892U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4160U..<4170U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4240U..<4250U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4969U..<4989U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5870U..<5873U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6112U..<6122U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6128U..<6138U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6160U..<6170U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6470U..<6480U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6608U..<6619U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6784U..<6794U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6800U..<6810U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6992U..<7002U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7088U..<7098U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7232U..<7242U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7248U..<7258U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8304
        assert_true(is_n('⁰'))
        for chn in 8308U..<8314U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8320U..<8330U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8528U..<8579U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8581U..<8586U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 9312U..<9372U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 9450U..<9472U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 10102U..<10132U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11517
        assert_true(is_n('⳽'))
        // charcode 12295
        assert_true(is_n('〇'))
        for chn in 12321U..<12330U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12344U..<12347U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12690U..<12694U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12832U..<12842U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12872U..<12880U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12881U..<12896U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12928U..<12938U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12977U..<12992U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42528U..<42538U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42726U..<42736U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43056U..<43062U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43216U..<43226U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43264U..<43274U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43472U..<43482U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43504U..<43514U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43600U..<43610U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 44016U..<44026U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65296U..<65306U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65799U..<65844U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65856U..<65913U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65930U..<65932U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66273U..<66300U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66336U..<66340U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 66369
        assert_true(is_n('𐍁'))
        // charcode 66378
        assert_true(is_n('𐍊'))
        for chn in 66513U..<66518U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66720U..<66730U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67672U..<67680U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67705U..<67712U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67751U..<67760U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67835U..<67840U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67862U..<67868U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68028U..<68030U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68032U..<68048U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68050U..<68096U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68160U..<68169U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68221U..<68223U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68253U..<68256U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68331U..<68336U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68440U..<68448U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68472U..<68480U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68521U..<68528U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68858U..<68864U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68912U..<68922U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68928U..<68938U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69216U..<69247U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69405U..<69415U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69457U..<69461U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69573U..<69580U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69714U..<69744U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69872U..<69882U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69942U..<69952U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70096U..<70106U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70113U..<70133U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70384U..<70394U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70736U..<70746U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70864U..<70874U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71248U..<71258U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71360U..<71370U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71376U..<71396U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71472U..<71484U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71904U..<71923U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72016U..<72026U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72688U..<72698U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72784U..<72813U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73040U..<73050U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73120U..<73130U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73552U..<73562U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73664U..<73685U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 74752U..<74863U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 90416U..<90426U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92768U..<92778U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92864U..<92874U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93008U..<93018U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93019U..<93026U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93552U..<93562U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93824U..<93847U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 118000U..<118010U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119488U..<119508U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119520U..<119540U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119648U..<119673U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120782U..<120832U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123200U..<123210U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123632U..<123642U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124144U..<124154U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124401U..<124411U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125127U..<125136U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125264U..<125274U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126065U..<126124U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126125U..<126128U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126129U..<126133U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126209U..<126254U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 126255U..<126270U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127232U..<127245U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 130032U..<130042U {
            ensure(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    fn n_false() -> Unit!Error {
        for chn in 0U..<48U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 58U..<178U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 180U..<185U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 186U..<188U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 191U..<1632U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1642U..<1776U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1786U..<1984U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1994U..<2406U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2416U..<2534U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2544U..<2548U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2554U..<2662U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2672U..<2790U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2800U..<2918U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2928U..<2930U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 2936U..<3046U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3059U..<3174U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3184U..<3192U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3199U..<3302U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3312U..<3416U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3423U..<3430U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3449U..<3558U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3568U..<3664U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3674U..<3792U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3802U..<3872U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 3892U..<4160U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4170U..<4240U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4250U..<4969U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4989U..<5870U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5873U..<6112U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6122U..<6128U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6138U..<6160U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6170U..<6470U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6480U..<6608U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6619U..<6784U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6794U..<6800U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 6810U..<6992U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7002U..<7088U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7098U..<7232U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7242U..<7248U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7258U..<8304U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8305U..<8308U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8314U..<8320U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8330U..<8528U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8579U..<8581U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8586U..<9312U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 9372U..<9450U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 9472U..<10102U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 10132U..<11517U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11518U..<12295U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12296U..<12321U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12330U..<12344U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12347U..<12690U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12694U..<12832U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12842U..<12872U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 12880
        assert_false(is_n('㉐'))
        for chn in 12896U..<12928U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12938U..<12977U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12992U..<42528U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42538U..<42726U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42736U..<43056U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43062U..<43216U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43226U..<43264U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43274U..<43472U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43482U..<43504U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43514U..<43600U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 43610U..<44016U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 44026U..<55296U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 57344U..<65296U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65306U..<65799U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65844U..<65856U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65913U..<65930U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65932U..<66273U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66300U..<66336U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66340U..<66369U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66370U..<66378U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66379U..<66513U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66518U..<66720U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66730U..<67672U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67680U..<67705U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67712U..<67751U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67760U..<67835U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67840U..<67862U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 67868U..<68028U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68030U..<68032U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68048U..<68050U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68096U..<68160U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68169U..<68221U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68223U..<68253U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68256U..<68331U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68336U..<68440U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68448U..<68472U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68480U..<68521U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68528U..<68858U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68864U..<68912U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68922U..<68928U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68938U..<69216U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69247U..<69405U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69415U..<69457U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69461U..<69573U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69580U..<69714U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69744U..<69872U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69882U..<69942U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 69952U..<70096U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70106U..<70113U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70133U..<70384U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70394U..<70736U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70746U..<70864U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 70874U..<71248U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71258U..<71360U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71370U..<71376U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71396U..<71472U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71484U..<71904U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71923U..<72016U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72026U..<72688U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72698U..<72784U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 72813U..<73040U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73050U..<73120U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73130U..<73552U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73562U..<73664U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 73685U..<74752U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 74863U..<90416U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 90426U..<92768U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92778U..<92864U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 92874U..<93008U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 93018
        assert_false(is_n('\u{16b5a}'))
        for chn in 93026U..<93552U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93562U..<93824U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93847U..<118000U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 118010U..<119488U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119508U..<119520U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119540U..<119648U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119673U..<120782U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120832U..<123200U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123210U..<123632U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 123642U..<124144U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124154U..<124401U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 124411U..<125127U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125136U..<125264U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125274U..<126065U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 126124
        assert_false(is_n('𞲬'))
        // charcode 126128
        assert_false(is_n('𞲰'))
        for chn in 126133U..<126209U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 126254
        assert_false(is_n('𞴮'))
        for chn in 126270U..<127232U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127245U..<130032U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 130042U..<1114111U {
            ensure_not(is_n(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    n_true();
    n_false();

    fn uppercase_true() -> Unit!Error {
        for chn in 65U..<91U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 192U..<215U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 216U..<223U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 256
        assert_true(is_uppercase('Ā'))
        // charcode 258
        assert_true(is_uppercase('Ă'))
        // charcode 260
        assert_true(is_uppercase('Ą'))
        // charcode 262
        assert_true(is_uppercase('Ć'))
        // charcode 264
        assert_true(is_uppercase('Ĉ'))
        // charcode 266
        assert_true(is_uppercase('Ċ'))
        // charcode 268
        assert_true(is_uppercase('Č'))
        // charcode 270
        assert_true(is_uppercase('Ď'))
        // charcode 272
        assert_true(is_uppercase('Đ'))
        // charcode 274
        assert_true(is_uppercase('Ē'))
        // charcode 276
        assert_true(is_uppercase('Ĕ'))
        // charcode 278
        assert_true(is_uppercase('Ė'))
        // charcode 280
        assert_true(is_uppercase('Ę'))
        // charcode 282
        assert_true(is_uppercase('Ě'))
        // charcode 284
        assert_true(is_uppercase('Ĝ'))
        // charcode 286
        assert_true(is_uppercase('Ğ'))
        // charcode 288
        assert_true(is_uppercase('Ġ'))
        // charcode 290
        assert_true(is_uppercase('Ģ'))
        // charcode 292
        assert_true(is_uppercase('Ĥ'))
        // charcode 294
        assert_true(is_uppercase('Ħ'))
        // charcode 296
        assert_true(is_uppercase('Ĩ'))
        // charcode 298
        assert_true(is_uppercase('Ī'))
        // charcode 300
        assert_true(is_uppercase('Ĭ'))
        // charcode 302
        assert_true(is_uppercase('Į'))
        // charcode 304
        assert_true(is_uppercase('İ'))
        // charcode 306
        assert_true(is_uppercase('Ĳ'))
        // charcode 308
        assert_true(is_uppercase('Ĵ'))
        // charcode 310
        assert_true(is_uppercase('Ķ'))
        // charcode 313
        assert_true(is_uppercase('Ĺ'))
        // charcode 315
        assert_true(is_uppercase('Ļ'))
        // charcode 317
        assert_true(is_uppercase('Ľ'))
        // charcode 319
        assert_true(is_uppercase('Ŀ'))
        // charcode 321
        assert_true(is_uppercase('Ł'))
        // charcode 323
        assert_true(is_uppercase('Ń'))
        // charcode 325
        assert_true(is_uppercase('Ņ'))
        // charcode 327
        assert_true(is_uppercase('Ň'))
        // charcode 330
        assert_true(is_uppercase('Ŋ'))
        // charcode 332
        assert_true(is_uppercase('Ō'))
        // charcode 334
        assert_true(is_uppercase('Ŏ'))
        // charcode 336
        assert_true(is_uppercase('Ő'))
        // charcode 338
        assert_true(is_uppercase('Œ'))
        // charcode 340
        assert_true(is_uppercase('Ŕ'))
        // charcode 342
        assert_true(is_uppercase('Ŗ'))
        // charcode 344
        assert_true(is_uppercase('Ř'))
        // charcode 346
        assert_true(is_uppercase('Ś'))
        // charcode 348
        assert_true(is_uppercase('Ŝ'))
        // charcode 350
        assert_true(is_uppercase('Ş'))
        // charcode 352
        assert_true(is_uppercase('Š'))
        // charcode 354
        assert_true(is_uppercase('Ţ'))
        // charcode 356
        assert_true(is_uppercase('Ť'))
        // charcode 358
        assert_true(is_uppercase('Ŧ'))
        // charcode 360
        assert_true(is_uppercase('Ũ'))
        // charcode 362
        assert_true(is_uppercase('Ū'))
        // charcode 364
        assert_true(is_uppercase('Ŭ'))
        // charcode 366
        assert_true(is_uppercase('Ů'))
        // charcode 368
        assert_true(is_uppercase('Ű'))
        // charcode 370
        assert_true(is_uppercase('Ų'))
        // charcode 372
        assert_true(is_uppercase('Ŵ'))
        // charcode 374
        assert_true(is_uppercase('Ŷ'))
        for chn in 376U..<378U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 379
        assert_true(is_uppercase('Ż'))
        // charcode 381
        assert_true(is_uppercase('Ž'))
        for chn in 385U..<387U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 388
        assert_true(is_uppercase('Ƅ'))
        for chn in 390U..<392U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 393U..<396U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 398U..<402U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 403U..<405U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 406U..<409U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 412U..<414U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 415U..<417U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 418
        assert_true(is_uppercase('Ƣ'))
        // charcode 420
        assert_true(is_uppercase('Ƥ'))
        for chn in 422U..<424U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 425
        assert_true(is_uppercase('Ʃ'))
        // charcode 428
        assert_true(is_uppercase('Ƭ'))
        for chn in 430U..<432U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 433U..<436U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 437
        assert_true(is_uppercase('Ƶ'))
        for chn in 439U..<441U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 444
        assert_true(is_uppercase('Ƽ'))
        // charcode 452
        assert_true(is_uppercase('Ǆ'))
        // charcode 455
        assert_true(is_uppercase('Ǉ'))
        // charcode 458
        assert_true(is_uppercase('Ǌ'))
        // charcode 461
        assert_true(is_uppercase('Ǎ'))
        // charcode 463
        assert_true(is_uppercase('Ǐ'))
        // charcode 465
        assert_true(is_uppercase('Ǒ'))
        // charcode 467
        assert_true(is_uppercase('Ǔ'))
        // charcode 469
        assert_true(is_uppercase('Ǖ'))
        // charcode 471
        assert_true(is_uppercase('Ǘ'))
        // charcode 473
        assert_true(is_uppercase('Ǚ'))
        // charcode 475
        assert_true(is_uppercase('Ǜ'))
        // charcode 478
        assert_true(is_uppercase('Ǟ'))
        // charcode 480
        assert_true(is_uppercase('Ǡ'))
        // charcode 482
        assert_true(is_uppercase('Ǣ'))
        // charcode 484
        assert_true(is_uppercase('Ǥ'))
        // charcode 486
        assert_true(is_uppercase('Ǧ'))
        // charcode 488
        assert_true(is_uppercase('Ǩ'))
        // charcode 490
        assert_true(is_uppercase('Ǫ'))
        // charcode 492
        assert_true(is_uppercase('Ǭ'))
        // charcode 494
        assert_true(is_uppercase('Ǯ'))
        // charcode 497
        assert_true(is_uppercase('Ǳ'))
        // charcode 500
        assert_true(is_uppercase('Ǵ'))
        for chn in 502U..<505U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 506
        assert_true(is_uppercase('Ǻ'))
        // charcode 508
        assert_true(is_uppercase('Ǽ'))
        // charcode 510
        assert_true(is_uppercase('Ǿ'))
        // charcode 512
        assert_true(is_uppercase('Ȁ'))
        // charcode 514
        assert_true(is_uppercase('Ȃ'))
        // charcode 516
        assert_true(is_uppercase('Ȅ'))
        // charcode 518
        assert_true(is_uppercase('Ȇ'))
        // charcode 520
        assert_true(is_uppercase('Ȉ'))
        // charcode 522
        assert_true(is_uppercase('Ȋ'))
        // charcode 524
        assert_true(is_uppercase('Ȍ'))
        // charcode 526
        assert_true(is_uppercase('Ȏ'))
        // charcode 528
        assert_true(is_uppercase('Ȑ'))
        // charcode 530
        assert_true(is_uppercase('Ȓ'))
        // charcode 532
        assert_true(is_uppercase('Ȕ'))
        // charcode 534
        assert_true(is_uppercase('Ȗ'))
        // charcode 536
        assert_true(is_uppercase('Ș'))
        // charcode 538
        assert_true(is_uppercase('Ț'))
        // charcode 540
        assert_true(is_uppercase('Ȝ'))
        // charcode 542
        assert_true(is_uppercase('Ȟ'))
        // charcode 544
        assert_true(is_uppercase('Ƞ'))
        // charcode 546
        assert_true(is_uppercase('Ȣ'))
        // charcode 548
        assert_true(is_uppercase('Ȥ'))
        // charcode 550
        assert_true(is_uppercase('Ȧ'))
        // charcode 552
        assert_true(is_uppercase('Ȩ'))
        // charcode 554
        assert_true(is_uppercase('Ȫ'))
        // charcode 556
        assert_true(is_uppercase('Ȭ'))
        // charcode 558
        assert_true(is_uppercase('Ȯ'))
        // charcode 560
        assert_true(is_uppercase('Ȱ'))
        // charcode 562
        assert_true(is_uppercase('Ȳ'))
        for chn in 570U..<572U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 573U..<575U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 577
        assert_true(is_uppercase('Ɂ'))
        for chn in 579U..<583U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 584
        assert_true(is_uppercase('Ɉ'))
        // charcode 586
        assert_true(is_uppercase('Ɋ'))
        // charcode 588
        assert_true(is_uppercase('Ɍ'))
        // charcode 590
        assert_true(is_uppercase('Ɏ'))
        // charcode 880
        assert_true(is_uppercase('Ͱ'))
        // charcode 882
        assert_true(is_uppercase('Ͳ'))
        // charcode 886
        assert_true(is_uppercase('Ͷ'))
        // charcode 895
        assert_true(is_uppercase('Ϳ'))
        // charcode 902
        assert_true(is_uppercase('Ά'))
        for chn in 904U..<907U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 908
        assert_true(is_uppercase('Ό'))
        for chn in 910U..<912U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 913U..<930U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 931U..<940U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 975
        assert_true(is_uppercase('Ϗ'))
        for chn in 978U..<981U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 984
        assert_true(is_uppercase('Ϙ'))
        // charcode 986
        assert_true(is_uppercase('Ϛ'))
        // charcode 988
        assert_true(is_uppercase('Ϝ'))
        // charcode 990
        assert_true(is_uppercase('Ϟ'))
        // charcode 992
        assert_true(is_uppercase('Ϡ'))
        // charcode 994
        assert_true(is_uppercase('Ϣ'))
        // charcode 996
        assert_true(is_uppercase('Ϥ'))
        // charcode 998
        assert_true(is_uppercase('Ϧ'))
        // charcode 1000
        assert_true(is_uppercase('Ϩ'))
        // charcode 1002
        assert_true(is_uppercase('Ϫ'))
        // charcode 1004
        assert_true(is_uppercase('Ϭ'))
        // charcode 1006
        assert_true(is_uppercase('Ϯ'))
        // charcode 1012
        assert_true(is_uppercase('ϴ'))
        // charcode 1015
        assert_true(is_uppercase('Ϸ'))
        for chn in 1017U..<1019U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1021U..<1072U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1120
        assert_true(is_uppercase('Ѡ'))
        // charcode 1122
        assert_true(is_uppercase('Ѣ'))
        // charcode 1124
        assert_true(is_uppercase('Ѥ'))
        // charcode 1126
        assert_true(is_uppercase('Ѧ'))
        // charcode 1128
        assert_true(is_uppercase('Ѩ'))
        // charcode 1130
        assert_true(is_uppercase('Ѫ'))
        // charcode 1132
        assert_true(is_uppercase('Ѭ'))
        // charcode 1134
        assert_true(is_uppercase('Ѯ'))
        // charcode 1136
        assert_true(is_uppercase('Ѱ'))
        // charcode 1138
        assert_true(is_uppercase('Ѳ'))
        // charcode 1140
        assert_true(is_uppercase('Ѵ'))
        // charcode 1142
        assert_true(is_uppercase('Ѷ'))
        // charcode 1144
        assert_true(is_uppercase('Ѹ'))
        // charcode 1146
        assert_true(is_uppercase('Ѻ'))
        // charcode 1148
        assert_true(is_uppercase('Ѽ'))
        // charcode 1150
        assert_true(is_uppercase('Ѿ'))
        // charcode 1152
        assert_true(is_uppercase('Ҁ'))
        // charcode 1162
        assert_true(is_uppercase('Ҋ'))
        // charcode 1164
        assert_true(is_uppercase('Ҍ'))
        // charcode 1166
        assert_true(is_uppercase('Ҏ'))
        // charcode 1168
        assert_true(is_uppercase('Ґ'))
        // charcode 1170
        assert_true(is_uppercase('Ғ'))
        // charcode 1172
        assert_true(is_uppercase('Ҕ'))
        // charcode 1174
        assert_true(is_uppercase('Җ'))
        // charcode 1176
        assert_true(is_uppercase('Ҙ'))
        // charcode 1178
        assert_true(is_uppercase('Қ'))
        // charcode 1180
        assert_true(is_uppercase('Ҝ'))
        // charcode 1182
        assert_true(is_uppercase('Ҟ'))
        // charcode 1184
        assert_true(is_uppercase('Ҡ'))
        // charcode 1186
        assert_true(is_uppercase('Ң'))
        // charcode 1188
        assert_true(is_uppercase('Ҥ'))
        // charcode 1190
        assert_true(is_uppercase('Ҧ'))
        // charcode 1192
        assert_true(is_uppercase('Ҩ'))
        // charcode 1194
        assert_true(is_uppercase('Ҫ'))
        // charcode 1196
        assert_true(is_uppercase('Ҭ'))
        // charcode 1198
        assert_true(is_uppercase('Ү'))
        // charcode 1200
        assert_true(is_uppercase('Ұ'))
        // charcode 1202
        assert_true(is_uppercase('Ҳ'))
        // charcode 1204
        assert_true(is_uppercase('Ҵ'))
        // charcode 1206
        assert_true(is_uppercase('Ҷ'))
        // charcode 1208
        assert_true(is_uppercase('Ҹ'))
        // charcode 1210
        assert_true(is_uppercase('Һ'))
        // charcode 1212
        assert_true(is_uppercase('Ҽ'))
        // charcode 1214
        assert_true(is_uppercase('Ҿ'))
        for chn in 1216U..<1218U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1219
        assert_true(is_uppercase('Ӄ'))
        // charcode 1221
        assert_true(is_uppercase('Ӆ'))
        // charcode 1223
        assert_true(is_uppercase('Ӈ'))
        // charcode 1225
        assert_true(is_uppercase('Ӊ'))
        // charcode 1227
        assert_true(is_uppercase('Ӌ'))
        // charcode 1229
        assert_true(is_uppercase('Ӎ'))
        // charcode 1232
        assert_true(is_uppercase('Ӑ'))
        // charcode 1234
        assert_true(is_uppercase('Ӓ'))
        // charcode 1236
        assert_true(is_uppercase('Ӕ'))
        // charcode 1238
        assert_true(is_uppercase('Ӗ'))
        // charcode 1240
        assert_true(is_uppercase('Ә'))
        // charcode 1242
        assert_true(is_uppercase('Ӛ'))
        // charcode 1244
        assert_true(is_uppercase('Ӝ'))
        // charcode 1246
        assert_true(is_uppercase('Ӟ'))
        // charcode 1248
        assert_true(is_uppercase('Ӡ'))
        // charcode 1250
        assert_true(is_uppercase('Ӣ'))
        // charcode 1252
        assert_true(is_uppercase('Ӥ'))
        // charcode 1254
        assert_true(is_uppercase('Ӧ'))
        // charcode 1256
        assert_true(is_uppercase('Ө'))
        // charcode 1258
        assert_true(is_uppercase('Ӫ'))
        // charcode 1260
        assert_true(is_uppercase('Ӭ'))
        // charcode 1262
        assert_true(is_uppercase('Ӯ'))
        // charcode 1264
        assert_true(is_uppercase('Ӱ'))
        // charcode 1266
        assert_true(is_uppercase('Ӳ'))
        // charcode 1268
        assert_true(is_uppercase('Ӵ'))
        // charcode 1270
        assert_true(is_uppercase('Ӷ'))
        // charcode 1272
        assert_true(is_uppercase('Ӹ'))
        // charcode 1274
        assert_true(is_uppercase('Ӻ'))
        // charcode 1276
        assert_true(is_uppercase('Ӽ'))
        // charcode 1278
        assert_true(is_uppercase('Ӿ'))
        // charcode 1280
        assert_true(is_uppercase('Ԁ'))
        // charcode 1282
        assert_true(is_uppercase('Ԃ'))
        // charcode 1284
        assert_true(is_uppercase('Ԅ'))
        // charcode 1286
        assert_true(is_uppercase('Ԇ'))
        // charcode 1288
        assert_true(is_uppercase('Ԉ'))
        // charcode 1290
        assert_true(is_uppercase('Ԋ'))
        // charcode 1292
        assert_true(is_uppercase('Ԍ'))
        // charcode 1294
        assert_true(is_uppercase('Ԏ'))
        // charcode 1296
        assert_true(is_uppercase('Ԑ'))
        // charcode 1298
        assert_true(is_uppercase('Ԓ'))
        // charcode 1300
        assert_true(is_uppercase('Ԕ'))
        // charcode 1302
        assert_true(is_uppercase('Ԗ'))
        // charcode 1304
        assert_true(is_uppercase('Ԙ'))
        // charcode 1306
        assert_true(is_uppercase('Ԛ'))
        // charcode 1308
        assert_true(is_uppercase('Ԝ'))
        // charcode 1310
        assert_true(is_uppercase('Ԟ'))
        // charcode 1312
        assert_true(is_uppercase('Ԡ'))
        // charcode 1314
        assert_true(is_uppercase('Ԣ'))
        // charcode 1316
        assert_true(is_uppercase('Ԥ'))
        // charcode 1318
        assert_true(is_uppercase('Ԧ'))
        // charcode 1320
        assert_true(is_uppercase('Ԩ'))
        // charcode 1322
        assert_true(is_uppercase('Ԫ'))
        // charcode 1324
        assert_true(is_uppercase('Ԭ'))
        // charcode 1326
        assert_true(is_uppercase('Ԯ'))
        for chn in 1329U..<1367U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4256U..<4294U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4295
        assert_true(is_uppercase('Ⴧ'))
        // charcode 4301
        assert_true(is_uppercase('Ⴭ'))
        for chn in 5024U..<5110U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7305
        assert_true(is_uppercase('Ᲊ'))
        for chn in 7312U..<7355U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7357U..<7360U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7680
        assert_true(is_uppercase('Ḁ'))
        // charcode 7682
        assert_true(is_uppercase('Ḃ'))
        // charcode 7684
        assert_true(is_uppercase('Ḅ'))
        // charcode 7686
        assert_true(is_uppercase('Ḇ'))
        // charcode 7688
        assert_true(is_uppercase('Ḉ'))
        // charcode 7690
        assert_true(is_uppercase('Ḋ'))
        // charcode 7692
        assert_true(is_uppercase('Ḍ'))
        // charcode 7694
        assert_true(is_uppercase('Ḏ'))
        // charcode 7696
        assert_true(is_uppercase('Ḑ'))
        // charcode 7698
        assert_true(is_uppercase('Ḓ'))
        // charcode 7700
        assert_true(is_uppercase('Ḕ'))
        // charcode 7702
        assert_true(is_uppercase('Ḗ'))
        // charcode 7704
        assert_true(is_uppercase('Ḙ'))
        // charcode 7706
        assert_true(is_uppercase('Ḛ'))
        // charcode 7708
        assert_true(is_uppercase('Ḝ'))
        // charcode 7710
        assert_true(is_uppercase('Ḟ'))
        // charcode 7712
        assert_true(is_uppercase('Ḡ'))
        // charcode 7714
        assert_true(is_uppercase('Ḣ'))
        // charcode 7716
        assert_true(is_uppercase('Ḥ'))
        // charcode 7718
        assert_true(is_uppercase('Ḧ'))
        // charcode 7720
        assert_true(is_uppercase('Ḩ'))
        // charcode 7722
        assert_true(is_uppercase('Ḫ'))
        // charcode 7724
        assert_true(is_uppercase('Ḭ'))
        // charcode 7726
        assert_true(is_uppercase('Ḯ'))
        // charcode 7728
        assert_true(is_uppercase('Ḱ'))
        // charcode 7730
        assert_true(is_uppercase('Ḳ'))
        // charcode 7732
        assert_true(is_uppercase('Ḵ'))
        // charcode 7734
        assert_true(is_uppercase('Ḷ'))
        // charcode 7736
        assert_true(is_uppercase('Ḹ'))
        // charcode 7738
        assert_true(is_uppercase('Ḻ'))
        // charcode 7740
        assert_true(is_uppercase('Ḽ'))
        // charcode 7742
        assert_true(is_uppercase('Ḿ'))
        // charcode 7744
        assert_true(is_uppercase('Ṁ'))
        // charcode 7746
        assert_true(is_uppercase('Ṃ'))
        // charcode 7748
        assert_true(is_uppercase('Ṅ'))
        // charcode 7750
        assert_true(is_uppercase('Ṇ'))
        // charcode 7752
        assert_true(is_uppercase('Ṉ'))
        // charcode 7754
        assert_true(is_uppercase('Ṋ'))
        // charcode 7756
        assert_true(is_uppercase('Ṍ'))
        // charcode 7758
        assert_true(is_uppercase('Ṏ'))
        // charcode 7760
        assert_true(is_uppercase('Ṑ'))
        // charcode 7762
        assert_true(is_uppercase('Ṓ'))
        // charcode 7764
        assert_true(is_uppercase('Ṕ'))
        // charcode 7766
        assert_true(is_uppercase('Ṗ'))
        // charcode 7768
        assert_true(is_uppercase('Ṙ'))
        // charcode 7770
        assert_true(is_uppercase('Ṛ'))
        // charcode 7772
        assert_true(is_uppercase('Ṝ'))
        // charcode 7774
        assert_true(is_uppercase('Ṟ'))
        // charcode 7776
        assert_true(is_uppercase('Ṡ'))
        // charcode 7778
        assert_true(is_uppercase('Ṣ'))
        // charcode 7780
        assert_true(is_uppercase('Ṥ'))
        // charcode 7782
        assert_true(is_uppercase('Ṧ'))
        // charcode 7784
        assert_true(is_uppercase('Ṩ'))
        // charcode 7786
        assert_true(is_uppercase('Ṫ'))
        // charcode 7788
        assert_true(is_uppercase('Ṭ'))
        // charcode 7790
        assert_true(is_uppercase('Ṯ'))
        // charcode 7792
        assert_true(is_uppercase('Ṱ'))
        // charcode 7794
        assert_true(is_uppercase('Ṳ'))
        // charcode 7796
        assert_true(is_uppercase('Ṵ'))
        // charcode 7798
        assert_true(is_uppercase('Ṷ'))
        // charcode 7800
        assert_true(is_uppercase('Ṹ'))
        // charcode 7802
        assert_true(is_uppercase('Ṻ'))
        // charcode 7804
        assert_true(is_uppercase('Ṽ'))
        // charcode 7806
        assert_true(is_uppercase('Ṿ'))
        // charcode 7808
        assert_true(is_uppercase('Ẁ'))
        // charcode 7810
        assert_true(is_uppercase('Ẃ'))
        // charcode 7812
        assert_true(is_uppercase('Ẅ'))
        // charcode 7814
        assert_true(is_uppercase('Ẇ'))
        // charcode 7816
        assert_true(is_uppercase('Ẉ'))
        // charcode 7818
        assert_true(is_uppercase('Ẋ'))
        // charcode 7820
        assert_true(is_uppercase('Ẍ'))
        // charcode 7822
        assert_true(is_uppercase('Ẏ'))
        // charcode 7824
        assert_true(is_uppercase('Ẑ'))
        // charcode 7826
        assert_true(is_uppercase('Ẓ'))
        // charcode 7828
        assert_true(is_uppercase('Ẕ'))
        // charcode 7838
        assert_true(is_uppercase('ẞ'))
        // charcode 7840
        assert_true(is_uppercase('Ạ'))
        // charcode 7842
        assert_true(is_uppercase('Ả'))
        // charcode 7844
        assert_true(is_uppercase('Ấ'))
        // charcode 7846
        assert_true(is_uppercase('Ầ'))
        // charcode 7848
        assert_true(is_uppercase('Ẩ'))
        // charcode 7850
        assert_true(is_uppercase('Ẫ'))
        // charcode 7852
        assert_true(is_uppercase('Ậ'))
        // charcode 7854
        assert_true(is_uppercase('Ắ'))
        // charcode 7856
        assert_true(is_uppercase('Ằ'))
        // charcode 7858
        assert_true(is_uppercase('Ẳ'))
        // charcode 7860
        assert_true(is_uppercase('Ẵ'))
        // charcode 7862
        assert_true(is_uppercase('Ặ'))
        // charcode 7864
        assert_true(is_uppercase('Ẹ'))
        // charcode 7866
        assert_true(is_uppercase('Ẻ'))
        // charcode 7868
        assert_true(is_uppercase('Ẽ'))
        // charcode 7870
        assert_true(is_uppercase('Ế'))
        // charcode 7872
        assert_true(is_uppercase('Ề'))
        // charcode 7874
        assert_true(is_uppercase('Ể'))
        // charcode 7876
        assert_true(is_uppercase('Ễ'))
        // charcode 7878
        assert_true(is_uppercase('Ệ'))
        // charcode 7880
        assert_true(is_uppercase('Ỉ'))
        // charcode 7882
        assert_true(is_uppercase('Ị'))
        // charcode 7884
        assert_true(is_uppercase('Ọ'))
        // charcode 7886
        assert_true(is_uppercase('Ỏ'))
        // charcode 7888
        assert_true(is_uppercase('Ố'))
        // charcode 7890
        assert_true(is_uppercase('Ồ'))
        // charcode 7892
        assert_true(is_uppercase('Ổ'))
        // charcode 7894
        assert_true(is_uppercase('Ỗ'))
        // charcode 7896
        assert_true(is_uppercase('Ộ'))
        // charcode 7898
        assert_true(is_uppercase('Ớ'))
        // charcode 7900
        assert_true(is_uppercase('Ờ'))
        // charcode 7902
        assert_true(is_uppercase('Ở'))
        // charcode 7904
        assert_true(is_uppercase('Ỡ'))
        // charcode 7906
        assert_true(is_uppercase('Ợ'))
        // charcode 7908
        assert_true(is_uppercase('Ụ'))
        // charcode 7910
        assert_true(is_uppercase('Ủ'))
        // charcode 7912
        assert_true(is_uppercase('Ứ'))
        // charcode 7914
        assert_true(is_uppercase('Ừ'))
        // charcode 7916
        assert_true(is_uppercase('Ử'))
        // charcode 7918
        assert_true(is_uppercase('Ữ'))
        // charcode 7920
        assert_true(is_uppercase('Ự'))
        // charcode 7922
        assert_true(is_uppercase('Ỳ'))
        // charcode 7924
        assert_true(is_uppercase('Ỵ'))
        // charcode 7926
        assert_true(is_uppercase('Ỷ'))
        // charcode 7928
        assert_true(is_uppercase('Ỹ'))
        // charcode 7930
        assert_true(is_uppercase('Ỻ'))
        // charcode 7932
        assert_true(is_uppercase('Ỽ'))
        // charcode 7934
        assert_true(is_uppercase('Ỿ'))
        for chn in 7944U..<7952U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7960U..<7966U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7976U..<7984U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7992U..<8000U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8008U..<8014U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8025
        assert_true(is_uppercase('Ὑ'))
        // charcode 8027
        assert_true(is_uppercase('Ὓ'))
        // charcode 8029
        assert_true(is_uppercase('Ὕ'))
        // charcode 8031
        assert_true(is_uppercase('Ὗ'))
        for chn in 8040U..<8048U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8120U..<8124U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8136U..<8140U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8152U..<8156U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8168U..<8173U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8184U..<8188U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8450
        assert_true(is_uppercase('ℂ'))
        // charcode 8455
        assert_true(is_uppercase('ℇ'))
        for chn in 8459U..<8462U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8464U..<8467U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8469
        assert_true(is_uppercase('ℕ'))
        for chn in 8473U..<8478U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8484
        assert_true(is_uppercase('ℤ'))
        // charcode 8486
        assert_true(is_uppercase('Ω'))
        // charcode 8488
        assert_true(is_uppercase('ℨ'))
        for chn in 8490U..<8494U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8496U..<8500U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8510U..<8512U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8517
        assert_true(is_uppercase('ⅅ'))
        for chn in 8544U..<8560U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8579
        assert_true(is_uppercase('Ↄ'))
        for chn in 9398U..<9424U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11264U..<11312U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11360
        assert_true(is_uppercase('Ⱡ'))
        for chn in 11362U..<11365U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11367
        assert_true(is_uppercase('Ⱨ'))
        // charcode 11369
        assert_true(is_uppercase('Ⱪ'))
        // charcode 11371
        assert_true(is_uppercase('Ⱬ'))
        for chn in 11373U..<11377U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11378
        assert_true(is_uppercase('Ⱳ'))
        // charcode 11381
        assert_true(is_uppercase('Ⱶ'))
        for chn in 11390U..<11393U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11394
        assert_true(is_uppercase('Ⲃ'))
        // charcode 11396
        assert_true(is_uppercase('Ⲅ'))
        // charcode 11398
        assert_true(is_uppercase('Ⲇ'))
        // charcode 11400
        assert_true(is_uppercase('Ⲉ'))
        // charcode 11402
        assert_true(is_uppercase('Ⲋ'))
        // charcode 11404
        assert_true(is_uppercase('Ⲍ'))
        // charcode 11406
        assert_true(is_uppercase('Ⲏ'))
        // charcode 11408
        assert_true(is_uppercase('Ⲑ'))
        // charcode 11410
        assert_true(is_uppercase('Ⲓ'))
        // charcode 11412
        assert_true(is_uppercase('Ⲕ'))
        // charcode 11414
        assert_true(is_uppercase('Ⲗ'))
        // charcode 11416
        assert_true(is_uppercase('Ⲙ'))
        // charcode 11418
        assert_true(is_uppercase('Ⲛ'))
        // charcode 11420
        assert_true(is_uppercase('Ⲝ'))
        // charcode 11422
        assert_true(is_uppercase('Ⲟ'))
        // charcode 11424
        assert_true(is_uppercase('Ⲡ'))
        // charcode 11426
        assert_true(is_uppercase('Ⲣ'))
        // charcode 11428
        assert_true(is_uppercase('Ⲥ'))
        // charcode 11430
        assert_true(is_uppercase('Ⲧ'))
        // charcode 11432
        assert_true(is_uppercase('Ⲩ'))
        // charcode 11434
        assert_true(is_uppercase('Ⲫ'))
        // charcode 11436
        assert_true(is_uppercase('Ⲭ'))
        // charcode 11438
        assert_true(is_uppercase('Ⲯ'))
        // charcode 11440
        assert_true(is_uppercase('Ⲱ'))
        // charcode 11442
        assert_true(is_uppercase('Ⲳ'))
        // charcode 11444
        assert_true(is_uppercase('Ⲵ'))
        // charcode 11446
        assert_true(is_uppercase('Ⲷ'))
        // charcode 11448
        assert_true(is_uppercase('Ⲹ'))
        // charcode 11450
        assert_true(is_uppercase('Ⲻ'))
        // charcode 11452
        assert_true(is_uppercase('Ⲽ'))
        // charcode 11454
        assert_true(is_uppercase('Ⲿ'))
        // charcode 11456
        assert_true(is_uppercase('Ⳁ'))
        // charcode 11458
        assert_true(is_uppercase('Ⳃ'))
        // charcode 11460
        assert_true(is_uppercase('Ⳅ'))
        // charcode 11462
        assert_true(is_uppercase('Ⳇ'))
        // charcode 11464
        assert_true(is_uppercase('Ⳉ'))
        // charcode 11466
        assert_true(is_uppercase('Ⳋ'))
        // charcode 11468
        assert_true(is_uppercase('Ⳍ'))
        // charcode 11470
        assert_true(is_uppercase('Ⳏ'))
        // charcode 11472
        assert_true(is_uppercase('Ⳑ'))
        // charcode 11474
        assert_true(is_uppercase('Ⳓ'))
        // charcode 11476
        assert_true(is_uppercase('Ⳕ'))
        // charcode 11478
        assert_true(is_uppercase('Ⳗ'))
        // charcode 11480
        assert_true(is_uppercase('Ⳙ'))
        // charcode 11482
        assert_true(is_uppercase('Ⳛ'))
        // charcode 11484
        assert_true(is_uppercase('Ⳝ'))
        // charcode 11486
        assert_true(is_uppercase('Ⳟ'))
        // charcode 11488
        assert_true(is_uppercase('Ⳡ'))
        // charcode 11490
        assert_true(is_uppercase('Ⳣ'))
        // charcode 11499
        assert_true(is_uppercase('Ⳬ'))
        // charcode 11501
        assert_true(is_uppercase('Ⳮ'))
        // charcode 11506
        assert_true(is_uppercase('Ⳳ'))
        // charcode 42560
        assert_true(is_uppercase('Ꙁ'))
        // charcode 42562
        assert_true(is_uppercase('Ꙃ'))
        // charcode 42564
        assert_true(is_uppercase('Ꙅ'))
        // charcode 42566
        assert_true(is_uppercase('Ꙇ'))
        // charcode 42568
        assert_true(is_uppercase('Ꙉ'))
        // charcode 42570
        assert_true(is_uppercase('Ꙋ'))
        // charcode 42572
        assert_true(is_uppercase('Ꙍ'))
        // charcode 42574
        assert_true(is_uppercase('Ꙏ'))
        // charcode 42576
        assert_true(is_uppercase('Ꙑ'))
        // charcode 42578
        assert_true(is_uppercase('Ꙓ'))
        // charcode 42580
        assert_true(is_uppercase('Ꙕ'))
        // charcode 42582
        assert_true(is_uppercase('Ꙗ'))
        // charcode 42584
        assert_true(is_uppercase('Ꙙ'))
        // charcode 42586
        assert_true(is_uppercase('Ꙛ'))
        // charcode 42588
        assert_true(is_uppercase('Ꙝ'))
        // charcode 42590
        assert_true(is_uppercase('Ꙟ'))
        // charcode 42592
        assert_true(is_uppercase('Ꙡ'))
        // charcode 42594
        assert_true(is_uppercase('Ꙣ'))
        // charcode 42596
        assert_true(is_uppercase('Ꙥ'))
        // charcode 42598
        assert_true(is_uppercase('Ꙧ'))
        // charcode 42600
        assert_true(is_uppercase('Ꙩ'))
        // charcode 42602
        assert_true(is_uppercase('Ꙫ'))
        // charcode 42604
        assert_true(is_uppercase('Ꙭ'))
        // charcode 42624
        assert_true(is_uppercase('Ꚁ'))
        // charcode 42626
        assert_true(is_uppercase('Ꚃ'))
        // charcode 42628
        assert_true(is_uppercase('Ꚅ'))
        // charcode 42630
        assert_true(is_uppercase('Ꚇ'))
        // charcode 42632
        assert_true(is_uppercase('Ꚉ'))
        // charcode 42634
        assert_true(is_uppercase('Ꚋ'))
        // charcode 42636
        assert_true(is_uppercase('Ꚍ'))
        // charcode 42638
        assert_true(is_uppercase('Ꚏ'))
        // charcode 42640
        assert_true(is_uppercase('Ꚑ'))
        // charcode 42642
        assert_true(is_uppercase('Ꚓ'))
        // charcode 42644
        assert_true(is_uppercase('Ꚕ'))
        // charcode 42646
        assert_true(is_uppercase('Ꚗ'))
        // charcode 42648
        assert_true(is_uppercase('Ꚙ'))
        // charcode 42650
        assert_true(is_uppercase('Ꚛ'))
        // charcode 42786
        assert_true(is_uppercase('Ꜣ'))
        // charcode 42788
        assert_true(is_uppercase('Ꜥ'))
        // charcode 42790
        assert_true(is_uppercase('Ꜧ'))
        // charcode 42792
        assert_true(is_uppercase('Ꜩ'))
        // charcode 42794
        assert_true(is_uppercase('Ꜫ'))
        // charcode 42796
        assert_true(is_uppercase('Ꜭ'))
        // charcode 42798
        assert_true(is_uppercase('Ꜯ'))
        // charcode 42802
        assert_true(is_uppercase('Ꜳ'))
        // charcode 42804
        assert_true(is_uppercase('Ꜵ'))
        // charcode 42806
        assert_true(is_uppercase('Ꜷ'))
        // charcode 42808
        assert_true(is_uppercase('Ꜹ'))
        // charcode 42810
        assert_true(is_uppercase('Ꜻ'))
        // charcode 42812
        assert_true(is_uppercase('Ꜽ'))
        // charcode 42814
        assert_true(is_uppercase('Ꜿ'))
        // charcode 42816
        assert_true(is_uppercase('Ꝁ'))
        // charcode 42818
        assert_true(is_uppercase('Ꝃ'))
        // charcode 42820
        assert_true(is_uppercase('Ꝅ'))
        // charcode 42822
        assert_true(is_uppercase('Ꝇ'))
        // charcode 42824
        assert_true(is_uppercase('Ꝉ'))
        // charcode 42826
        assert_true(is_uppercase('Ꝋ'))
        // charcode 42828
        assert_true(is_uppercase('Ꝍ'))
        // charcode 42830
        assert_true(is_uppercase('Ꝏ'))
        // charcode 42832
        assert_true(is_uppercase('Ꝑ'))
        // charcode 42834
        assert_true(is_uppercase('Ꝓ'))
        // charcode 42836
        assert_true(is_uppercase('Ꝕ'))
        // charcode 42838
        assert_true(is_uppercase('Ꝗ'))
        // charcode 42840
        assert_true(is_uppercase('Ꝙ'))
        // charcode 42842
        assert_true(is_uppercase('Ꝛ'))
        // charcode 42844
        assert_true(is_uppercase('Ꝝ'))
        // charcode 42846
        assert_true(is_uppercase('Ꝟ'))
        // charcode 42848
        assert_true(is_uppercase('Ꝡ'))
        // charcode 42850
        assert_true(is_uppercase('Ꝣ'))
        // charcode 42852
        assert_true(is_uppercase('Ꝥ'))
        // charcode 42854
        assert_true(is_uppercase('Ꝧ'))
        // charcode 42856
        assert_true(is_uppercase('Ꝩ'))
        // charcode 42858
        assert_true(is_uppercase('Ꝫ'))
        // charcode 42860
        assert_true(is_uppercase('Ꝭ'))
        // charcode 42862
        assert_true(is_uppercase('Ꝯ'))
        // charcode 42873
        assert_true(is_uppercase('Ꝺ'))
        // charcode 42875
        assert_true(is_uppercase('Ꝼ'))
        for chn in 42877U..<42879U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42880
        assert_true(is_uppercase('Ꞁ'))
        // charcode 42882
        assert_true(is_uppercase('Ꞃ'))
        // charcode 42884
        assert_true(is_uppercase('Ꞅ'))
        // charcode 42886
        assert_true(is_uppercase('Ꞇ'))
        // charcode 42891
        assert_true(is_uppercase('Ꞌ'))
        // charcode 42893
        assert_true(is_uppercase('Ɥ'))
        // charcode 42896
        assert_true(is_uppercase('Ꞑ'))
        // charcode 42898
        assert_true(is_uppercase('Ꞓ'))
        // charcode 42902
        assert_true(is_uppercase('Ꞗ'))
        // charcode 42904
        assert_true(is_uppercase('Ꞙ'))
        // charcode 42906
        assert_true(is_uppercase('Ꞛ'))
        // charcode 42908
        assert_true(is_uppercase('Ꞝ'))
        // charcode 42910
        assert_true(is_uppercase('Ꞟ'))
        // charcode 42912
        assert_true(is_uppercase('Ꞡ'))
        // charcode 42914
        assert_true(is_uppercase('Ꞣ'))
        // charcode 42916
        assert_true(is_uppercase('Ꞥ'))
        // charcode 42918
        assert_true(is_uppercase('Ꞧ'))
        // charcode 42920
        assert_true(is_uppercase('Ꞩ'))
        for chn in 42922U..<42927U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42928U..<42933U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42934
        assert_true(is_uppercase('Ꞷ'))
        // charcode 42936
        assert_true(is_uppercase('Ꞹ'))
        // charcode 42938
        assert_true(is_uppercase('Ꞻ'))
        // charcode 42940
        assert_true(is_uppercase('Ꞽ'))
        // charcode 42942
        assert_true(is_uppercase('Ꞿ'))
        // charcode 42944
        assert_true(is_uppercase('Ꟁ'))
        // charcode 42946
        assert_true(is_uppercase('Ꟃ'))
        for chn in 42948U..<42952U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42953
        assert_true(is_uppercase('Ꟊ'))
        for chn in 42955U..<42957U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42960
        assert_true(is_uppercase('Ꟑ'))
        // charcode 42966
        assert_true(is_uppercase('Ꟗ'))
        // charcode 42968
        assert_true(is_uppercase('Ꟙ'))
        // charcode 42970
        assert_true(is_uppercase('Ꟛ'))
        // charcode 42972
        assert_true(is_uppercase('Ƛ'))
        // charcode 42997
        assert_true(is_uppercase('Ꟶ'))
        for chn in 65313U..<65339U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66560U..<66600U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66736U..<66772U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66928U..<66939U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66940U..<66955U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66956U..<66963U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66964U..<66966U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68736U..<68787U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68944U..<68966U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71840U..<71872U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93760U..<93792U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119808U..<119834U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119860U..<119886U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119912U..<119938U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119964
        assert_true(is_uppercase('𝒜'))
        for chn in 119966U..<119968U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119970
        assert_true(is_uppercase('𝒢'))
        for chn in 119973U..<119975U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119977U..<119981U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119982U..<119990U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120016U..<120042U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120068U..<120070U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120071U..<120075U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120077U..<120085U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120086U..<120093U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120120U..<120122U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120123U..<120127U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120128U..<120133U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120134
        assert_true(is_uppercase('𝕆'))
        for chn in 120138U..<120145U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120172U..<120198U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120224U..<120250U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120276U..<120302U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120328U..<120354U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120380U..<120406U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120432U..<120458U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120488U..<120513U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120546U..<120571U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120604U..<120629U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120662U..<120687U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120720U..<120745U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120778
        assert_true(is_uppercase('𝟊'))
        for chn in 125184U..<125218U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127280U..<127306U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127312U..<127338U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127344U..<127370U {
            ensure(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    fn uppercase_false() -> Unit!Error {
        for chn in 0U..<65U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 91U..<192U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 215
        assert_false(is_uppercase('×'))
        for chn in 223U..<256U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 257
        assert_false(is_uppercase('ā'))
        // charcode 259
        assert_false(is_uppercase('ă'))
        // charcode 261
        assert_false(is_uppercase('ą'))
        // charcode 263
        assert_false(is_uppercase('ć'))
        // charcode 265
        assert_false(is_uppercase('ĉ'))
        // charcode 267
        assert_false(is_uppercase('ċ'))
        // charcode 269
        assert_false(is_uppercase('č'))
        // charcode 271
        assert_false(is_uppercase('ď'))
        // charcode 273
        assert_false(is_uppercase('đ'))
        // charcode 275
        assert_false(is_uppercase('ē'))
        // charcode 277
        assert_false(is_uppercase('ĕ'))
        // charcode 279
        assert_false(is_uppercase('ė'))
        // charcode 281
        assert_false(is_uppercase('ę'))
        // charcode 283
        assert_false(is_uppercase('ě'))
        // charcode 285
        assert_false(is_uppercase('ĝ'))
        // charcode 287
        assert_false(is_uppercase('ğ'))
        // charcode 289
        assert_false(is_uppercase('ġ'))
        // charcode 291
        assert_false(is_uppercase('ģ'))
        // charcode 293
        assert_false(is_uppercase('ĥ'))
        // charcode 295
        assert_false(is_uppercase('ħ'))
        // charcode 297
        assert_false(is_uppercase('ĩ'))
        // charcode 299
        assert_false(is_uppercase('ī'))
        // charcode 301
        assert_false(is_uppercase('ĭ'))
        // charcode 303
        assert_false(is_uppercase('į'))
        // charcode 305
        assert_false(is_uppercase('ı'))
        // charcode 307
        assert_false(is_uppercase('ĳ'))
        // charcode 309
        assert_false(is_uppercase('ĵ'))
        for chn in 311U..<313U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 314
        assert_false(is_uppercase('ĺ'))
        // charcode 316
        assert_false(is_uppercase('ļ'))
        // charcode 318
        assert_false(is_uppercase('ľ'))
        // charcode 320
        assert_false(is_uppercase('ŀ'))
        // charcode 322
        assert_false(is_uppercase('ł'))
        // charcode 324
        assert_false(is_uppercase('ń'))
        // charcode 326
        assert_false(is_uppercase('ņ'))
        for chn in 328U..<330U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 331
        assert_false(is_uppercase('ŋ'))
        // charcode 333
        assert_false(is_uppercase('ō'))
        // charcode 335
        assert_false(is_uppercase('ŏ'))
        // charcode 337
        assert_false(is_uppercase('ő'))
        // charcode 339
        assert_false(is_uppercase('œ'))
        // charcode 341
        assert_false(is_uppercase('ŕ'))
        // charcode 343
        assert_false(is_uppercase('ŗ'))
        // charcode 345
        assert_false(is_uppercase('ř'))
        // charcode 347
        assert_false(is_uppercase('ś'))
        // charcode 349
        assert_false(is_uppercase('ŝ'))
        // charcode 351
        assert_false(is_uppercase('ş'))
        // charcode 353
        assert_false(is_uppercase('š'))
        // charcode 355
        assert_false(is_uppercase('ţ'))
        // charcode 357
        assert_false(is_uppercase('ť'))
        // charcode 359
        assert_false(is_uppercase('ŧ'))
        // charcode 361
        assert_false(is_uppercase('ũ'))
        // charcode 363
        assert_false(is_uppercase('ū'))
        // charcode 365
        assert_false(is_uppercase('ŭ'))
        // charcode 367
        assert_false(is_uppercase('ů'))
        // charcode 369
        assert_false(is_uppercase('ű'))
        // charcode 371
        assert_false(is_uppercase('ų'))
        // charcode 373
        assert_false(is_uppercase('ŵ'))
        // charcode 375
        assert_false(is_uppercase('ŷ'))
        // charcode 378
        assert_false(is_uppercase('ź'))
        // charcode 380
        assert_false(is_uppercase('ż'))
        for chn in 382U..<385U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 387
        assert_false(is_uppercase('ƃ'))
        // charcode 389
        assert_false(is_uppercase('ƅ'))
        // charcode 392
        assert_false(is_uppercase('ƈ'))
        for chn in 396U..<398U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 402
        assert_false(is_uppercase('ƒ'))
        // charcode 405
        assert_false(is_uppercase('ƕ'))
        for chn in 409U..<412U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 414
        assert_false(is_uppercase('ƞ'))
        // charcode 417
        assert_false(is_uppercase('ơ'))
        // charcode 419
        assert_false(is_uppercase('ƣ'))
        // charcode 421
        assert_false(is_uppercase('ƥ'))
        // charcode 424
        assert_false(is_uppercase('ƨ'))
        for chn in 426U..<428U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 429
        assert_false(is_uppercase('ƭ'))
        // charcode 432
        assert_false(is_uppercase('ư'))
        // charcode 436
        assert_false(is_uppercase('ƴ'))
        // charcode 438
        assert_false(is_uppercase('ƶ'))
        for chn in 441U..<444U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 445U..<452U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 453U..<455U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 456U..<458U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 459U..<461U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 462
        assert_false(is_uppercase('ǎ'))
        // charcode 464
        assert_false(is_uppercase('ǐ'))
        // charcode 466
        assert_false(is_uppercase('ǒ'))
        // charcode 468
        assert_false(is_uppercase('ǔ'))
        // charcode 470
        assert_false(is_uppercase('ǖ'))
        // charcode 472
        assert_false(is_uppercase('ǘ'))
        // charcode 474
        assert_false(is_uppercase('ǚ'))
        for chn in 476U..<478U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 479
        assert_false(is_uppercase('ǟ'))
        // charcode 481
        assert_false(is_uppercase('ǡ'))
        // charcode 483
        assert_false(is_uppercase('ǣ'))
        // charcode 485
        assert_false(is_uppercase('ǥ'))
        // charcode 487
        assert_false(is_uppercase('ǧ'))
        // charcode 489
        assert_false(is_uppercase('ǩ'))
        // charcode 491
        assert_false(is_uppercase('ǫ'))
        // charcode 493
        assert_false(is_uppercase('ǭ'))
        for chn in 495U..<497U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 498U..<500U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 501
        assert_false(is_uppercase('ǵ'))
        // charcode 505
        assert_false(is_uppercase('ǹ'))
        // charcode 507
        assert_false(is_uppercase('ǻ'))
        // charcode 509
        assert_false(is_uppercase('ǽ'))
        // charcode 511
        assert_false(is_uppercase('ǿ'))
        // charcode 513
        assert_false(is_uppercase('ȁ'))
        // charcode 515
        assert_false(is_uppercase('ȃ'))
        // charcode 517
        assert_false(is_uppercase('ȅ'))
        // charcode 519
        assert_false(is_uppercase('ȇ'))
        // charcode 521
        assert_false(is_uppercase('ȉ'))
        // charcode 523
        assert_false(is_uppercase('ȋ'))
        // charcode 525
        assert_false(is_uppercase('ȍ'))
        // charcode 527
        assert_false(is_uppercase('ȏ'))
        // charcode 529
        assert_false(is_uppercase('ȑ'))
        // charcode 531
        assert_false(is_uppercase('ȓ'))
        // charcode 533
        assert_false(is_uppercase('ȕ'))
        // charcode 535
        assert_false(is_uppercase('ȗ'))
        // charcode 537
        assert_false(is_uppercase('ș'))
        // charcode 539
        assert_false(is_uppercase('ț'))
        // charcode 541
        assert_false(is_uppercase('ȝ'))
        // charcode 543
        assert_false(is_uppercase('ȟ'))
        // charcode 545
        assert_false(is_uppercase('ȡ'))
        // charcode 547
        assert_false(is_uppercase('ȣ'))
        // charcode 549
        assert_false(is_uppercase('ȥ'))
        // charcode 551
        assert_false(is_uppercase('ȧ'))
        // charcode 553
        assert_false(is_uppercase('ȩ'))
        // charcode 555
        assert_false(is_uppercase('ȫ'))
        // charcode 557
        assert_false(is_uppercase('ȭ'))
        // charcode 559
        assert_false(is_uppercase('ȯ'))
        // charcode 561
        assert_false(is_uppercase('ȱ'))
        for chn in 563U..<570U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 572
        assert_false(is_uppercase('ȼ'))
        for chn in 575U..<577U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 578
        assert_false(is_uppercase('ɂ'))
        // charcode 583
        assert_false(is_uppercase('ɇ'))
        // charcode 585
        assert_false(is_uppercase('ɉ'))
        // charcode 587
        assert_false(is_uppercase('ɋ'))
        // charcode 589
        assert_false(is_uppercase('ɍ'))
        for chn in 591U..<880U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 881
        assert_false(is_uppercase('ͱ'))
        for chn in 883U..<886U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 887U..<895U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 896U..<902U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 903
        assert_false(is_uppercase('·'))
        // charcode 907
        assert_false(is_uppercase('\u{38b}'))
        // charcode 909
        assert_false(is_uppercase('\u{38d}'))
        // charcode 912
        assert_false(is_uppercase('ΐ'))
        // charcode 930
        assert_false(is_uppercase('\u{3a2}'))
        for chn in 940U..<975U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 976U..<978U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 981U..<984U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 985
        assert_false(is_uppercase('ϙ'))
        // charcode 987
        assert_false(is_uppercase('ϛ'))
        // charcode 989
        assert_false(is_uppercase('ϝ'))
        // charcode 991
        assert_false(is_uppercase('ϟ'))
        // charcode 993
        assert_false(is_uppercase('ϡ'))
        // charcode 995
        assert_false(is_uppercase('ϣ'))
        // charcode 997
        assert_false(is_uppercase('ϥ'))
        // charcode 999
        assert_false(is_uppercase('ϧ'))
        // charcode 1001
        assert_false(is_uppercase('ϩ'))
        // charcode 1003
        assert_false(is_uppercase('ϫ'))
        // charcode 1005
        assert_false(is_uppercase('ϭ'))
        for chn in 1007U..<1012U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1013U..<1015U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1016
        assert_false(is_uppercase('ϸ'))
        for chn in 1019U..<1021U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1072U..<1120U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1121
        assert_false(is_uppercase('ѡ'))
        // charcode 1123
        assert_false(is_uppercase('ѣ'))
        // charcode 1125
        assert_false(is_uppercase('ѥ'))
        // charcode 1127
        assert_false(is_uppercase('ѧ'))
        // charcode 1129
        assert_false(is_uppercase('ѩ'))
        // charcode 1131
        assert_false(is_uppercase('ѫ'))
        // charcode 1133
        assert_false(is_uppercase('ѭ'))
        // charcode 1135
        assert_false(is_uppercase('ѯ'))
        // charcode 1137
        assert_false(is_uppercase('ѱ'))
        // charcode 1139
        assert_false(is_uppercase('ѳ'))
        // charcode 1141
        assert_false(is_uppercase('ѵ'))
        // charcode 1143
        assert_false(is_uppercase('ѷ'))
        // charcode 1145
        assert_false(is_uppercase('ѹ'))
        // charcode 1147
        assert_false(is_uppercase('ѻ'))
        // charcode 1149
        assert_false(is_uppercase('ѽ'))
        // charcode 1151
        assert_false(is_uppercase('ѿ'))
        for chn in 1153U..<1162U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1163
        assert_false(is_uppercase('ҋ'))
        // charcode 1165
        assert_false(is_uppercase('ҍ'))
        // charcode 1167
        assert_false(is_uppercase('ҏ'))
        // charcode 1169
        assert_false(is_uppercase('ґ'))
        // charcode 1171
        assert_false(is_uppercase('ғ'))
        // charcode 1173
        assert_false(is_uppercase('ҕ'))
        // charcode 1175
        assert_false(is_uppercase('җ'))
        // charcode 1177
        assert_false(is_uppercase('ҙ'))
        // charcode 1179
        assert_false(is_uppercase('қ'))
        // charcode 1181
        assert_false(is_uppercase('ҝ'))
        // charcode 1183
        assert_false(is_uppercase('ҟ'))
        // charcode 1185
        assert_false(is_uppercase('ҡ'))
        // charcode 1187
        assert_false(is_uppercase('ң'))
        // charcode 1189
        assert_false(is_uppercase('ҥ'))
        // charcode 1191
        assert_false(is_uppercase('ҧ'))
        // charcode 1193
        assert_false(is_uppercase('ҩ'))
        // charcode 1195
        assert_false(is_uppercase('ҫ'))
        // charcode 1197
        assert_false(is_uppercase('ҭ'))
        // charcode 1199
        assert_false(is_uppercase('ү'))
        // charcode 1201
        assert_false(is_uppercase('ұ'))
        // charcode 1203
        assert_false(is_uppercase('ҳ'))
        // charcode 1205
        assert_false(is_uppercase('ҵ'))
        // charcode 1207
        assert_false(is_uppercase('ҷ'))
        // charcode 1209
        assert_false(is_uppercase('ҹ'))
        // charcode 1211
        assert_false(is_uppercase('һ'))
        // charcode 1213
        assert_false(is_uppercase('ҽ'))
        // charcode 1215
        assert_false(is_uppercase('ҿ'))
        // charcode 1218
        assert_false(is_uppercase('ӂ'))
        // charcode 1220
        assert_false(is_uppercase('ӄ'))
        // charcode 1222
        assert_false(is_uppercase('ӆ'))
        // charcode 1224
        assert_false(is_uppercase('ӈ'))
        // charcode 1226
        assert_false(is_uppercase('ӊ'))
        // charcode 1228
        assert_false(is_uppercase('ӌ'))
        for chn in 1230U..<1232U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 1233
        assert_false(is_uppercase('ӑ'))
        // charcode 1235
        assert_false(is_uppercase('ӓ'))
        // charcode 1237
        assert_false(is_uppercase('ӕ'))
        // charcode 1239
        assert_false(is_uppercase('ӗ'))
        // charcode 1241
        assert_false(is_uppercase('ә'))
        // charcode 1243
        assert_false(is_uppercase('ӛ'))
        // charcode 1245
        assert_false(is_uppercase('ӝ'))
        // charcode 1247
        assert_false(is_uppercase('ӟ'))
        // charcode 1249
        assert_false(is_uppercase('ӡ'))
        // charcode 1251
        assert_false(is_uppercase('ӣ'))
        // charcode 1253
        assert_false(is_uppercase('ӥ'))
        // charcode 1255
        assert_false(is_uppercase('ӧ'))
        // charcode 1257
        assert_false(is_uppercase('ө'))
        // charcode 1259
        assert_false(is_uppercase('ӫ'))
        // charcode 1261
        assert_false(is_uppercase('ӭ'))
        // charcode 1263
        assert_false(is_uppercase('ӯ'))
        // charcode 1265
        assert_false(is_uppercase('ӱ'))
        // charcode 1267
        assert_false(is_uppercase('ӳ'))
        // charcode 1269
        assert_false(is_uppercase('ӵ'))
        // charcode 1271
        assert_false(is_uppercase('ӷ'))
        // charcode 1273
        assert_false(is_uppercase('ӹ'))
        // charcode 1275
        assert_false(is_uppercase('ӻ'))
        // charcode 1277
        assert_false(is_uppercase('ӽ'))
        // charcode 1279
        assert_false(is_uppercase('ӿ'))
        // charcode 1281
        assert_false(is_uppercase('ԁ'))
        // charcode 1283
        assert_false(is_uppercase('ԃ'))
        // charcode 1285
        assert_false(is_uppercase('ԅ'))
        // charcode 1287
        assert_false(is_uppercase('ԇ'))
        // charcode 1289
        assert_false(is_uppercase('ԉ'))
        // charcode 1291
        assert_false(is_uppercase('ԋ'))
        // charcode 1293
        assert_false(is_uppercase('ԍ'))
        // charcode 1295
        assert_false(is_uppercase('ԏ'))
        // charcode 1297
        assert_false(is_uppercase('ԑ'))
        // charcode 1299
        assert_false(is_uppercase('ԓ'))
        // charcode 1301
        assert_false(is_uppercase('ԕ'))
        // charcode 1303
        assert_false(is_uppercase('ԗ'))
        // charcode 1305
        assert_false(is_uppercase('ԙ'))
        // charcode 1307
        assert_false(is_uppercase('ԛ'))
        // charcode 1309
        assert_false(is_uppercase('ԝ'))
        // charcode 1311
        assert_false(is_uppercase('ԟ'))
        // charcode 1313
        assert_false(is_uppercase('ԡ'))
        // charcode 1315
        assert_false(is_uppercase('ԣ'))
        // charcode 1317
        assert_false(is_uppercase('ԥ'))
        // charcode 1319
        assert_false(is_uppercase('ԧ'))
        // charcode 1321
        assert_false(is_uppercase('ԩ'))
        // charcode 1323
        assert_false(is_uppercase('ԫ'))
        // charcode 1325
        assert_false(is_uppercase('ԭ'))
        for chn in 1327U..<1329U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 1367U..<4256U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 4294
        assert_false(is_uppercase('\u{10c6}'))
        for chn in 4296U..<4301U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 4302U..<5024U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5110U..<7305U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7306U..<7312U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7355U..<7357U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7360U..<7680U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7681
        assert_false(is_uppercase('ḁ'))
        // charcode 7683
        assert_false(is_uppercase('ḃ'))
        // charcode 7685
        assert_false(is_uppercase('ḅ'))
        // charcode 7687
        assert_false(is_uppercase('ḇ'))
        // charcode 7689
        assert_false(is_uppercase('ḉ'))
        // charcode 7691
        assert_false(is_uppercase('ḋ'))
        // charcode 7693
        assert_false(is_uppercase('ḍ'))
        // charcode 7695
        assert_false(is_uppercase('ḏ'))
        // charcode 7697
        assert_false(is_uppercase('ḑ'))
        // charcode 7699
        assert_false(is_uppercase('ḓ'))
        // charcode 7701
        assert_false(is_uppercase('ḕ'))
        // charcode 7703
        assert_false(is_uppercase('ḗ'))
        // charcode 7705
        assert_false(is_uppercase('ḙ'))
        // charcode 7707
        assert_false(is_uppercase('ḛ'))
        // charcode 7709
        assert_false(is_uppercase('ḝ'))
        // charcode 7711
        assert_false(is_uppercase('ḟ'))
        // charcode 7713
        assert_false(is_uppercase('ḡ'))
        // charcode 7715
        assert_false(is_uppercase('ḣ'))
        // charcode 7717
        assert_false(is_uppercase('ḥ'))
        // charcode 7719
        assert_false(is_uppercase('ḧ'))
        // charcode 7721
        assert_false(is_uppercase('ḩ'))
        // charcode 7723
        assert_false(is_uppercase('ḫ'))
        // charcode 7725
        assert_false(is_uppercase('ḭ'))
        // charcode 7727
        assert_false(is_uppercase('ḯ'))
        // charcode 7729
        assert_false(is_uppercase('ḱ'))
        // charcode 7731
        assert_false(is_uppercase('ḳ'))
        // charcode 7733
        assert_false(is_uppercase('ḵ'))
        // charcode 7735
        assert_false(is_uppercase('ḷ'))
        // charcode 7737
        assert_false(is_uppercase('ḹ'))
        // charcode 7739
        assert_false(is_uppercase('ḻ'))
        // charcode 7741
        assert_false(is_uppercase('ḽ'))
        // charcode 7743
        assert_false(is_uppercase('ḿ'))
        // charcode 7745
        assert_false(is_uppercase('ṁ'))
        // charcode 7747
        assert_false(is_uppercase('ṃ'))
        // charcode 7749
        assert_false(is_uppercase('ṅ'))
        // charcode 7751
        assert_false(is_uppercase('ṇ'))
        // charcode 7753
        assert_false(is_uppercase('ṉ'))
        // charcode 7755
        assert_false(is_uppercase('ṋ'))
        // charcode 7757
        assert_false(is_uppercase('ṍ'))
        // charcode 7759
        assert_false(is_uppercase('ṏ'))
        // charcode 7761
        assert_false(is_uppercase('ṑ'))
        // charcode 7763
        assert_false(is_uppercase('ṓ'))
        // charcode 7765
        assert_false(is_uppercase('ṕ'))
        // charcode 7767
        assert_false(is_uppercase('ṗ'))
        // charcode 7769
        assert_false(is_uppercase('ṙ'))
        // charcode 7771
        assert_false(is_uppercase('ṛ'))
        // charcode 7773
        assert_false(is_uppercase('ṝ'))
        // charcode 7775
        assert_false(is_uppercase('ṟ'))
        // charcode 7777
        assert_false(is_uppercase('ṡ'))
        // charcode 7779
        assert_false(is_uppercase('ṣ'))
        // charcode 7781
        assert_false(is_uppercase('ṥ'))
        // charcode 7783
        assert_false(is_uppercase('ṧ'))
        // charcode 7785
        assert_false(is_uppercase('ṩ'))
        // charcode 7787
        assert_false(is_uppercase('ṫ'))
        // charcode 7789
        assert_false(is_uppercase('ṭ'))
        // charcode 7791
        assert_false(is_uppercase('ṯ'))
        // charcode 7793
        assert_false(is_uppercase('ṱ'))
        // charcode 7795
        assert_false(is_uppercase('ṳ'))
        // charcode 7797
        assert_false(is_uppercase('ṵ'))
        // charcode 7799
        assert_false(is_uppercase('ṷ'))
        // charcode 7801
        assert_false(is_uppercase('ṹ'))
        // charcode 7803
        assert_false(is_uppercase('ṻ'))
        // charcode 7805
        assert_false(is_uppercase('ṽ'))
        // charcode 7807
        assert_false(is_uppercase('ṿ'))
        // charcode 7809
        assert_false(is_uppercase('ẁ'))
        // charcode 7811
        assert_false(is_uppercase('ẃ'))
        // charcode 7813
        assert_false(is_uppercase('ẅ'))
        // charcode 7815
        assert_false(is_uppercase('ẇ'))
        // charcode 7817
        assert_false(is_uppercase('ẉ'))
        // charcode 7819
        assert_false(is_uppercase('ẋ'))
        // charcode 7821
        assert_false(is_uppercase('ẍ'))
        // charcode 7823
        assert_false(is_uppercase('ẏ'))
        // charcode 7825
        assert_false(is_uppercase('ẑ'))
        // charcode 7827
        assert_false(is_uppercase('ẓ'))
        for chn in 7829U..<7838U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 7839
        assert_false(is_uppercase('ẟ'))
        // charcode 7841
        assert_false(is_uppercase('ạ'))
        // charcode 7843
        assert_false(is_uppercase('ả'))
        // charcode 7845
        assert_false(is_uppercase('ấ'))
        // charcode 7847
        assert_false(is_uppercase('ầ'))
        // charcode 7849
        assert_false(is_uppercase('ẩ'))
        // charcode 7851
        assert_false(is_uppercase('ẫ'))
        // charcode 7853
        assert_false(is_uppercase('ậ'))
        // charcode 7855
        assert_false(is_uppercase('ắ'))
        // charcode 7857
        assert_false(is_uppercase('ằ'))
        // charcode 7859
        assert_false(is_uppercase('ẳ'))
        // charcode 7861
        assert_false(is_uppercase('ẵ'))
        // charcode 7863
        assert_false(is_uppercase('ặ'))
        // charcode 7865
        assert_false(is_uppercase('ẹ'))
        // charcode 7867
        assert_false(is_uppercase('ẻ'))
        // charcode 7869
        assert_false(is_uppercase('ẽ'))
        // charcode 7871
        assert_false(is_uppercase('ế'))
        // charcode 7873
        assert_false(is_uppercase('ề'))
        // charcode 7875
        assert_false(is_uppercase('ể'))
        // charcode 7877
        assert_false(is_uppercase('ễ'))
        // charcode 7879
        assert_false(is_uppercase('ệ'))
        // charcode 7881
        assert_false(is_uppercase('ỉ'))
        // charcode 7883
        assert_false(is_uppercase('ị'))
        // charcode 7885
        assert_false(is_uppercase('ọ'))
        // charcode 7887
        assert_false(is_uppercase('ỏ'))
        // charcode 7889
        assert_false(is_uppercase('ố'))
        // charcode 7891
        assert_false(is_uppercase('ồ'))
        // charcode 7893
        assert_false(is_uppercase('ổ'))
        // charcode 7895
        assert_false(is_uppercase('ỗ'))
        // charcode 7897
        assert_false(is_uppercase('ộ'))
        // charcode 7899
        assert_false(is_uppercase('ớ'))
        // charcode 7901
        assert_false(is_uppercase('ờ'))
        // charcode 7903
        assert_false(is_uppercase('ở'))
        // charcode 7905
        assert_false(is_uppercase('ỡ'))
        // charcode 7907
        assert_false(is_uppercase('ợ'))
        // charcode 7909
        assert_false(is_uppercase('ụ'))
        // charcode 7911
        assert_false(is_uppercase('ủ'))
        // charcode 7913
        assert_false(is_uppercase('ứ'))
        // charcode 7915
        assert_false(is_uppercase('ừ'))
        // charcode 7917
        assert_false(is_uppercase('ử'))
        // charcode 7919
        assert_false(is_uppercase('ữ'))
        // charcode 7921
        assert_false(is_uppercase('ự'))
        // charcode 7923
        assert_false(is_uppercase('ỳ'))
        // charcode 7925
        assert_false(is_uppercase('ỵ'))
        // charcode 7927
        assert_false(is_uppercase('ỷ'))
        // charcode 7929
        assert_false(is_uppercase('ỹ'))
        // charcode 7931
        assert_false(is_uppercase('ỻ'))
        // charcode 7933
        assert_false(is_uppercase('ỽ'))
        for chn in 7935U..<7944U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7952U..<7960U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7966U..<7976U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 7984U..<7992U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8000U..<8008U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8014U..<8025U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8026
        assert_false(is_uppercase('\u{1f5a}'))
        // charcode 8028
        assert_false(is_uppercase('\u{1f5c}'))
        // charcode 8030
        assert_false(is_uppercase('\u{1f5e}'))
        for chn in 8032U..<8040U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8048U..<8120U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8124U..<8136U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8140U..<8152U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8156U..<8168U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8173U..<8184U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8188U..<8450U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8451U..<8455U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8456U..<8459U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8462U..<8464U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8467U..<8469U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8470U..<8473U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8478U..<8484U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8485
        assert_false(is_uppercase('℥'))
        // charcode 8487
        assert_false(is_uppercase('℧'))
        // charcode 8489
        assert_false(is_uppercase('℩'))
        for chn in 8494U..<8496U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8500U..<8510U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8512U..<8517U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8518U..<8544U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8560U..<8579U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8580U..<9398U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 9424U..<11264U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11312U..<11360U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11361
        assert_false(is_uppercase('ⱡ'))
        for chn in 11365U..<11367U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11368
        assert_false(is_uppercase('ⱨ'))
        // charcode 11370
        assert_false(is_uppercase('ⱪ'))
        // charcode 11372
        assert_false(is_uppercase('ⱬ'))
        // charcode 11377
        assert_false(is_uppercase('ⱱ'))
        for chn in 11379U..<11381U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11382U..<11390U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11393
        assert_false(is_uppercase('ⲁ'))
        // charcode 11395
        assert_false(is_uppercase('ⲃ'))
        // charcode 11397
        assert_false(is_uppercase('ⲅ'))
        // charcode 11399
        assert_false(is_uppercase('ⲇ'))
        // charcode 11401
        assert_false(is_uppercase('ⲉ'))
        // charcode 11403
        assert_false(is_uppercase('ⲋ'))
        // charcode 11405
        assert_false(is_uppercase('ⲍ'))
        // charcode 11407
        assert_false(is_uppercase('ⲏ'))
        // charcode 11409
        assert_false(is_uppercase('ⲑ'))
        // charcode 11411
        assert_false(is_uppercase('ⲓ'))
        // charcode 11413
        assert_false(is_uppercase('ⲕ'))
        // charcode 11415
        assert_false(is_uppercase('ⲗ'))
        // charcode 11417
        assert_false(is_uppercase('ⲙ'))
        // charcode 11419
        assert_false(is_uppercase('ⲛ'))
        // charcode 11421
        assert_false(is_uppercase('ⲝ'))
        // charcode 11423
        assert_false(is_uppercase('ⲟ'))
        // charcode 11425
        assert_false(is_uppercase('ⲡ'))
        // charcode 11427
        assert_false(is_uppercase('ⲣ'))
        // charcode 11429
        assert_false(is_uppercase('ⲥ'))
        // charcode 11431
        assert_false(is_uppercase('ⲧ'))
        // charcode 11433
        assert_false(is_uppercase('ⲩ'))
        // charcode 11435
        assert_false(is_uppercase('ⲫ'))
        // charcode 11437
        assert_false(is_uppercase('ⲭ'))
        // charcode 11439
        assert_false(is_uppercase('ⲯ'))
        // charcode 11441
        assert_false(is_uppercase('ⲱ'))
        // charcode 11443
        assert_false(is_uppercase('ⲳ'))
        // charcode 11445
        assert_false(is_uppercase('ⲵ'))
        // charcode 11447
        assert_false(is_uppercase('ⲷ'))
        // charcode 11449
        assert_false(is_uppercase('ⲹ'))
        // charcode 11451
        assert_false(is_uppercase('ⲻ'))
        // charcode 11453
        assert_false(is_uppercase('ⲽ'))
        // charcode 11455
        assert_false(is_uppercase('ⲿ'))
        // charcode 11457
        assert_false(is_uppercase('ⳁ'))
        // charcode 11459
        assert_false(is_uppercase('ⳃ'))
        // charcode 11461
        assert_false(is_uppercase('ⳅ'))
        // charcode 11463
        assert_false(is_uppercase('ⳇ'))
        // charcode 11465
        assert_false(is_uppercase('ⳉ'))
        // charcode 11467
        assert_false(is_uppercase('ⳋ'))
        // charcode 11469
        assert_false(is_uppercase('ⳍ'))
        // charcode 11471
        assert_false(is_uppercase('ⳏ'))
        // charcode 11473
        assert_false(is_uppercase('ⳑ'))
        // charcode 11475
        assert_false(is_uppercase('ⳓ'))
        // charcode 11477
        assert_false(is_uppercase('ⳕ'))
        // charcode 11479
        assert_false(is_uppercase('ⳗ'))
        // charcode 11481
        assert_false(is_uppercase('ⳙ'))
        // charcode 11483
        assert_false(is_uppercase('ⳛ'))
        // charcode 11485
        assert_false(is_uppercase('ⳝ'))
        // charcode 11487
        assert_false(is_uppercase('ⳟ'))
        // charcode 11489
        assert_false(is_uppercase('ⳡ'))
        for chn in 11491U..<11499U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 11500
        assert_false(is_uppercase('ⳬ'))
        for chn in 11502U..<11506U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 11507U..<42560U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42561
        assert_false(is_uppercase('ꙁ'))
        // charcode 42563
        assert_false(is_uppercase('ꙃ'))
        // charcode 42565
        assert_false(is_uppercase('ꙅ'))
        // charcode 42567
        assert_false(is_uppercase('ꙇ'))
        // charcode 42569
        assert_false(is_uppercase('ꙉ'))
        // charcode 42571
        assert_false(is_uppercase('ꙋ'))
        // charcode 42573
        assert_false(is_uppercase('ꙍ'))
        // charcode 42575
        assert_false(is_uppercase('ꙏ'))
        // charcode 42577
        assert_false(is_uppercase('ꙑ'))
        // charcode 42579
        assert_false(is_uppercase('ꙓ'))
        // charcode 42581
        assert_false(is_uppercase('ꙕ'))
        // charcode 42583
        assert_false(is_uppercase('ꙗ'))
        // charcode 42585
        assert_false(is_uppercase('ꙙ'))
        // charcode 42587
        assert_false(is_uppercase('ꙛ'))
        // charcode 42589
        assert_false(is_uppercase('ꙝ'))
        // charcode 42591
        assert_false(is_uppercase('ꙟ'))
        // charcode 42593
        assert_false(is_uppercase('ꙡ'))
        // charcode 42595
        assert_false(is_uppercase('ꙣ'))
        // charcode 42597
        assert_false(is_uppercase('ꙥ'))
        // charcode 42599
        assert_false(is_uppercase('ꙧ'))
        // charcode 42601
        assert_false(is_uppercase('ꙩ'))
        // charcode 42603
        assert_false(is_uppercase('ꙫ'))
        for chn in 42605U..<42624U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42625
        assert_false(is_uppercase('ꚁ'))
        // charcode 42627
        assert_false(is_uppercase('ꚃ'))
        // charcode 42629
        assert_false(is_uppercase('ꚅ'))
        // charcode 42631
        assert_false(is_uppercase('ꚇ'))
        // charcode 42633
        assert_false(is_uppercase('ꚉ'))
        // charcode 42635
        assert_false(is_uppercase('ꚋ'))
        // charcode 42637
        assert_false(is_uppercase('ꚍ'))
        // charcode 42639
        assert_false(is_uppercase('ꚏ'))
        // charcode 42641
        assert_false(is_uppercase('ꚑ'))
        // charcode 42643
        assert_false(is_uppercase('ꚓ'))
        // charcode 42645
        assert_false(is_uppercase('ꚕ'))
        // charcode 42647
        assert_false(is_uppercase('ꚗ'))
        // charcode 42649
        assert_false(is_uppercase('ꚙ'))
        for chn in 42651U..<42786U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42787
        assert_false(is_uppercase('ꜣ'))
        // charcode 42789
        assert_false(is_uppercase('ꜥ'))
        // charcode 42791
        assert_false(is_uppercase('ꜧ'))
        // charcode 42793
        assert_false(is_uppercase('ꜩ'))
        // charcode 42795
        assert_false(is_uppercase('ꜫ'))
        // charcode 42797
        assert_false(is_uppercase('ꜭ'))
        for chn in 42799U..<42802U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42803
        assert_false(is_uppercase('ꜳ'))
        // charcode 42805
        assert_false(is_uppercase('ꜵ'))
        // charcode 42807
        assert_false(is_uppercase('ꜷ'))
        // charcode 42809
        assert_false(is_uppercase('ꜹ'))
        // charcode 42811
        assert_false(is_uppercase('ꜻ'))
        // charcode 42813
        assert_false(is_uppercase('ꜽ'))
        // charcode 42815
        assert_false(is_uppercase('ꜿ'))
        // charcode 42817
        assert_false(is_uppercase('ꝁ'))
        // charcode 42819
        assert_false(is_uppercase('ꝃ'))
        // charcode 42821
        assert_false(is_uppercase('ꝅ'))
        // charcode 42823
        assert_false(is_uppercase('ꝇ'))
        // charcode 42825
        assert_false(is_uppercase('ꝉ'))
        // charcode 42827
        assert_false(is_uppercase('ꝋ'))
        // charcode 42829
        assert_false(is_uppercase('ꝍ'))
        // charcode 42831
        assert_false(is_uppercase('ꝏ'))
        // charcode 42833
        assert_false(is_uppercase('ꝑ'))
        // charcode 42835
        assert_false(is_uppercase('ꝓ'))
        // charcode 42837
        assert_false(is_uppercase('ꝕ'))
        // charcode 42839
        assert_false(is_uppercase('ꝗ'))
        // charcode 42841
        assert_false(is_uppercase('ꝙ'))
        // charcode 42843
        assert_false(is_uppercase('ꝛ'))
        // charcode 42845
        assert_false(is_uppercase('ꝝ'))
        // charcode 42847
        assert_false(is_uppercase('ꝟ'))
        // charcode 42849
        assert_false(is_uppercase('ꝡ'))
        // charcode 42851
        assert_false(is_uppercase('ꝣ'))
        // charcode 42853
        assert_false(is_uppercase('ꝥ'))
        // charcode 42855
        assert_false(is_uppercase('ꝧ'))
        // charcode 42857
        assert_false(is_uppercase('ꝩ'))
        // charcode 42859
        assert_false(is_uppercase('ꝫ'))
        // charcode 42861
        assert_false(is_uppercase('ꝭ'))
        for chn in 42863U..<42873U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42874
        assert_false(is_uppercase('ꝺ'))
        // charcode 42876
        assert_false(is_uppercase('ꝼ'))
        // charcode 42879
        assert_false(is_uppercase('ꝿ'))
        // charcode 42881
        assert_false(is_uppercase('ꞁ'))
        // charcode 42883
        assert_false(is_uppercase('ꞃ'))
        // charcode 42885
        assert_false(is_uppercase('ꞅ'))
        for chn in 42887U..<42891U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42892
        assert_false(is_uppercase('ꞌ'))
        for chn in 42894U..<42896U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42897
        assert_false(is_uppercase('ꞑ'))
        for chn in 42899U..<42902U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42903
        assert_false(is_uppercase('ꞗ'))
        // charcode 42905
        assert_false(is_uppercase('ꞙ'))
        // charcode 42907
        assert_false(is_uppercase('ꞛ'))
        // charcode 42909
        assert_false(is_uppercase('ꞝ'))
        // charcode 42911
        assert_false(is_uppercase('ꞟ'))
        // charcode 42913
        assert_false(is_uppercase('ꞡ'))
        // charcode 42915
        assert_false(is_uppercase('ꞣ'))
        // charcode 42917
        assert_false(is_uppercase('ꞥ'))
        // charcode 42919
        assert_false(is_uppercase('ꞧ'))
        // charcode 42921
        assert_false(is_uppercase('ꞩ'))
        // charcode 42927
        assert_false(is_uppercase('ꞯ'))
        // charcode 42933
        assert_false(is_uppercase('ꞵ'))
        // charcode 42935
        assert_false(is_uppercase('ꞷ'))
        // charcode 42937
        assert_false(is_uppercase('ꞹ'))
        // charcode 42939
        assert_false(is_uppercase('ꞻ'))
        // charcode 42941
        assert_false(is_uppercase('ꞽ'))
        // charcode 42943
        assert_false(is_uppercase('ꞿ'))
        // charcode 42945
        assert_false(is_uppercase('ꟁ'))
        // charcode 42947
        assert_false(is_uppercase('ꟃ'))
        // charcode 42952
        assert_false(is_uppercase('ꟈ'))
        // charcode 42954
        assert_false(is_uppercase('ꟊ'))
        for chn in 42957U..<42960U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42961U..<42966U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 42967
        assert_false(is_uppercase('ꟗ'))
        // charcode 42969
        assert_false(is_uppercase('ꟙ'))
        // charcode 42971
        assert_false(is_uppercase('ꟛ'))
        for chn in 42973U..<42997U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 42998U..<55296U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 57344U..<65313U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 65339U..<66560U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66600U..<66736U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 66772U..<66928U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 66939
        assert_false(is_uppercase('\u{1057b}'))
        // charcode 66955
        assert_false(is_uppercase('\u{1058b}'))
        // charcode 66963
        assert_false(is_uppercase('\u{10593}'))
        for chn in 66966U..<68736U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68787U..<68944U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 68966U..<71840U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 71872U..<93760U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 93792U..<119808U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119834U..<119860U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119886U..<119912U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119938U..<119964U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119965
        assert_false(is_uppercase('\u{1d49d}'))
        for chn in 119968U..<119970U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119971U..<119973U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 119975U..<119977U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 119981
        assert_false(is_uppercase('\u{1d4ad}'))
        for chn in 119990U..<120016U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120042U..<120068U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120070
        assert_false(is_uppercase('\u{1d506}'))
        for chn in 120075U..<120077U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120085
        assert_false(is_uppercase('\u{1d515}'))
        for chn in 120093U..<120120U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 120122
        assert_false(is_uppercase('\u{1d53a}'))
        // charcode 120127
        assert_false(is_uppercase('\u{1d53f}'))
        // charcode 120133
        assert_false(is_uppercase('\u{1d545}'))
        for chn in 120135U..<120138U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120145U..<120172U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120198U..<120224U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120250U..<120276U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120302U..<120328U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120354U..<120380U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120406U..<120432U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120458U..<120488U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120513U..<120546U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120571U..<120604U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120629U..<120662U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120687U..<120720U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120745U..<120778U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 120779U..<125184U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 125218U..<127280U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127306U..<127312U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127338U..<127344U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 127370U..<1114111U {
            ensure_not(is_uppercase(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    uppercase_true();
    uppercase_false();

    fn white_space_true() -> Unit!Error {
        for chn in 9U..<14U {
            ensure(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 32
        assert_true(is_white_space(' '))
        // charcode 133
        assert_true(is_white_space('\u{85}'))
        // charcode 160
        assert_true(is_white_space('\u{a0}'))
        // charcode 5760
        assert_true(is_white_space('\u{1680}'))
        for chn in 8192U..<8203U {
            ensure(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8232U..<8234U {
            ensure(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        // charcode 8239
        assert_true(is_white_space('\u{202f}'))
        // charcode 8287
        assert_true(is_white_space('\u{205f}'))
        // charcode 12288
        assert_true(is_white_space('\u{3000}'))
    }

    fn white_space_false() -> Unit!Error {
        for chn in 0U..<9U {
            ensure_not(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 14U..<32U {
            ensure_not(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 33U..<133U {
            ensure_not(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 134U..<160U {
            ensure_not(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 161U..<5760U {
            ensure_not(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 5761U..<8192U {
            ensure_not(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8203U..<8232U {
            ensure_not(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8234U..<8239U {
            ensure_not(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8240U..<8287U {
            ensure_not(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 8288U..<12288U {
            ensure_not(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 12289U..<55296U {
            ensure_not(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
        for chn in 57344U..<1114111U {
            ensure_not(is_white_space(Int::unsafe_to_char(chn.reinterpret_as_int())), "charcode = \{chn}")
        }
    }

    white_space_true();
    white_space_false();
}
