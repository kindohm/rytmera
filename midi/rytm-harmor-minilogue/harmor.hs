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
    (imgfreqform, imgfreqform_p) = pF "imgfreqscale" (Just 0)
    (harm, harm_p) = pF "harm" (Just 0)
    (reverbwet, reverbwet_p) = pF "reverbwet" (Just 0)
    
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
                                mCC reverbwet_p 108
                              ],
                             latency = 0.1
                           }
    
    ermahgerdhermer = toShape harmorController
    