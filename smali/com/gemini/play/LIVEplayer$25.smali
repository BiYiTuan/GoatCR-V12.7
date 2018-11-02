.class final Lcom/gemini/play/LIVEplayer$25;
.super Ljava/lang/Object;
.source "LIVEplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LIVEplayer;->checkVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 3714
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$25;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 3716
    sget-boolean v2, Lcom/gemini/play/LIVEplayer;->check_playing_running:Z

    if-nez v2, :cond_1

    .line 3965
    :cond_0
    :goto_0
    return-void

    .line 3719
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "live check_playing_running true "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3721
    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v3, "p2p://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v3, "forcetv://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    invoke-static {v2}, Lcom/gemini/play/LIVEplayer;->isUseHlsPlugin(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 3722
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerreopen()I

    move-result v5

    .line 3723
    .local v5, "seek":I
    if-ltz v5, :cond_2

    .line 3724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============mediaplayerreopen============ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3726
    :cond_2
    const/4 v2, 0x1

    if-lt v5, v2, :cond_3

    .line 3727
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    if-nez v2, :cond_6

    .line 3728
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    sget-object v3, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget-object v4, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v6, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v4, v6}, Lcom/gemini/play/LIVEplayer;->get_next_line(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/gemini/play/LIVEplayer;->playVideoForHard(Lcom/gemini/play/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3741
    .end local v5    # "seek":I
    :cond_3
    :goto_1
    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 3742
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    if-nez v2, :cond_d

    .line 3743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BufferPercentage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v3}, Lcom/gemini/play/VideoView;->getBufferPercentage()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3744
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v2}, Lcom/gemini/play/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/gemini/play/LIVEplayer;->check_playing_currentid:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/gemini/play/LIVEplayer;->check_playing_currentid:Ljava/lang/String;

    sget-object v3, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 3745
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/gemini/play/LIVEplayer;->check_playing_line:I

    sget v3, Lcom/gemini/play/LIVEplayer;->currentLine:I

    if-ne v2, v3, :cond_9

    .line 3747
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    .line 3748
    const/16 v16, 0xc

    .line 3749
    .local v16, "check_playing_timeout":I
    sget v2, Lcom/gemini/play/MGplayer;->liveplaytimeout:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_4

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v3, "gp2p://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3750
    sget v2, Lcom/gemini/play/MGplayer;->liveplaytimeout:I

    div-int/lit8 v16, v2, 0x5

    .line 3752
    :cond_4
    sget v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    .line 3753
    sget v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    move/from16 v0, v16

    if-lt v2, v0, :cond_5

    .line 3754
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    .line 3755
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    .line 3756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "live check_playing_running timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3757
    sget-object v6, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    sget-object v7, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v3, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v2, v3}, Lcom/gemini/play/LIVEplayer;->get_next_line(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/gemini/play/LIVEplayer;->playVideoForHard(Lcom/gemini/play/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3963
    .end local v16    # "check_playing_timeout":I
    :cond_5
    :goto_2
    sget-boolean v2, Lcom/gemini/play/LIVEplayer;->check_playing_running:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gemini/play/LIVEplayer$25;->val$mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 3729
    .restart local v5    # "seek":I
    :cond_6
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 3730
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    sget-object v3, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget-object v4, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v6, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v4, v6}, Lcom/gemini/play/LIVEplayer;->get_next_line(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/gemini/play/LIVEplayer;->playVideoForHard2(Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3731
    :cond_7
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 3732
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v2, :cond_3

    .line 3733
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    sget-object v3, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget-object v4, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v6, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v4, v6}, Lcom/gemini/play/LIVEplayer;->get_next_line(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/gemini/play/LIVEplayer;->playVideoForSoft(Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3734
    :cond_8
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 3735
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v2, :cond_3

    .line 3736
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    sget-object v3, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget-object v4, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v6, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v4, v6}, Lcom/gemini/play/LIVEplayer;->get_next_line(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/gemini/play/LIVEplayer;->playVideoForSoft2(Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3760
    .end local v5    # "seek":I
    :cond_9
    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sput-object v2, Lcom/gemini/play/LIVEplayer;->check_playing_currentid:Ljava/lang/String;

    .line 3761
    sget v2, Lcom/gemini/play/LIVEplayer;->currentLine:I

    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_line:I

    .line 3762
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    .line 3764
    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v3, "rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_a
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    .line 3765
    invoke-virtual {v2}, Lcom/gemini/play/VideoView;->isPlaying()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    sget v2, Lcom/gemini/play/MGplayer;->liveplaytimeout:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_5

    sget-object v2, Lcom/gemini/play/LIVEplayer;->check_playing_currentid:Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/gemini/play/LIVEplayer;->check_playing_currentid:Ljava/lang/String;

    sget-object v3, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 3766
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/gemini/play/LIVEplayer;->check_playing_line:I

    sget v3, Lcom/gemini/play/LIVEplayer;->currentLine:I

    if-ne v2, v3, :cond_5

    .line 3767
    invoke-static {}, Lcom/gemini/play/MGplayer;->getUidRxBytes()J

    move-result-wide v20

    .line 3768
    .local v20, "speed_v":J
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v2}, Lcom/gemini/play/VideoView;->getCurrentPosition()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    .line 3769
    .local v18, "currentPosition":J
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v2}, Lcom/gemini/play/VideoView;->getDuration()I

    move-result v17

    .line 3770
    .local v17, "duration":I
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v2}, Lcom/gemini/play/VideoView;->getBufferPercentage()I

    move-result v15

    .line 3772
    .local v15, "buffer":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MGplayer.getUidRxBytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " speed_nothings_times="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3775
    sget-wide v2, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_b

    .line 3776
    sput-wide v18, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    .line 3779
    :cond_b
    const-wide/16 v2, 0xf

    cmp-long v2, v20, v2

    if-gez v2, :cond_c

    sget-wide v2, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    cmp-long v2, v2, v18

    if-nez v2, :cond_c

    .line 3780
    sget v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    .line 3786
    :goto_3
    sget v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    const/4 v3, 0x6

    if-le v2, v3, :cond_5

    .line 3787
    const-string v2, "MGplayer.getUidRxBytes Reset Play"

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3788
    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v3, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v2, v3}, Lcom/gemini/play/LIVEplayer;->get_next_line(Ljava/lang/String;I)I

    move-result v8

    .line 3789
    .local v8, "line":I
    sget-object v6, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    sget-object v7, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/gemini/play/LIVEplayer;->playVideoForHard(Lcom/gemini/play/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3790
    const-string v2, "MGplayer.getUidRxBytes Reset Play 2"

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3791
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    .line 3792
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    goto/16 :goto_2

    .line 3782
    .end local v8    # "line":I
    :cond_c
    sput-wide v18, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    .line 3783
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    goto :goto_3

    .line 3801
    .end local v15    # "buffer":I
    .end local v17    # "duration":I
    .end local v18    # "currentPosition":J
    .end local v20    # "speed_v":J
    :cond_d
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 3861
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 3862
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v2}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Lcom/gemini/play/LIVEplayer;->check_playing_currentid:Ljava/lang/String;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/gemini/play/LIVEplayer;->check_playing_currentid:Ljava/lang/String;

    sget-object v3, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 3863
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget v2, Lcom/gemini/play/LIVEplayer;->check_playing_line:I

    sget v3, Lcom/gemini/play/LIVEplayer;->currentLine:I

    if-ne v2, v3, :cond_e

    .line 3866
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    .line 3867
    const/16 v16, 0x12

    .line 3868
    .restart local v16    # "check_playing_timeout":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check_playing_times:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3869
    sget v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    .line 3870
    sget v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    move/from16 v0, v16

    if-le v2, v0, :cond_5

    .line 3871
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    .line 3872
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    .line 3873
    const-string v2, "soft Reset Play1 "

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3874
    sget-object v9, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    sget-object v10, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v3, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v2, v3}, Lcom/gemini/play/LIVEplayer;->get_next_line(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/gemini/play/LIVEplayer;->playVideoForSoft(Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3878
    .end local v16    # "check_playing_timeout":I
    :cond_e
    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sput-object v2, Lcom/gemini/play/LIVEplayer;->check_playing_currentid:Ljava/lang/String;

    .line 3879
    sget v2, Lcom/gemini/play/LIVEplayer;->currentLine:I

    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_line:I

    .line 3880
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    .line 3882
    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v3, "rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_f
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    .line 3883
    invoke-virtual {v2}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    sget v2, Lcom/gemini/play/MGplayer;->liveplaytimeout:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_5

    .line 3885
    invoke-static {}, Lcom/gemini/play/MGplayer;->getUidRxBytes()J

    move-result-wide v20

    .line 3887
    .restart local v20    # "speed_v":J
    const/16 v16, 0x12

    .line 3888
    .restart local v16    # "check_playing_timeout":I
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v2}, Lorg/videolan/vlc/VlcVideoView;->getCurrentPosition()J

    move-result-wide v18

    .line 3889
    .restart local v18    # "currentPosition":J
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v2}, Lorg/videolan/vlc/VlcVideoView;->getBufferPercentage()I

    move-result v15

    .line 3890
    .restart local v15    # "buffer":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3892
    sget-wide v2, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_10

    .line 3893
    sput-wide v18, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    .line 3896
    :cond_10
    const-wide/16 v2, 0xf

    cmp-long v2, v20, v2

    if-gez v2, :cond_11

    sget-wide v2, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    cmp-long v2, v2, v18

    if-nez v2, :cond_11

    .line 3897
    sget v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    .line 3903
    :goto_4
    sget v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    move/from16 v0, v16

    if-le v2, v0, :cond_5

    .line 3904
    const-string v2, "soft Reset Play2 "

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3905
    sget-object v9, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    sget-object v10, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v3, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v2, v3}, Lcom/gemini/play/LIVEplayer;->get_next_line(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/gemini/play/LIVEplayer;->playVideoForSoft(Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3906
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    .line 3907
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    goto/16 :goto_2

    .line 3899
    :cond_11
    sput-wide v18, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    .line 3900
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    goto :goto_4

    .line 3911
    .end local v15    # "buffer":I
    .end local v16    # "check_playing_timeout":I
    .end local v18    # "currentPosition":J
    .end local v20    # "speed_v":J
    :cond_12
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 3912
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_13

    sget-object v2, Lcom/gemini/play/LIVEplayer;->check_playing_currentid:Ljava/lang/String;

    if-eqz v2, :cond_13

    sget-object v2, Lcom/gemini/play/LIVEplayer;->check_playing_currentid:Ljava/lang/String;

    sget-object v3, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 3913
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget v2, Lcom/gemini/play/LIVEplayer;->check_playing_line:I

    sget v3, Lcom/gemini/play/LIVEplayer;->currentLine:I

    if-ne v2, v3, :cond_13

    .line 3916
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    .line 3917
    const/16 v16, 0x12

    .line 3918
    .restart local v16    # "check_playing_timeout":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check_playing_times:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3919
    sget v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    .line 3920
    sget v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    move/from16 v0, v16

    if-le v2, v0, :cond_5

    .line 3921
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    .line 3922
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    .line 3923
    const-string v2, "soft Reset Play1 "

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3924
    sget-object v9, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    sget-object v10, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v3, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v2, v3}, Lcom/gemini/play/LIVEplayer;->get_next_line(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/gemini/play/LIVEplayer;->playVideoForSoft2(Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3928
    .end local v16    # "check_playing_timeout":I
    :cond_13
    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sput-object v2, Lcom/gemini/play/LIVEplayer;->check_playing_currentid:Ljava/lang/String;

    .line 3929
    sget v2, Lcom/gemini/play/LIVEplayer;->currentLine:I

    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_line:I

    .line 3930
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    .line 3932
    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v3, "rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_14
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    .line 3933
    invoke-virtual {v2}, Lio/vov/vitamio/widget/VideoView;->isPlaying()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    sget v2, Lcom/gemini/play/MGplayer;->liveplaytimeout:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_5

    .line 3935
    invoke-static {}, Lcom/gemini/play/MGplayer;->getUidRxBytes()J

    move-result-wide v20

    .line 3937
    .restart local v20    # "speed_v":J
    const/16 v16, 0x12

    .line 3938
    .restart local v16    # "check_playing_timeout":I
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/VideoView;->getCurrentPosition()J

    move-result-wide v18

    .line 3939
    .restart local v18    # "currentPosition":J
    sget-object v2, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/VideoView;->getBufferPercentage()I

    move-result v15

    .line 3940
    .restart local v15    # "buffer":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3942
    sget-wide v2, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_15

    .line 3943
    sput-wide v18, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    .line 3946
    :cond_15
    const-wide/16 v2, 0xf

    cmp-long v2, v20, v2

    if-gez v2, :cond_16

    sget-wide v2, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    cmp-long v2, v2, v18

    if-nez v2, :cond_16

    .line 3947
    sget v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    .line 3953
    :goto_5
    sget v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    move/from16 v0, v16

    if-le v2, v0, :cond_5

    .line 3954
    const-string v2, "soft Reset Play2 "

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3955
    sget-object v9, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    sget-object v10, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v3, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v2, v3}, Lcom/gemini/play/LIVEplayer;->get_next_line(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/gemini/play/LIVEplayer;->playVideoForSoft2(Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3956
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    .line 3957
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    goto/16 :goto_2

    .line 3949
    :cond_16
    sput-wide v18, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    .line 3950
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    goto :goto_5
.end method
