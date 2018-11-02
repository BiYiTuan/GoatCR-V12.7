.class Lcom/gemini/play/VodPlayerVideoActivity$8;
.super Landroid/os/Handler;
.source "VodPlayerVideoActivity.java"


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
    .line 485
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity$8;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 488
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 512
    :goto_0
    return-void

    .line 491
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "times"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 494
    .local v10, "times":I
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$8;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1300(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$8;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1300(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$8;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1300(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity$8;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

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

    .line 501
    .end local v2    # "content":Ljava/lang/String;
    .end local v10    # "times":I
    :sswitch_1
    const-string v0, "restart video 2"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "inx"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 503
    .local v11, "inx":I
    invoke-static {v11}, Lcom/gemini/play/VODplayer;->stopVideo(I)V

    .line 504
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/VodPlayerVideoActivity$8$1;

    invoke-direct {v1, p0}, Lcom/gemini/play/VodPlayerVideoActivity$8$1;-><init>(Lcom/gemini/play/VodPlayerVideoActivity$8;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 488
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method
