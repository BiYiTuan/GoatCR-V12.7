.class Lcom/gemini/play/VideoView$1;
.super Landroid/os/Handler;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VideoView;->initVideoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VideoView;


# direct methods
.method constructor <init>(Lcom/gemini/play/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/gemini/play/VideoView$1;->this$0:Lcom/gemini/play/VideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 198
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 200
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playing_time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/VideoView$1;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v2}, Lcom/gemini/play/VideoView;->access$000(Lcom/gemini/play/VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/gemini/play/VideoView$1;->this$0:Lcom/gemini/play/VideoView;

    invoke-virtual {v1}, Lcom/gemini/play/VideoView;->isPlaying()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 202
    iget-object v1, p0, Lcom/gemini/play/VideoView$1;->this$0:Lcom/gemini/play/VideoView;

    iget-object v2, p0, Lcom/gemini/play/VideoView$1;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v2}, Lcom/gemini/play/VideoView;->access$000(Lcom/gemini/play/VideoView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/gemini/play/VideoView;->access$002(Lcom/gemini/play/VideoView;I)I

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/gemini/play/VideoView$1;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v1}, Lcom/gemini/play/VideoView;->access$100(Lcom/gemini/play/VideoView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 207
    .local v0, "msg2":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 208
    iget-object v1, p0, Lcom/gemini/play/VideoView$1;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v1}, Lcom/gemini/play/VideoView;->access$200(Lcom/gemini/play/VideoView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/gemini/play/VideoView$1;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v1}, Lcom/gemini/play/VideoView;->access$200(Lcom/gemini/play/VideoView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/gemini/play/VideoView$1;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v1}, Lcom/gemini/play/VideoView;->access$200(Lcom/gemini/play/VideoView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
