.class Lcom/gemini/play/ControlPlayerActivity$3;
.super Landroid/os/Handler;
.source "ControlPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/ControlPlayerActivity;->playVideoForHard(Lcom/gemini/play/VideoView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/ControlPlayerActivity;

.field final synthetic val$mVideoView:Lcom/gemini/play/VideoView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/ControlPlayerActivity;Lcom/gemini/play/VideoView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/ControlPlayerActivity;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/gemini/play/ControlPlayerActivity$3;->this$0:Lcom/gemini/play/ControlPlayerActivity;

    iput-object p2, p0, Lcom/gemini/play/ControlPlayerActivity$3;->val$mVideoView:Lcom/gemini/play/VideoView;

    iput-object p3, p0, Lcom/gemini/play/ControlPlayerActivity$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "murl":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 227
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/gemini/play/ControlPlayerActivity$3;->val$mVideoView:Lcom/gemini/play/VideoView;

    invoke-virtual {v1, v0}, Lcom/gemini/play/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/gemini/play/ControlPlayerActivity$3;->val$mVideoView:Lcom/gemini/play/VideoView;

    invoke-virtual {v1}, Lcom/gemini/play/VideoView;->start()V

    .line 231
    iget-object v1, p0, Lcom/gemini/play/ControlPlayerActivity$3;->this$0:Lcom/gemini/play/ControlPlayerActivity;

    iget-object v2, p0, Lcom/gemini/play/ControlPlayerActivity$3;->val$url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/gemini/play/ControlPlayerActivity;->access$002(Lcom/gemini/play/ControlPlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    :cond_0
    return-void

    .line 214
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
