-- Lua simple XOR encrypt by Ganlv
-- https://github.com/ganlvtech/lua-simple-encrypt
key=gg.prompt({"Password:"},{""},{"text"})[1]local a=load((function(b,c)function bxor(d,e)local f={{0,1},{1,0}}local g=1;local h=0;while d>0 or e>0 do h=h+f[d%2+1][e%2+1]*g;d=math.floor(d/2)e=math.floor(e/2)g=g*2 end;return h end;local i=function(b)local j={}local k=1;local l=b[k]while l>=0 do j[k]=b[l+1]k=k+1;l=b[k]end;return j end;local m=function(b,c)if#c<=0 then return{}end;local k=1;local n=1;for k=1,#b do b[k]=bxor(b[k],string.byte(c,n))n=n+1;if n>#c then n=1 end end;return b end;local o=function(b)local j=""for k=1,#b do j=j..string.char(b[k])end;return j end;return o(m(i(b),c))end)({3054,2767,2704,2640,3411,2463,2581,3323,3066,2973,2395,1971,3509,1938,2245,2996,3339,3177,3265,2136,2222,3328,2102,2413,3462,1783,2033,1933,3498,1758,2244,2801,1775,2047,2810,3148,3193,1921,2553,2173,3030,1943,3558,2438,3568,2481,2914,3514,3105,2516,3542,3421,1815,2830,3573,3401,2670,3551,3502,3564,2724,1887,3130,3478,1842,2721,1895,3283,2753,3268,3398,2607,2064,2798,3065,2679,2726,2616,1909,2686,2821,2262,2985,2731,3584,3120,2218,3499,1884,2848,2382,2648,1880,3596,3574,2050,1736,3311,2596,2812,3184,3273,2855,2338,3029,2349,3261,3082,2494,1798,3024,3441,2056,2437,3079,2630,3466,2495,2561,1828,2227,3459,2836,2293,3049,2698,2734,3124,2267,2442,3165,3306,2915,2302,2923,2659,1739,2737,3333,2153,1916,2426,3423,2963,3362,2140,1993,3368,1967,3433,3164,3071,2572,1944,2122,2250,2373,2833,2150,3296,2163,2019,2695,2638,2141,2615,3563,1804,2248,3465,2380,3353,2595,2655,3242,2412,3344,2209,1835,3435,2888,2462,3292,3444,2416,1905,3107,3064,3081,2108,3453,3352,3225,2398,2526,3011,1830,2608,3472,3167,2133,2597,3183,2664,3315,2896,1994,3451,2889,3367,1845,2890,3325,2501,2579,2998,2981,2143,1912,2111,2939,2329,3186,3074,2453,2149,1896,1870,3098,3073,2886,2230,3583,2569,2728,2705,2156,2396,3586,2653,2809,2832,2487,3540,2042,3521,2065,2022,3469,2384,3434,2252,2458,1917,2849,3001,2258,3090,1874,2808,3236,3149,1964,3470,1748,2431,2515,3270,3241,2039,2018,2642,3335,2965,2005,3567,1956,2059,2178,2674,2601,3166,2860,2309,3254,3303,2270,2805,2082,3383,3058,2756,1836,1767,3023,2031,3128,3195,3125,3106,1934,3067,2639,2196,3132,1913,3179,2783,3537,1735,3442,2427,3533,1915,2205,2820,2536,3091,3548,2876,3218,2043,2554,1743,3577,2177,2091,2974,3337,2491,3410,2192,1894,1785,1780,2023,2908,1838,2290,1778,2555,2360,1962,2006,3172,3487,2699,2583,2057,3464,3055,2146,2868,2286,2251,1847,2171,3093,2702,2519,2342,2932,1839,2754,2777,2853,3145,1948,3360,2068,2275,2720,2291,2546,3304,2419,3175,2058,2112,2105,2314,2525,3523,1902,1936,3507,3386,1979,2135,2707,2879,1961,2760,2590,3012,2578,2772,3369,2857,2976,3497,2920,3009,2206,2231,3039,2921,2000,3593,3559,1951,2657,1958,3282,3092,2643,2573,2837,3527,2340,3047,2942,2969,3003,2074,2478,2941,3358,1974,2750,3235,3384,2551,3595,2511,2874,1968,1806,2480,3505,3562,1768,3338,2499,2255,2509,3000,2502,3013,1823,2819,2345,2944,3097,1931,2351,2795,1812,1960,2073,2730,1878,3319,2697,3513,2959,1930,3112,3102,3036,1883,3174,2421,3263,2591,3088,3332,2010,2155,2485,3279,2865,2326,2016,2609,2529,3123,2319,3345,3021,2625,2895,1818,3378,2399,2651,2706,2693,2257,1831,2612,1897,2843,2871,2714,2445,3159,2484,2585,3420,1926,1802,3547,2433,3372,2107,2126,2512,2829,3266,1765,2441,3569,1886,2628,2435,3284,2864,2884,3313,2308,3116,2523,2559,3529,3343,2238,3519,3576,1867,2970,2134,3068,2123,2296,3194,1771,2132,2299,1854,2359,3156,2586,2281,2355,2315,2881,2917,2675,3089,2560,3110,2644,2208,2288,3437,1954,3032,1762,2962,2556,3048,2826,1969,3201,2341,3272,2347,3492,2470,2960,1791,1864,3359,2863,2513,2387,2385,2840,2947,2626,2363,3419,1919,1885,3109,2151,3424,2139,2646,2522,2174,3550,2354,2092,3276,3592,3329,2415,2663,1763,2866,2872,3203,2379,3340,3016,1781,2376,2009,2087,2893,3262,2052,3113,2940,2037,1793,3334,2957,1935,3271,2980,3200,1991,1808,3439,2028,3506,1770,2955,2791,2527,3246,1986,3541,3336,1966,3196,2773,3351,2325,2386,3298,2316,3557,3324,1868,2317,3114,1837,3377,3580,2279,2166,3515,3222,2233,2414,3572,2436,1901,2603,1855,2775,3501,2684,3213,3404,2498,2978,2318,2190,2794,2919,2098,2696,2950,3504,3141,3185,2070,2967,2137,2093,2584,1988,2594,3426,3407,2194,2026,3063,2240,2746,2762,2336,2343,3094,3223,3456,3480,2292,3391,2024,2337,2369,2021,2911,2790,1955,3445,2327,3240,3481,2032,2901,3187,2854,2669,2547,2938,2455,2582,1834,2420,2452,2307,1937,2774,3532,1810,2880,3115,2897,2936,2002,2103,1908,2856,2838,3170,2261,2544,3154,1891,3140,1920,2986,3371,3059,3479,3356,2027,1738,2703,3579,2172,1782,3491,3440,2538,2045,2483,2844,2951,1803,3454,2763,1826,2751,1799,2283,2294,3101,2656,2700,2264,2641,2665,2228,2474,3230,3168,2814,2401,2799,2749,1861,3244,2077,1876,3322,2587,2562,3347,3438,1865,2891,2634,3280,2040,2688,2834,1753,1840,3588,2666,1750,2170,2145,2622,2142,3286,3260,2605,3575,3042,2627,1851,2718,3566,2273,2859,1816,2055,3019,2378,1796,2925,1829,3018,1797,3581,3302,2287,2377,3361,2759,1940,3269,3137,2083,3477,2632,2109,3482,1911,1742,2049,1927,3135,2067,2079,2236,3189,3517,2312,3122,2167,3131,2223,3100,1918,2708,2464,2249,3349,3457,2038,3231,2824,2977,1987,3455,2927,1759,2489,2030,2929,3252,2072,3173,1859,2348,2692,2339,2517,3530,1821,1904,1947,3005,3556,3590,3198,3432,1881,2025,1850,2096,2676,2958,2118,2530,2729,3204,2787,2701,1747,2898,2165,2681,2537,2046,2945,3143,3436,2188,2882,3229,3108,2110,2088,3062,2845,3394,3295,3493,2266,2937,3316,1990,2152,3406,2823,2565,1849,3475,1892,2215,2715,3538,3355,3414,1751,2364,2742,2910,3142,2081,2138,2241,2465,3256,2685,3415,1980,3449,2611,2781,1755,2394,2761,3431,3037,3084,2199,1869,2094,2792,3278,3317,2012,2709,1745,2350,3460,3375,2779,1843,2274,2468,2924,2099,3086,2390,2623,2786,2988,2034,2310,1910,1824,1752,2008,3056,3446,2532,2130,3040,3015,2789,2120,3169,3528,1794,2182,2303,2580,2066,2736,2158,2424,2181,2875,2510,3539,3416,3103,1952,2332,3485,2995,3571,3546,3121,2469,3182,2425,2877,2277,1740,2802,2804,3199,3393,2333,2964,2989,2878,1872,3400,2817,1844,3447,3031,2610,3096,1848,1774,3428,2374,2457,2906,3041,2335,2550,3422,2575,3390,2184,1863,1779,2869,2429,2280,3232,3342,2321,2662,2397,2305,2200,2633,2423,3488,3429,1879,3357,3452,3281,2368,2563,3535,3534,2475,3161,1784,3211,1801,2971,3321,2410,2806,3026,2650,3443,2195,1973,1965,3087,3202,3136,2486,3257,2847,2922,2328,3366,2691,2467,2961,3467,2766,2747,3484,1764,1773,1925,3219,3494,2147,2125,2711,1923,2259,1787,2344,3392,3512,3397,1817,2473,3473,3483,1975,2313,2533,2613,2827,3561,3382,3305,3578,1809,3430,3077,1950,2943,2549,3524,3312,3072,3052,2948,3277,3290,2861,1877,2044,2913,2020,3318,3341,3238,3050,2956,2954,3373,3111,2987,2841,1977,2454,3536,2085,3510,2404,2269,3206,2476,2520,2991,3526,2007,3495,1860,2778,2001,3205,3134,2604,2183,3545,2713,2207,2710,2966,1995,3004,3181,2224,2621,1890,2221,2432,1924,1893,2624,1795,3057,2371,2211,2003,2117,2237,3163,3458,2061,3379,3051,2926,2095,1898,2739,2850,3044,2048,2606,2176,3180,2346,3239,3486,2867,2800,3417,1941,2661,2797,3555,3408,2460,1959,3299,3255,3083,2570,1769,3006,2451,1989,2210,2405,2116,3033,2482,2430,2831,3080,3127,2282,2400,3069,3471,2975,2383,3370,1761,3489,2716,2631,2521,2131,2263,3020,2577,2885,1997,3413,2407,2334,3233,3363,2535,2323,3387,2822,2658,1972,1857,3259,3178,2144,2770,2243,1949,2548,2352,2366,2839,1873,2600,1953,2365,2620,1858,3139,2189,1922,2357,2903,3008,3518,2242,2179,2015,3587,2496,1788,2013,3490,1914,2247,2904,2680,3289,1998,2599,2035,3389,3385,2219,2992,2128,1985,3308,3248,1807,2069,2796,2080,1814,2403,2842,2392,2304,2409,3427,3117,2375,3554,1789,2164,2816,2918,2300,2828,2668,2406,1756,2254,3038,2984,2568,2198,3552,1906,2114,3291,3022,3274,3151,2402,1811,2588,2381,3476,2673,2106,2448,2260,3380,3224,2892,2203,3025,2157,3215,2284,3330,3209,2722,2934,3496,2331,1827,1939,2558,2566,3300,2017,2543,2683,2370,2041,3046,3461,2733,3061,2193,1792,2505,2113,2447,2229,3075,3396,1846,2226,3320,2161,3010,2497,2545,2571,1976,2993,2500,2768,1875,2101,3017,2418,2788,2217,1744,2202,2493,2220,1945,3395,2983,3425,2712,1889,3310,3293,2539,3197,2793,3544,1741,2825,1760,3188,3376,3350,2256,2201,3192,2322,2389,2508,2813,3463,1776,2472,2246,3190,2362,3078,2682,2014,2162,1963,1871,3085,3285,2225,2654,3162,2930,3399,3309,1866,2444,2367,3104,2180,2075,2488,2619,2883,3287,2540,3208,2289,2216,2372,2873,2466,2953,2994,1749,3543,2592,2129,2776,1981,2782,2758,1929,1957,3153,2652,3258,1746,2858,2752,3326,3227,2574,2846,1900,3220,2928,3099,2063,2687,2272,3028,2671,2089,3043,2214,3076,3157,2295,2353,3147,3346,3508,3354,3553,2060,2552,2168,2276,2330,3511,3138,2660,1982,2909,2748,2815,2298,2160,2443,2735,3126,1862,2051,2265,2078,3585,2479,2084,3405,2769,1825,2450,3217,2982,2324,3294,2694,2534,3243,2507,2672,2100,2637,1800,3402,2629,2285,2477,2723,2191,2239,2004,2785,1820,3214,2689,3275,3267,3234,3212,3216,1942,2887,2593,2297,3503,1757,2602,1841,2514,3034,3002,3365,2618,2492,2541,1983,3155,2361,2503,2124,3403,2062,2169,3249,3331,2931,2589,2459,2745,2738,2301,2422,2159,2564,2393,2320,2036,2894,2946,2818,3264,1970,2391,2253,2997,2614,2952,3119,2185,2905,2531,2197,1852,2490,1813,3191,2862,2456,2204,2755,1999,2764,2411,2807,3253,1766,2744,2471,1903,2635,3221,3070,3560,2121,3158,2949,3450,2717,3146,3297,2727,2598,3364,2358,2576,3144,2278,3228,2907,3210,2851,2461,2518,2743,2719,2567,3150,2154,2690,3522,2979,2090,2784,3171,2115,2916,3418,2972,1822,2935,1996,3516,2232,3007,1786,3245,2076,1805,2649,3327,2912,-1,95,93,118,16,89,49,22,92,90,80,70,65,5,10,74,2,3,16,43,184,81,12,59,14,84,11,23,65,51,29,95,87,20,16,94,82,75,239,18,126,47,80,103,91,115,16,89,68,86,113,27,24,95,91,68,169,115,127,95,49,59,84,60,71,120,79,62,94,50,66,55,89,58,81,77,81,85,82,84,30,29,21,123,82,19,81,88,89,62,8,123,62,95,88,36,127,23,242,231,112,96,7,53,25,29,100,58,21,55,62,60,68,70,2,17,4,61,42,202,58,20,113,61,84,19,17,93,30,123,26,67,93,80,19,18,17,24,95,123,94,85,13,89,85,94,31,94,119,59,15,22,15,58,30,81,29,3,10,59,2,91,84,58,89,202,42,88,84,61,32,74,56,146,97,87,23,80,16,70,31,18,33,112,18,30,95,59,32,42,59,7,55,114,51,82,81,13,222,93,17,36,58,68,90,87,23,59,20,14,31,118,48,16,88,93,63,38,20,112,81,59,86,11,0,13,87,85,23,93,30,32,88,8,95,3,11,16,55,88,26,53,88,31,199,67,25,59,23,18,210,93,23,19,74,23,92,24,47,85,16,91,18,62,59,19,67,89,5,21,18,63,8,3,69,69,71,46,19,57,11,84,27,20,127,96,1,25,93,81,16,64,66,22,82,103,85,87,68,65,1,55,10,89,62,26,66,76,24,95,114,26,73,39,91,83,100,28,31,129,146,80,17,70,17,82,74,25,28,23,2,104,26,1,23,88,70,91,30,25,17,24,61,114,24,59,28,27,56,0,94,53,22,51,115,21,13,24,7,17,126,31,124,114,68,24,40,22,11,17,106,89,0,70,10,81,123,30,83,112,101,88,66,66,21,81,20,92,11,29,123,115,86,168,42,66,23,116,25,55,92,83,82,57,67,59,66,0,94,84,112,114,89,120,176,66,87,50,52,69,7,28,65,87,21,79,62,82,86,112,89,5,30,65,64,79,27,86,25,26,16,176,38,15,70,75,32,21,56,19,57,61,201,214,27,66,26,23,16,25,55,94,27,112,50,69,115,2,85,107,13,13,84,16,90,17,30,42,121,203,24,114,23,74,93,119,104,76,114,16,91,60,114,32,124,87,13,58,80,19,22,205,21,65,93,33,60,51,79,93,95,84,86,23,16,53,85,11,66,31,82,28,67,18,91,93,28,27,68,41,86,81,81,94,213,81,21,8,30,123,30,36,21,16,95,19,75,21,82,27,34,15,30,70,9,64,98,12,49,31,29,23,17,49,59,27,94,40,90,59,59,123,201,17,114,90,88,166,84,59,54,3,21,122,87,67,15,61,19,24,75,115,0,26,117,58,114,86,89,2,6,24,92,79,25,123,94,81,114,119,86,121,23,11,21,11,16,66,82,112,90,11,72,94,112,88,73,95,28,25,89,42,95,68,6,92,64,82,59,81,64,29,83,24,88,15,95,82,53,80,78,84,26,74,249,3,93,76,53,17,28,114,84,57,23,89,12,96,11,116,59,89,114,85,134,63,90,41,66,90,27,98,15,31,13,111,74,26,22,74,18,23,16,89,214,79,18,46,53,119,195,64,38,27,62,99,191,58,88,31,67,77,109,81,85,4,115,92,94,26,11,123,114,79,127,114,21,13,99,41,77,22,82,0,34,94,82,54,70,31,118,84,66,10,74,18,70,64,85,31,60,116,11,29,91,88,112,94,24,82,87,98,61,28,127,18,86,8,59,58,109,112,237,70,28,77,95,21,85,71,85,50,86,94,11,30,82,20,52,2,168,16,28,52,84,87,20,115,27,59,81,77,17,90,68,67,94,12,246,15,28,83,71,95,65,95,1,21,84,31,0,51,2,21,84,30,114,70,22,84,93,93,38,56,46,42,121,84,33,86,119,58,88,56,77,15,62,24,115,84,66,56,20,57,81,81,90,91,17,41,80,30,97,66,13,62,115,61,100,23,19,17,23,85,84,26,3,30,95,82,90,70,69,184,69,119,74,90,0,67,62,114,123,63,23,17,70,23,28,49,25,120,242,22,27,23,33,90,16,74,28,185,94,245,81,94,123,3,84,68,70,21,79,85,66,79,31,94,91,23,19,67,25,42,68,30,4,21,92,25,94,18,86,210,32,64,53,94,14,23,49,85,83,36,29,87,64,122,79,17,91,30,80,82,10,127,81,26,27,85,41,66,24,84,28,15,67,112,101,80,28,120,88,17,91,60,16,76,64,114,95,28,89,27,21,113,60,8,96,89,53,69,89,72,92,30,69,34,95,17,89,70,16,17,50,93,21,91,114,94,119,82,86,250,1,15,0,30,77,59,116,51,75,29,38,58,42,66,92,68,25,116,86,115,91,90,205,114,66,88,70,28,65,115,76,23,127,10,33,88,22,86,85,52,22,87,49,58,21,154,21,60,68,49,23,124,116,45,82,81,21,56,111,40,58,91,11,1,64,78,57,29,19,60,66,63,20,89,124,82,23,18,21,85,55,58,92,11,41,123,23,79,115,85,23,21,5,18,134,42,16,27,95,92,30,31,1,93,88,21,88,81,94,41,30,28,3,115,22,28,74,74,62,111,32,38,31,103,58,115,93,59,114,116,60,96,99,1,81,83,114,16,70,89,96,129,88,80,11,82,71,120,73,89,75,46,86,16,83,121,84,30,85,29,87,16,16,89,99,41,22,23,31,75,88,95,17,91,84,142,26,21,30,114,58,95,3,84,67,61,28,15,23,31,64,56,69,46,82,12,26,32,84,23,0,107,38,94,31,90,28,90,93,92,182,6,58,95,62,23,71,93,88,58,59,27,49,91,79,20,84,29,86,81,108,81,103,19,115,81,89,22,3,69,74,83,53,76,19,57,55,79,62,16,28,4,40,25,24,59,201,88,123,41,30,93,49,23,94,26,62,69,3,172,32,28,114,16,67,86,0,201,91,77,87,75,38,15,24,70,17,59,88,32,92,91,78,81,23,253,127,58,94,86,88,27,118,122,28,72,84,16,18,66,27,87,28,68,15,103,21,93,12,56,82,13,61,18,99,31,87,8,90,3,15,65,80,60,63,25,91,158,7,9,126,84,6,17,90,25,82,64,23,91,57,46,89,62,86,11,94,31,101,127,138,60,68,84,26,93,59,92,0,68,81,168,127,123,13,223,64,121,28,69,26,70,89,10,23,24,85,49,66,125,41,95,62,31,67,76,31,94,57,15,60,92,91,93,29,84,55,49,94,100,22,116,66,112,10,52,87,104,245,80,115,112,88,67,64,4,32,114,30,69,26,74,112,64,92,53,87,94,64,17,76,76,18,28,92,90,127,114,61,41,94,22,21,88,88,56,81,71,23,28,52,123,49,115,76,69,28,19,9,29,62,88,27,91,84,15,38,26,32,9,74,20,22,56,26,114,69,63,19,129,86,75,77,186,38,56,69,78,16,76,84,120,75,26,6,14,31,86,61,16,23,31,60,30,75,70,33,84,30,76,113,58,52,88,64,80,76,126,90,42,19,59,88,39,23,65,84,84,31,23,19,3,24,252,20,14,89,112,81,24,95,112,67,69,20,89,6,26,70,30,59,5,13,0,82,17,16,23,84,22,82,125,85,84,24,87,86,76,126,18,6,117,13,21,63,87,84,27,7,79,147,59,87,38,87,58,29,8,51,94,85,19,84,12,30,11,70,31,117,66,84,17,86,23,115,103,222,83,118,88,90,28,30,214,127,58,89,22,89,69,140,94,88,18,58,74,75,27,87,57,0,28,31,3,93,115,59,95,24,67,28,29,60,116,111,32,22,93,70,56,95,82,62,89,27,79,56,29,81,61,16,89,92,89,84,112,55,66,1,66,87,89,114,89,62,94,8,87,108,97,8,68,62,19,53,114,56,30,33,59,64,81,86,93,58,124,116,30,92,90,93,83,31,103,70,23,83,15,87,30,112,67,68,16,24,71,13,30,116,25,95,38,123,30,117,91,61,78,76,38,4,17,169,41,31,56,18,21,70,75,8,82,59,68,88,91,80,75,13,78,24,121,160,79,22,4,58,170,85,116,41,24,94,33,28,21,74,63,10,85,23,89,25,71,38,86,27,11,76,22,56,122,4,17,60,70,82,16,90,71,82,84,77,84,123,74,26,113,57,86,28,20,221,58,23,10,67,13,91,16,28,93,30,27,81,82,24,12,64,63,122,158,58,239,24,83,72,18,31},key))if a then a()else gg.alert("WRONG PASSWORD!")end