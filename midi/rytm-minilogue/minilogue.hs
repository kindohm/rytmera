module Rytmera.Minilogue where
    
    import Sound.Tidal.Params
    import Sound.Tidal.MIDI.Control    
    
    (noise, noise_p) = pF "noise" (Just 0)
    (shape1, shape1_p) = pF "shape1" (Just 0)
    (shape2, shape2_p) = pF "shape2" (Just 0)
    (vol1, vol1_p) = pF "vol1" (Just 1)
    (vol2, vol2_p) = pF "vol2" (Just 1)
    (xmod, xmod_p) = pF "xmod" (Just 0)
    (pitchmod, pitchmod_p) = pF "pitchmod" (Just 0.5)
    (egint, egint_p) = pF "egint" (Just 0.5)

    (egattack, egattack_p) = pF "egattack" (Just 0)
    (egdecay, egdecay_p) = pF "egdecay" (Just 0)
    (egsustain, egsustain_p) = pF "egsustain" (Just 1)
    (egrelease, egrelease_p) = pF "egrelease" (Just 0)
    (voicedepth, voicedepth_p) = pF "voicedepth" (Just 0)
    (oct1, oct1_p) = pF "oct1" (Just 0.5)
    (oct2, oct2_p) = pF "oct2" (Just 0.5)
    (wave1, wave1_p) = pF "wave1" (Just 1)
    (wave2, wave2_p) = pF "wave2" (Just 1)
    (sync, sync_p) = pF "sync" (Just 0)
    (ring, ring_p) = pF "ring" (Just 0)
    (lfotarget, lfotarget_p) = pF "lfotarget" (Just 0)
    (lforate, lforate_p) = pF "lforate" (Just 0)
    (lfomod, lfomod_p) = pF "lfomod" (Just 0)
    (lfowave, lfowave_p) = pF "lfowave" (Just 0.5)
    (mlpitch1, mlpitch1_p) = pF "pitch1" (Just 0.5)
    (mlpitch2, mlpitch2_p) = pF "pitch2" (Just 0.5)
    
    minilogueController :: ControllerShape
    minilogueController = ControllerShape { controls = [
        mCC noise_p 1,
        mCC mlpitch1_p 2,
        mCC mlpitch2_p 3,
        mCC shape1_p 4,
        mCC shape2_p 5,
        mCC vol1_p 7,
        mCC vol2_p 8,
        mCC xmod_p 9,
        mCC pitchmod_p 10,
        
        mCC cutoff_p 11,
        mCC resonance_p 12,

        mCC egint_p 13,
        mCC egattack_p 20,
        mCC egdecay_p 21,
        mCC egsustain_p 22,
        mCC egrelease_p 23,
        mCC lforate_p 24,
        mCC lfoint_p 26,
        mCC voicedepth_p 27,

        mCC hcutoff_p 29,
        mCC delaytime_p 30,
        mCC delayfeedback_p 31,
        mCC oct1_p 64,
        mCC oct2_p 65,
        mCC wave1_p 66,
        mCC wave2_p 67,
        mCC sync_p 80,
        mCC ring_p 81,
        mCC lfotarget_p 90,
        mCC lfomod_p 91,
        mCC lfowave_p 92,
        mCC portamento_p 61
     ],
                             latency = 0.1
                           }
    
    ml = toShape minilogueController
    