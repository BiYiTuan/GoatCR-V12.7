.class Lcom/gemini/play/BackPlayerVideoActivity$10;
.super Landroid/os/Handler;
.source "BackPlayerVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/BackPlayerVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/BackPlayerVideoActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/BackPlayerVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/BackPlayerVideoActivity;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/gemini/play/BackPlayerVideoActivity$10;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 451
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 465
    :goto_0
    return-void

    .line 456
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "times"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 459
    .local v10, "times":I
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity$10;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-static {v0}, Lcom/gemini/play/BackPlayerVideoActivity;->access$400(Lcom/gemini/play/BackPlayerVideoActivity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity$10;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-static {v0}, Lcom/gemini/play/BackPlayerVideoActivity;->access$400(Lcom/gemini/play/BackPlayerVideoActivity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity$10;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-static {v0}, Lcom/gemini/play/BackPlayerVideoActivity;->access$400(Lcom/gemini/play/BackPlayerVideoActivity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity$10;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

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

    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
