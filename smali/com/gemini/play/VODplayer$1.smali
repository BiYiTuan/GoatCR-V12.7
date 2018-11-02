.class final Lcom/gemini/play/VODplayer$1;
.super Landroid/os/Handler;
.source "VODplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/VODplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 946
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 949
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 963
    :goto_0
    const/4 v0, 0x0

    sput v0, Lcom/gemini/play/VODplayer;->video_current:I

    .line 964
    return-void

    .line 951
    :pswitch_0
    sget-object v0, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget v1, Lcom/gemini/play/VODplayer;->video_current:I

    invoke-static {v0, v1}, Lcom/gemini/play/VODplayer;->seekVideo(Ljava/lang/String;I)V

    goto :goto_0

    .line 955
    :pswitch_1
    sget-object v0, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget v1, Lcom/gemini/play/VODplayer;->video_current:I

    invoke-static {v0, v1}, Lcom/gemini/play/VODplayer;->seekVideo(Ljava/lang/String;I)V

    goto :goto_0

    .line 959
    :pswitch_2
    sget-object v0, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget v1, Lcom/gemini/play/VODplayer;->video_current:I

    invoke-static {v0, v1}, Lcom/gemini/play/VODplayer;->seekVideo(Ljava/lang/String;I)V

    goto :goto_0

    .line 949
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
