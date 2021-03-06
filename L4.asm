org 100h
;.stack 100h
.data
;######################################################################################################################################################################################
;###################################################################################################################################################################################### 
;###################################################################################################################################################################################### 
;######################################################################################################################################################################################
;====Map====
MAP         db "ScOre:                                                                                                                  ";0
            db "########################################################################################################################";1
            db "#                                                                                                             o o      #";2
            db "#         o                                                                                  #######% %  ###########% %#";3
            db "#        ###                                                                                 ###########################";4
            db "#        #w##                                                                          o    ########% % % % % % %      #";5
            db "#        #i##                                                                    o    ###          ################    #";6
            db "#        #n### o                                                        o   o   ###                                    #";7
            db "################# o                       o       o       o             #####                                          #";8
            db "#             ###### o o o o o o   o     ####    ###  #  ###    o  o                                           #    ####";9
            db "#% % % % %                       #####    %       %#     #%    ###### o  o  o  o           #######             ##      #";10
            db "####################################################@@@@@######################## o                        #   ##      #";11
            db "#################################################################################### o    o  o    o#o      # o ###     #";12
            db "#q-quit        w-jump                     #############################################%        %#####  %  #######   ###";13
            db "#r-restart     a-mOve left                ################                   #####################################  ####";14
            db "#              d-mOve right               ##########                                                                #  #";15
            db "############################################                  o  o                                                  #  #";16
            db "#                                                        o           o     o   o     o  o             o            ## o#";17
            db "#                                                    o  ###   #  #   #    ######    #####    #####   ###  ##  ###  ## ##";18
            db "#                                               o  ########@@@@@@@@@@#       #                 #                      ##";19
            db "#   *        o   o      o  o     o   o   o     ########################      #                 #                  #  ###";20
            db "########     #####     #####     #########     #         o          ### oo   #  o   o    o   o # o   o            # o###";21
            db "#                #     #              ######                ###############  #  #####    ##### # #####  ##  ## #########";22
            db "#% % % % %       #     #       % % % % %######%          #     # %              %               %              %       #";23
            db "##################@@@@@###################################@@@@@#########################################################";24
;===========
;              ;1        ;2        ;3        ;4        ;5        ;6        ;7        ;8        ;9        ;10        ;11      ;12        
;===========   ;012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
MAP_RESET   db "ScOre:                                                                                                                  ";0
            db "########################################################################################################################";1
            db "#                                                                                                           o o        #";2
            db "#         o                                                                                  #######% %  ###########% %#";3
            db "#        ###                                                                                 ###########################";4
            db "#        #w##                                                                          o    ########% % % % % % %      #";5
            db "#        #i##                                                                    o    ###          ################    #";6
            db "#        #n### o                                                        o   o   ###                                    #";7
            db "################# o                       o       o       o             #####                                          #";8
            db "#             ###### o o o o o o   o     ####    ###  #  ###    o  o                                           #    ####";9
            db "#% % % % %                       #####    %       %#     #%    ###### o  o  o  o           #######             ##      #";10
            db "####################################################@@@@@######################## o                        #   ##      #";11
            db "#################################################################################### o    o  o    o#o      # o ###     #";12
            db "#q-quit        w-jump                     #############################################%        %#####  %  #######   ###";13
            db "#r-restart     a-mOve left                ################                   #####################################  ####";14
            db "#              d-mOve right               ##########                                                                #  #";15
            db "############################################                  o  o                                                  #  #";16
            db "#                                                        o           o     o   o     o  o             o            ## o#";17
            db "#                                                    o  ###   #  #   #    ######    #####    #####   ###  ##  ###  ## ##";18
            db "#                                               o  ########@@@@@@@@@@#       #                 #                      ##";19
            db "#   *        o   o         o     o   o   o     ########################      #                 #                  #  ###";20
            db "########     #####     #####     #########     #         o          ### oo   #  o   o    o   o # o   o            # o###";21
            db "#                #     #              ######                ###############  #  #####    ##### # #####  ##  ## #########";22
            db "#% % % % %       #     #       % % % % %######%          #     # %              %               %              %       #";23
            db "##################@@@@@###################################@@@@@#########################################################";24
               ;1        ;2        ;3        ;4        ;5        ;6        ;7        ;8        ;9        ;10        ;11      ;12        
               ;012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
;
;RESETTING_COORDINATES
reset_enemies_pos_x         db 100,102,116,118,100,102,104,106,108,110,112,1, 3, 5, 7, 9 ,42,50,58,87,96, 104,1, 3, 5, 7, 9, 31,33,35,37,39,46,65,80,96,111
reset_enemies_pos_y         db 3,  3,  3,  3,  5,  5,  5,  5,  5,  5,  5,  10,10,10,10,10,10,10,10,13,13, 13, 23,23,23,23,23,23,23,23,23,23,23,23,23,23,23
;
;====Player_start_coordinates===
player_pos_x db 4
player_pos_y db 7    
player_coins db 0
player_dir db 0
is_dead db 0
is_player db 0
;0-left 1-right
;===============================   
;
;====Enemies_start_coordinates====  
enemies_pos_x         db 100,102,116,118,100,102,104,106,108,110,112,1, 3, 5, 7, 9 ,42,50,58,87,96, 104,1, 3, 5, 7, 9, 31,33,35,37,39,46,65,80,96,111
enemies_pos_y         db 3,  3,  3,  3,  5,  5,  5,  5,  5,  5,  5,  10,10,10,10,10,10,10,10,13,13, 13, 23,23,23,23,23,23,23,23,23,23,23,23,23,23, 23  ;start coordinates
enemies_dirs          db 2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
;0-left 1-right
;=================================
;
;====Finish_point====
end_pos_x db 7
end_pos_y db 7
is_finish db 0
;==================== 
;
;====View_Control====
left_shift  db 28h
right_shift db 0
shifting db 0
;====================
;
;====Button_codes====
buttons db "wasder"
buttons_count equ 6
pressed_button  db 0
;====================
;====Atributes nd ascii====
mobs_atr_asc equ 023Dh ;blue sky
pler_atr_asc equ 0639h ;blue sky
bckg_atr_asc equ 2038h ;space just blue sky
wall_atr_asc equ 2067h ;space just brown
coin_atr_asc equ 6F3Eh ;'o' yellow+blue sky
symb_atr equ 38h   ;blue sky
lava_atr_asc equ B24Eh ;lava dots
;==============
;
;====Usefull temp variables==== 
up_block db 0
left_block db 0
down_block db 0
right_block db 0
pos_x_tmp db 0
pos_y_tmp db 0
;==============================
;====For atribute and ascii(drawing the map)====
tmp_ascii_atribute dw 0 
tmp_ascii db 0
;===============================================
;====Fore MOVE PROC====
move_pos_x db 0
move_pos_y db 0
blocks_for_jump db 0
move_dir db 0
move_ascii db 0

can_move db 1
move_timer_sec db 0
move_timer_msec db 0
;======================
;######################################################################################################################################################################################
;###################################################################################################################################################################################### 
;###################################################################################################################################################################################### 
;###################################################################################################################################################################################### 
;
;################################################################### 
EndGame PROC 
    push ax
    
    mov is_finish,0
    
    mov al,7
    cmp al,player_pos_y
    jne fin_endgame
    
    mov al,player_pos_x
    mov bl,1
    mov cx,8
    
    for_13:
        cmp bl,al
        je win
        inc bl
    loop for_13 
    
    jmp fin_endgame
    
    win:
    mov is_finish,1
    
    fin_endgame:
    pop ax
    ret
EndGame ENDP
;###################################################################
;
;###################################################################
Reset_level PROC
    ;map reseting
    mov si,offset MAP_RESET
    mov di,offset MAP
    
    mov cx,0BB8h
    
    for_11:
    
    mov al,[si]
    cmp al,25h;enemy
    je cnt_for_11
    mov [di],al
    cnt_for_11:
    inc si
    inc di
    loop for_11
    
;    mov si,offset MAP_RESET
;    mov di,offset MAP
;    
;    mov cx,0BB8h
;    rep movsb
    
    ;player cords resetting
    mov player_pos_x,4
    mov player_pos_y,20
    mov player_coins,1
    mov player_dir,0
    mov is_dead,0
    
    ;shiftin reseting
    mov al,0
    mov left_shift,al 
    mov al,28h
    mov right_shift,al
    
    ;enemies cord resetting
    mov si,offset reset_enemies_pos_x
    mov di,offset enemies_pos_x  
    mov cx,37;count of mobs
    rep movsb
    
    mov si,offset reset_enemies_pos_y
    mov di,offset enemies_pos_y
    mov cx,37;count of mobs
    rep movsb 
    
    mov si, offset enemies_dirs
    mov cx,37;count of mobs
    mov al,2;random direction 
    
    for_7:
    mov [si],al
    loop for_7 
    
    ;for timers
    mov ah,2Ch
    int 21h
    mov move_timer_sec,dh
    mov move_timer_msec,dl
    
    ret
Reset_level ENDP
;###################################################################
;
;###################################################################
GetButtonCode PROC
    push di
    push ax
       
    jmp getbuttoncode_start
    
    setPressedButton:
    mov pressed_button,al
    jmp for_6
    getbuttoncode_fin_quit:
    mov pressed_button,'q'
    jmp getbuttoncode_fin

    getbuttoncode_start:
    mov pressed_button,0
    mov ah,1
    int 16h
    jz getbuttoncode_fin
    mov ah,0
    int 16h   
    cmp al,'q'
    je getbuttoncode_fin_quit
    mov di,offset buttons
    mov cx, buttons_count
    getButton_cycle:
    mov bh,[di]
    cmp bh,al
    je setPressedButton
    inc di
    loop getButton_cycle
    
    ;clearing the buffer
    for_6:
    mov ah,1
    int 16h
    jz getbuttoncode_fin
    mov ah,0
    int 16h 
    jmp for_6
    
    getbuttoncode_fin:
    pop ax
    pop di
    call SetPlayerDirection
;    mov ah,08h              
;    int 21h
    ret
GetButtonCode ENDP
;###################################################################
;
;###################################################################
GetBlocks macro pos_x,pos_y
    push ax
    push di
    
    mov al,pos_y
    dec al
    mov bh,120
    mul bh
    xor bh,bh
    mov bl,pos_x
    add ax,bx
    mov di,offset MAP
    add di,ax
    mov al,[di]
    mov up_block,al
    ;=========
    
    ;block down
    add di,240
    mov al,[di]
    mov down_block,al
    ;=========
    
    ;block right
    sub di,119
    mov al,[di]
    mov right_block,al
    ;=========
    
    ;block left
    sub di,2
    mov al,[di]
    mov left_block,al
    ;=========
    
    pop di
    pop ax    
GetBlocks endm
;###################################################################
;
;###################################################################
Move PROC
    
    push ax
    mov is_dead,0
    cmp pressed_button,0
    je Move_fin_no_button
    
    mov al,move_pos_y
    mov bh,120
    mul bh
    xor bh,bh
    mov bl,move_pos_x
    add ax,bx
    mov di,offset MAP
    add di,ax
        
    mov al,' '
    mov ah,[di]
    mov [di],al
    GetBlocks move_pos_x,move_pos_y
    
    jmp move_start
    
    move_fin_change_dir:
    cmp move_dir,2
    je set_dir_4
    mov move_dir,2
    jmp move_fin
    
    set_dir_4:
    mov move_dir,4    
    jmp move_fin
    
    inc_coin_count_continue:
    
    inc player_coins
    
    cmp move_dir,1
    je move_up_continue
    
    cmp move_dir,2
    je move_left_continue
    
    cmp move_dir,3
    je move_down_continue
    
    cmp move_dir,4
    je move_right_continue
    
    ;$$$$$$$$$$$$$ 
    move_up:
    jmp move_up_start
    
        dead_up:
        mov is_dead,1
        jmp Move_fin_no_button
    
    exception_move:
    dec move_pos_y
    jmp for_3
    
    move_handle:
    cmp cx,3
    je exception_move
    for_3:
    sub di,78h
    loop for_3
    jmp move_fin
    
    move_up_start:
    xor cx,cx
    
    GetBlocks move_pos_x,move_pos_y 
    cmp down_block,' '
    je move_fin
    
    cmp up_block,25h
    je dead_up
    
    cmp up_block,'o'
    je inc_coin_count_continue
    
    cmp up_block,' '
    jne move_fin
    
    move_up_continue:
    inc cx
    
    mov al,move_pos_y
    dec al
    mov move_pos_y,al
    GetBlocks move_pos_x,move_pos_y 
    
    cmp up_block,25h
    je dead_up
    
    cmp up_block,' '
    jne move_handle
    
    inc cx
    
    mov al,move_pos_y
    dec al
    mov move_pos_y,al
    GetBlocks move_pos_x,move_pos_y
    
    cmp up_block,25h
    je dead_up
    
    cmp up_block,' '
    jne move_handle
    
    inc cx
    
    jmp move_handle
       
    jmp move_fin
    ;$$$$$$$$$$$$$ 
    move_left:
        cmp is_player,0
        je m_l_cnt
        
        cmp left_block,25h
        jne not_dead_left
        
        mov is_dead,1
        jmp Move_fin_no_button
        
        not_dead_left:
        cmp left_block,'o'
        je inc_coin_count_continue 
        
        cmp left_block,' '
        jne move_fin 
                      ;PROBLEM
        dec move_pos_x
        dec di
        jmp move_fin
        
        m_l_cnt:
        cmp left_block,2Ah
        jne dead_left2
        
        mov is_dead,1
        jmp Move_fin_no_button
        
        dead_left2:
        cmp left_block,'o'
        je inc_coin_count_continue
        cmp left_block,' '
        jne move_fin_change_dir 
        move_left_continue:               ;PROBLEM
        dec move_pos_x
        dec di     
    jmp move_fin
    ;$$$$$$$$$$$$$ 
    move_right:
        cmp is_player,0
        je m_r_cnt
        
        cmp right_block,25h
        jne dead_right 
        
        mov is_dead,1
        jmp Move_fin_no_button
        
        dead_right:
        cmp right_block,'o'
        je inc_coin_count_continue
        cmp right_block,' '
        jne move_fin
                    ;PROBLEM
        inc move_pos_x
        inc di
        jmp move_fin
        
        m_r_cnt:
        cmp right_block,2Ah
        jne not_dead_right
         
        mov is_dead,1
        jmp Move_fin_no_button
        
        not_dead_right:
        cmp right_block,'o'
        je inc_coin_count_continue
        cmp right_block,' '
        jne move_fin_change_dir
        move_right_continue:       ;PROBLEM
        inc move_pos_x
        inc di
           
    jmp move_fin
    ;$$$$$$$$$$$$$ 
    move_down:
    call Delay
    cmp can_move,0
    je move_fin ;because of timer,i dont want to create new jmp 
    
        cmp is_player,0
        je m_d_cnt
        
    ;saving
    mov al,move_ascii
    mov ah,move_pos_x
    mov bl,move_pos_y
    mov bh,is_player
    mov cl,down_block
    mov ch,move_dir
    push cx
    push ax
    push bx
    
    call Fall_enemies
    call Move_enemies
    
    pop bx
    pop ax
    pop cx
    mov move_ascii,al
    mov move_pos_x,ah
    mov move_pos_y,bl
    mov is_player,bh
    mov down_block,cl
    mov move_dir,ch
     
    cmp is_dead,1
    je Move_fin_no_button
    ;saving
        
        cmp down_block,40h
        jne dead_down_in_lava
        
        mov is_dead,1
        jmp Move_fin_no_button
        
        dead_down_in_lava:
        
        cmp down_block,25h
        jne dead_down
        
        mov is_dead,1
        jmp Move_fin_no_button
        
        dead_down:
        cmp down_block,'o'
        je inc_coin_count_continue
        cmp down_block,' '
        jne move_fin
        
        inc move_pos_y 
        add di,78h
        
    jmp move_fin
        
        m_d_cnt:  
        
        cmp down_block,2Ah
        jne dead_down2
        
        mov is_dead,1
        jmp Move_fin_no_button
        
        dead_down2:
        cmp down_block,'o'
        je inc_coin_count_continue
        cmp down_block,' '
        jne move_fin
        move_down_continue:
         
        inc move_pos_y  
        add di,78h 
   
    jmp move_fin
    ;$$$$$$$$$$$$$ 
    move_start:
    
    mov al,move_dir
    
    cmp al,1
    je move_up
    cmp al,2
    je move_left
    cmp al,3
    je move_down
    cmp al,4
    je move_right
        
    move_fin:
	;===========
	mov al,move_ascii
	mov ah,[di]
    mov [di],al
    cmp is_player,0
    je Move_fin_no_button
    
    mov move_dir,0 
    
    Move_fin_no_button:
    
    pop ax
    ret
Move endp
;###################################################################
;
;###################################################################
GetAsciiAndAtribute proc
    
    jmp GetAsciiAndAtribute_start
    
    wall_draw:
    mov tmp_ascii_atribute,2067h
    jmp Getword_fin
    
    sky_draw:
    mov tmp_ascii_atribute,02038h
    jmp Getword_fin
    
    coin_draw:
    mov tmp_ascii_atribute,06F3Eh
    jmp Getword_fin
    
    lava_draw:
    mov tmp_ascii_atribute,0B2C8h
    jmp Getword_fin
    
    mob_draw:
    mov tmp_ascii_atribute,023Dh
    jmp Getword_fin
    
    player_draw:
    mov tmp_ascii_atribute,0539h
    jmp Getword_fin
    
    
    GetAsciiAndAtribute_start:
    cmp tmp_ascii,'#'
    je wall_draw
    cmp tmp_ascii,' '
    je sky_draw
    cmp tmp_ascii,'o'
    je coin_draw
    cmp tmp_ascii,'@'
    je lava_draw
    cmp tmp_ascii,'%'
    je mob_draw
    cmp tmp_ascii,'*'
    je player_draw
    
    help_draw:
    push ax
    mov ah,tmp_ascii
    mov al,38h
    mov tmp_ascii_atribute,ax
    pop ax
        
    Getword_fin:
    mov dx,tmp_ascii_atribute
    ret
GetAsciiAndAtribute endp    
;###################################################################
;
;################################################################### 
MapDraw proc 
    
    mov ax,0b800h
    mov es, ax  
    
    mov ax,19h;25 strings
    xor cx,cx
    xor bx,bx
    mov di,offset MAP
     
    ;==drawing_start==
    for:  
    
    mov dh,0
    mov dl,left_shift 
    add di,dx
    
    push cx 
    
    mov cx,50h;80 colums
    
    for_2: 
    
    mov dl,[di]
    mov tmp_ascii,dl
    call GetAsciiAndAtribute
     
    mov es:[bx],dh
    mov es:[bx+1],dl 
    
    inc di
    add bx,2
    loop for_2
    
    xor dx,dx
    mov dl,right_shift
    add di,dx
    
    pop cx
    inc cx
    cmp cx,ax
    jne for 
    
    call SetScoreStr
    ret
MapDraw endp
;###################################################################
;
;###################################################################
SetPlayerDirection PROC
    cmp pressed_button,0
    je setplayerdir_fin
    
    mov al,pressed_button
    cmp al,'w'
    jne dir_2
    mov player_dir,1
    jmp setplayerdir_fin
    
    dir_2:
    cmp al,'a'
    jne dir_3
    mov player_dir,2
    jmp setplayerdir_fin
    
    dir_3:
    cmp al,'s'
    jne dir_4
    mov player_dir,3
    jmp setplayerdir_fin
    
    dir_4:
    cmp al,'d'
    jne other_button
    mov player_dir,4
    jmp setplayerdir_fin
    
    other_button:
    
    setplayerdir_fin:
    ret
SetPlayerDirection ENDP
;###################################################################
;
;################################################################### 
From_player PROC
    cmp pressed_button,0
    je From_player_fin
    
    mov move_ascii,2Ah
    mov al,player_dir
    mov move_dir,al
    
    mov al,player_pos_x
    mov move_pos_x,al
    
    mov al,player_pos_y
    mov move_pos_y,al 
    
    From_player_fin:
    ret
From_player ENDP
;###################################################################
;
;###################################################################
To_player PROC
    cmp pressed_button,0
    je To_player_fin
    
    mov shifting,0
    jmp to_player_start
    
    set_shift_left:
    mov shifting,1
    jmp to_player_continue
    
    set_shift_right:
    mov shifting,2
    jmp to_player_continue
    
    to_player_start:
    mov al,move_dir
    mov player_dir,al
    
    mov al,move_pos_x 
    mov bl,player_pos_x
    cmp al,bl
    ja set_shift_left
    cmp bl,al
    ja set_shift_right
    
    to_player_continue:
    
    mov player_pos_x,al
    
    mov al,move_pos_y
    mov player_pos_y,al
    To_player_fin:
    ret
To_player ENDP
;###################################################################
;
;###################################################################
SetShifting PROC
    jmp setshifting_start
     
     
    left_handle:
    
    cmp left_shift,28h
    je setshifting_fin
    
    cmp player_pos_x,29h
    jb setshifting_fin
    
    inc left_shift
    dec right_shift
    
    jmp setshifting_fin
    
    
    
    right_handle:
    
    cmp right_shift,28h
    je setshifting_fin
    
    cmp player_pos_x,4fh
    ja setshifting_fin
    
    dec left_shift
    inc right_shift
    
    jmp setshifting_fin 
    
    
    setshifting_start:
    cmp shifting,0
    je setshifting_fin
    
    mov al,player_pos_x
    
    cmp shifting,1
    je left_handle
    cmp shifting,2
    je right_handle
    
    setshifting_fin:
    mov shifting,0
    ret
SetShifting ENDP
;###################################################################
;
;###################################################################
SetScoreStr PROC
    mov di, offset MAP+7
    mov al,player_coins
    mov bl,19h
    mul bl
    
    mov cx,4
    mov bx,1000
    for_5:
    xor dx,dx
    div bx
    add al,'0'
    mov [di],al
    mov ax,dx
    
    push ax
    mov ax,bx
    mov bx,10
    xor dx,dx
    div bx
    mov bx,ax
    pop ax
    
    inc di
    loop for_5
    
    ret
SetScoreStr ENDP
;###################################################################
;
;###################################################################
;DELAY 200000 (30D40h).
Delay proc  
    jmp delay_start
    
    cx_below:
    sub ax,cx
    cmp ax,25
    ja set_can_move_1_fin
    jmp delay_fin
    
    delay_start:
    mov can_move,0
    
    mov ah,2Ch
    int 21h   ;ch - hours | cl - minutes | dh - seconds | dl - 1/100 of second
    
    mov ah,0
    mov al,dh
    
    mov bl,100
    mul bl
    
    mov dh,0
    add ax,dx
    
    mov cx,ax   ;in cx new time
    
    mov ah,0
    mov al, move_timer_sec
    
    mov bl,100
    mul bl
    
    mov bh,0
    mov bl,move_timer_msec
    add ax,bx ;in ax old time
    
    cmp cx,ax
    jb cx_below
    
    sub cx,ax
    cmp cx,25     
    
    ja set_can_move_1_fin
    jmp delay_fin
    
    set_can_move_1_fin:
    cmp is_player,1
    jne cnt_tmr
    
    mov ah,2Ch
    int 21h
    mov move_timer_sec,dh
    mov move_timer_msec,dl  
    
    cnt_tmr:
    mov can_move,1
    
    delay_fin:  
  ret
Delay endp
;###################################################################
;
;###################################################################
Fall_player PROC
    
    mov pressed_button,73h
    mov player_dir,3    
    
    call From_player
    mov is_player,1
    call Move
    mov is_player,0   
    call To_player
    
    
    mov pressed_button,0
    mov player_dir,0
    
    fall_player_fin:
    ret
Fall_player ENDP
;###################################################################
;
;###################################################################
From_enemy PROC
    
    mov move_ascii,25h
    
    mov al,[bx]
    mov move_dir,al
    
    mov al,[di]
    mov move_pos_x,al
    
    mov al,[si]
    mov move_pos_y,al
    
    ret
From_enemy ENDP
;###################################################################
;
;###################################################################
Set_on_place PROC
    mov di,offset enemies_pos_x
    mov si,offset enemies_pos_y
    mov cx,37
    for_10:
    mov al,[si]
    mov bh,120
    mul bh
    xor bh,bh
    mov bl,[di]
    add ax,bx
    mov bx,offset MAP
    add bx,ax
    
    mov al,25h
    mov ah,[bx]   
    mov [bx],al
    
    inc si
    inc di
    
    loop for_10
    ret
Set_on_place ENDP
;###################################################################
;
;###################################################################
To_enemy PROC 
    
    mov al,move_dir
    mov [bx],al
    
    mov al,move_pos_x
    mov [di],al
    
    mov al,move_pos_y
    mov [si],al
    
    ret
To_enemy ENDP
;###################################################################
;
;###################################################################
Move_enemies PROC
    push si
    push di
    push cx
                
    mov bx,offset enemies_dirs
    mov di,offset enemies_pos_x
    mov si,offset enemies_pos_y

    mov cx,37
    
    for_8:
    push cx
    push si
    push di
    push bx
    
    mov pressed_button,1

    call From_enemy
    mov is_player,0
    call Move
    
    pop bx
    pop di
    pop si
    
    call To_enemy     
     
    pop cx
        cmp is_dead,1
        je move_enemies_fin
    inc di
    inc si
    inc bx
    
    loop for_8 
    
    move_enemies_fin:
    ;call Set_on_place
    
    pop cx
    pop di
    pop si
    ret
Move_enemies ENDP
;###################################################################
;
;###################################################################
Fall_enemies PROC
    push si
    push di
    push cx
    jmp fall_start
    
    set_dead_player:
    mov is_dead,1
    jmp fall_enemies_fin
    
    inc_coins:
    inc player_coins
    jmp set_place
    
    fall_start:            
    mov bx,offset enemies_dirs
    mov di,offset enemies_pos_x
    mov si,offset enemies_pos_y

    mov cx,37
    
    for_9:
    ;HERE IT COMES
    call From_enemy
    
    GetBlocks move_pos_x,move_pos_y
    
    cmp down_block,6Fh
    je inc_coins
    
    cmp down_block,2Ah
    je set_dead_player
    
    cmp down_block,' '
    jne cnt_for_9
    
    set_place:
    push cx
    push si
    push di
    push bx
    
    mov al,move_pos_y
    mov bh,120
    mul bh
    xor bh,bh
    mov bl,move_pos_x
    add ax,bx
    mov di,offset MAP
    add di,ax
        
    mov al,' '
    mov ah,[di];for debug
    mov [di],al
    
    inc move_pos_y;inc pos_y
    add di,78h    ;stay on down block
    
    mov al,move_ascii
    mov ah,[di];for debug
    mov [di],al 
    
    pop bx
    pop di
    pop si
    pop cx
    
    call To_enemy
    cnt_for_9:
    inc di
    inc si
    inc bx
    
    loop for_9 
    
    fall_enemies_fin:
    
    ;call Set_on_place
    pop cx
    pop di
    pop si
    ret
Fall_enemies ENDP
;###################################################################
;
;###################################################################
On_enemy PROC
    mov di,offset enemies_pos_x
    mov si,offset enemies_pos_y
    mov cx,37
    mov bl,player_pos_x
    mov bh,player_pos_y
    for_12:
    mov al,[di]
    mov ah,[si]
    
    cmp ah,bh
    jne for_12_cnt
    cmp al,bl
    jne for_12_cnt
    
    mov is_dead,1
    jmp on_enemy_fin
    
    for_12_cnt:
    inc si
    inc di
    loop for_12
    
    on_enemy_fin:
    ret
On_enemy ENDP
;###################################################################
;
;###################################################################
.code
start:
    mov ax, @DATA
    mov ds, ax 
    
    mov ax,0003h
    int 10h
    
    mov cx,2607h
    mov ah,01h
    int 10h 
    
    mov ah,2Ch
    int 21h
    mov move_timer_sec,dh
    mov move_timer_msec,dl
    
    call_reset_lvl:
        call Reset_level
        mov is_dead,0
    st:
        call MapDraw
    
        call GetButtonCode
        cmp pressed_button,'r'
        je call_reset_lvl
        cmp pressed_button, 'q'
        je start_fin
         
    ;mov pressed_button,77h
    ;mov player_dir,1
    
        call From_player ;player move
        mov is_player,1
        call Move        ;_=-=_
        mov is_player,0
        call To_player   ;player move 
    
        cmp is_dead,1
        je call_reset_lvl
    
        call SetShifting
    
        call Fall_player ;move player down if we can
        cmp is_dead,1
        je call_reset_lvl
        
        call On_enemy
        cmp is_dead,1
        je call_reset_lvl

        call EndGame
        cmp is_finish,1
        je call_reset_lvl
    jmp st

    start_fin:
    mov ax, 03
    int 10h
    mov ax,4C00h
	int 21h
    int 20h  
ends

end start 

