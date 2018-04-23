SECTION "Map_232D_Fun", ROM0[$B800]

Map_232D_Fun_Header:
    hdr_tileset         0
    hdr_dimensions      5, 11
    hdr_pointers_a      Map_232D_Fun_Blocks, Map_232D_Fun_TextPointers
    hdr_pointers_b      Map_232D_Fun_Script, Map_232D_Fun_Objects
    hdr_pointers_c      Map_232D_Fun_InitScript, Map_232D_Fun_RAMScript
    hdr_palette         $06
    hdr_music           MUSIC_ROUTES1, AUDIO_1
    hdr_connection      NORTH, $223A, 9, 10
    hdr_connection      SOUTH, $0000, 0, 0
    hdr_connection      WEST,  $2435, 18, 12
    hdr_connection      EAST,  $0000, 0, 0
    
Map_232D_Fun_Objects:
    hdr_border          $0f
    hdr_warp_count      0
    hdr_sign_count      1
    hdr_signpost        7, 5, $03
    hdr_object_count    2
    hdr_object          SPRITE_BUG_CATCHER, 7, 13, STAY, NONE, $02
    hdr_object          SPRITE_YOUNG_BOY, 4, 4, STAY, NONE, $01

Map_232D_Fun_RAMScript:
    rs_write_3 $c6f6, $0f, $31, $0f
    rs_write_3 $c701, $0f, $31, $0f
    rs_fill_byte $7b
    rs_fill_3 $c761
    rs_fill_3 $c76c
    rs_end

Map_232D_Fun_Blocks:
    db $0f,$31,$0f,$0f,$0f
    db $0f,$31,$0a,$0a,$0f
    db $0f,$31,$31,$08,$0f
    db $0f,$0a,$0a,$31,$0f
    db $0f,$66,$6d,$31,$6e
    db $0f,$66,$0f,$31,$6e
    db $0f,$66,$6d,$0a,$6e
    db $0f,$66,$0f,$6f,$0f
    db $90,$7b,$0f,$0f,$0f
    db $90,$7b,$0f,$0f,$0f
    db $0f,$0f,$0f,$0f,$0f

Map_232D_Fun_TextPointers:
    dw Map_232D_Fun_TX1
    dw Map_232D_Fun_TX3
    dw Map_232D_Fun_TX2

Map_232D_Fun_InitScript:
    ret
Map_232D_Fun_Script:
    ret

Map_232D_Fun_TX1:
    TX_ASM
    jp EnhancedTextOnly
    text "I heard they've just started"
    next "building a road here."
    para "For now however, this path"
    next "really seems to serve"
    cont "no real purpose."
    done

Map_232D_Fun_TX2:
    TX_ASM
    jp EnhancedTextOnly
    text "Western - Eastern"
    next "Glitchland Pass"
    para "In construction"
    done

Map_232D_Fun_TX3:
    TX_ASM
    jp EnhancedTextOnly
    text "Some progress was made"
    next "towards building that path."
    cont "It's about time."
    para "Also, someone seems to live"
    next "on the other side of that"
    cont "small river."
    para "But I haven't seen him in a"
    next "while. I'm kind of worried."
    para "Just kidding. Who cares"
    next "about that guy?"
    done
