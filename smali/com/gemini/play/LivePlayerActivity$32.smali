.class Lcom/gemini/play/LivePlayerActivity$32;
.super Landroid/os/Handler;
.source "LivePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/LivePlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 1662
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$32;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1665
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1737
    :goto_0
    return-void

    .line 1668
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1669
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "times"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1671
    .local v10, "times":I
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$32;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$1600(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1672
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$32;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$1600(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 1673
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$32;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$1600(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$32;->this$0:Lcom/gemini/play/LivePlayerActivity;

    const/high16 v7, 0x40200000    # 2.5f

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v8, v4

    const-string v9, "FFFFFF"

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v10}, Lcom/gemini/play/ScrollTextView;->start_every(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;I)V

    goto :goto_0

    .line 1678
    .end local v2    # "content":Ljava/lang/String;
    .end local v10    # "times":I
    :pswitch_1
    sget-object v4, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    sget-object v5, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v1, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v0, v1}, Lcom/gemini/play/LIVEplayer;->get_next_line(Ljava/lang/String;I)I

    move-result v6

    move v7, v3

    move-object v9, v8

    invoke-static/range {v4 .. v9}, Lcom/gemini/play/LIVEplayer;->playVideoForHard(Lcom/gemini/play/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1682
    :pswitch_2
    sget-object v4, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    sget-object v5, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v1, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v0, v1}, Lcom/gemini/play/LIVEplayer;->get_next_line(Ljava/lang/String;I)I

    move-result v6

    move v7, v3

    move-object v9, v8

    invoke-static/range {v4 .. v9}, Lcom/gemini/play/LIVEplayer;->playVideoForSoft(Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1686
    :pswitch_3
    sget-object v4, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    sget-object v5, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v1, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v0, v1}, Lcom/gemini/play/LIVEplayer;->get_next_line(Ljava/lang/String;I)I

    move-result v6

    move v7, v3

    move-object v9, v8

    invoke-static/range {v4 .. v9}, Lcom/gemini/play/LIVEplayer;->playVideoForSoft2(Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1690
    :pswitch_4
    sget-object v4, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    sget-object v5, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v1, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v0, v1}, Lcom/gemini/play/LIVEplayer;->get_next_line(Ljava/lang/String;I)I

    move-result v6

    move v7, v3

    move-object v9, v8

    invoke-static/range {v4 .. v9}, Lcom/gemini/play/LIVEplayer;->playVideoForHard2(Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1695
    :pswitch_5
    sget-object v4, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    sget-object v5, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v6, Lcom/gemini/play/LIVEplayer;->currentLine:I

    move v7, v3

    move-object v9, v8

    invoke-static/range {v4 .. v9}, Lcom/gemini/play/LIVEplayer;->playVideoForHard(Lcom/gemini/play/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1699
    :pswitch_6
    sget-object v4, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    sget-object v5, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v6, Lcom/gemini/play/LIVEplayer;->currentLine:I

    move v7, v3

    move-object v9, v8

    invoke-static/range {v4 .. v9}, Lcom/gemini/play/LIVEplayer;->playVideoForSoft(Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1703
    :pswitch_7
    sget-object v4, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    sget-object v5, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v6, Lcom/gemini/play/LIVEplayer;->currentLine:I

    move v7, v3

    move-object v9, v8

    invoke-static/range {v4 .. v9}, Lcom/gemini/play/LIVEplayer;->playVideoForSoft2(Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1707
    :pswitch_8
    sget-object v4, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    sget-object v5, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v6, Lcom/gemini/play/LIVEplayer;->currentLine:I

    move v7, v3

    move-object v9, v8

    invoke-static/range {v4 .. v9}, Lcom/gemini/play/LIVEplayer;->playVideoForHard2(Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1711
    :pswitch_9
    new-instance v0, Lcom/gemini/play/LivePlayerActivity$32$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/LivePlayerActivity$32$1;-><init>(Lcom/gemini/play/LivePlayerActivity$32;)V

    .line 1715
    invoke-virtual {v0}, Lcom/gemini/play/LivePlayerActivity$32$1;->start()V

    goto/16 :goto_0

    .line 1720
    :pswitch_a
    const-string v0, "restart video 1"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1721
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$32;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$200(Lcom/gemini/play/LivePlayerActivity;)V

    goto/16 :goto_0

    .line 1725
    :pswitch_b
    const-string v0, "restart video 2"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1726
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "inx"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 1727
    .local v11, "inx":I
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$32;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0, v11}, Lcom/gemini/play/LivePlayerActivity;->access$1700(Lcom/gemini/play/LivePlayerActivity;I)V

    .line 1728
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/LivePlayerActivity$32$2;

    invoke-direct {v1, p0}, Lcom/gemini/play/LivePlayerActivity$32$2;-><init>(Lcom/gemini/play/LivePlayerActivity$32;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1665
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
