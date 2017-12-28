module Rytmera.Harmor where
    
    import Sound.Tidal.Params
    import Sound.Tidal.MIDI.Control
    
    (x, x_p) = pF "x" (Just 0.5)
    (y, y_p) = pF "y" (Just 0.5)
    (z, z_p) = pF "z" (Just 0.5)
    (prism, prism_p) = pF "prism" (Just 0.5)
    (ab, ab_p) = pF "ab" (Just 0)
    (tremdepth, tremdepth_p) = pF "tremdepth" (Just 0)
    (tremspeed, tremspeed_p) = pF "tremspeed" (Just 0)
    (imgspeed, imgspeed_p) = pF "imgspeed" (Just 0.5)
    (imgtime, imgtime_p) = pF "imgtime" (Just 0)
    (imgfreqscale, imgfreqscale_p) = pF "imgfreqscale" (Just 0)
    (imgfreqform, imgfreqform_p) = pF "imgfreqform" (Just 0)
    (harm, harm_p) = pF "harm" (Just 0)
    (reverbwet, reverbwet_p) = pF "reverbwet" (Just 0.5)

    (f1, f1_p) = pF "f1" (Just 0.5)
    (f1width, f1width_p) = pF "f1width" (Just 0.5)
    (f1mode, f1mode_p) = pF "f1mode" (Just 0)
    (f1env, f1env_p) = pF "f1env" (Just 1)
    (res1, res1_p) = pF "res1" (Just 0.5)
    (res1width, res1width_p) = pF "res1width" (Just 0.5)
    (res1offset, res1offset_p) = pF "res1offset" (Just 0.65)
    (res1mode, res1mode_p) = pF "res1mode" (Just 0)
    (f2, f2_p) = pF "f2" (Just 0.5)
    (f2width, f2width_p) = pF "f2width" (Just 0.5)
    (f2mode, f2mode_p) = pF "f2mode" (Just 0)
    (f2env, f2env_p) = pF "f2env" (Just 1)
    (res2, res2_p) = pF "res2" (Just 0.5)
    (res2width, res2width_p) = pF "res2width" (Just 0.5)
    (res2offset, res2offset_p) = pF "res2offset" (Just 0.65)
    (res2mode, res2mode_p) = pF "res2mode" (Just 0)
    
    (phaser, phaser_p) = pF "phaser" (Just 0)
    (phaserwidth, phaserwidth_p) = pF "phaserwidth" (Just 0.25)
    (phaseroffset, phaseroffset_p) = pF "phaseroffset" (Just 0.33)
    (phaserspeed, phaserspeed_p) = pF "phaserspeed" (Just 0.666)
    (phaserkbt, phaserkbt_p) = pF "phaserkbt" (Just 0.5)
    (phasermode, phasermode_p) = pF "phasermode" (Just 0)

    (phase, phase_p) = pF "phase" (Just 0.75)
    (pitch, pitch_p) = pF "pitch" (Just 0.25)
    
    (pluck, pluck_p) = pF "pluck" (Just 1)
    (reverbsize, reverbsize_p) = pF "reverbsize" (Just 0.25)
    (reverbdry, reverbdry_p) = pF "reverbdry" (Just 0.8)
    
    harmorController :: ControllerShape
    harmorController = ControllerShape { controls = [
                                mCC x_p 100,
                                mCC y_p 101,
                                mCC z_p 102,
                                mCC prism_p 103,
                                mCC ab_p 104,
                                mCC tremdepth_p 105,
                                mCC tremspeed_p 106,
                                mCC harm_p 107,
                                mCC imgtime_p 108,
                                mCC imgspeed_p 109,
                                mCC imgfreqscale_p 110,
                                mCC imgfreqform_p 111,

                                mCC f1_p 112,
                                mCC f1width_p 113,
                                -- mCC f1mode_p 114,
                                -- mCC f1env_p 115,

                                -- mCC res1_p 116,
                                -- mCC res1width_p 117,
                                -- mCC res1offset_p 118,
                                -- mCC res1mode_p 119,

                                mCC f2_p 120,
                                mCC f2width_p 121,
                                -- mCC f2mode_p 122,
                                -- mCC f2env_p 123,

                                -- mCC res2_p 124,
                                -- mCC res2width_p 125,
                                -- mCC res2offset_p 126,
                                -- mCC res2mode_p 127,

                                -- mCC phaser_p 99,
                                mCC phaserwidth_p 98,
                                mCC phaseroffset_p 92,
                                mCC phaserspeed_p 91,
                                -- mCC phaserkbt_p 90,
                                -- mCC phasermode_p 89,

                                -- mCC pluck_p 93
                                mCC phase_p 87,
                                mCC pitch_p 86,
                                mCC reverbwet_p 85,
                                mCC reverbsize_p 84,
                                mCC reverbdry_p 83
                                ],
                             latency = 0.1
                           }
    
    ermahgerdhermer = toShape harmorController
    