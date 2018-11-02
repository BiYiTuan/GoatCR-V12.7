.class Lcom/gemini/play/BackPlayer2Activity$15;
.super Landroid/os/Handler;
.source "BackPlayer2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/BackPlayer2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/BackPlayer2Activity;


# direct methods
.method constructor <init>(Lcom/gemini/play/BackPlayer2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/BackPlayer2Activity;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/gemini/play/BackPlayer2Activity$15;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 756
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 774
    :goto_0
    return-void

    .line 759
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$15;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-virtual {v0}, Lcom/gemini/play/BackPlayer2Activity;->hideBackListLayout()V

    goto :goto_0

    .line 765
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 766
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "times"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 768
    .local v10, "times":I
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$15;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v0}, Lcom/gemini/play/BackPlayer2Activity;->access$600(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$15;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v0}, Lcom/gemini/play/BackPlayer2Activity;->access$600(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$15;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v0}, Lcom/gemini/play/BackPlayer2Activity;->access$600(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity$15;->this$0:Lcom/gemini/play/BackPlayer2Activity;

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

    .line 756
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
