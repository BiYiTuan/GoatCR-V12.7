.class Lcom/gemini/play/VodPlayerVideoActivity$14;
.super Ljava/lang/Object;
.source "VodPlayerVideoActivity.java"

# interfaces
.implements Lcom/gemini/play/ListViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/VodPlayerVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerVideoActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity$14;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 611
    packed-switch p1, :pswitch_data_0

    .line 631
    :goto_0
    return-void

    .line 613
    :pswitch_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gemini/play/VODplayer;->video_seek:I

    .line 614
    .local v0, "seek":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onInfoPressed seek:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 615
    sget-object v1, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    const-string v2, "gp2p://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity$14;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    sget-object v2, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget-object v3, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/gemini/play/VODplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 628
    :goto_1
    const/4 v1, 0x0

    sput v1, Lcom/gemini/play/VODplayer;->video_current:I

    goto :goto_0

    .line 627
    :cond_0
    sget-object v1, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/gemini/play/VODplayer;->seekVideo(Ljava/lang/String;I)V

    goto :goto_1

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
