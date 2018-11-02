.class Lcom/gemini/play/LivePlayerActivity$15;
.super Landroid/os/Handler;
.source "LivePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity;->init()V
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
    .line 611
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$15;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v5, 0x7f0b0058

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 613
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 638
    :goto_0
    return-void

    .line 615
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "num"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "num":Ljava/lang/String;
    invoke-static {v0}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_3

    .line 617
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/gemini/play/LIVEplayer;->existVideoId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    sget-boolean v1, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/gemini/play/LIVEplayer;->isVideoTypePs(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$15;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v1}, Lcom/gemini/play/LivePlayerActivity;->access$400(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 621
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$15;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v1}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gemini/play/MyListView;->setCurrentID(Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$15;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v1, v0, v3, v3}, Lcom/gemini/play/LivePlayerActivity;->access$300(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V

    .line 623
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$15;->this$0:Lcom/gemini/play/LivePlayerActivity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/gemini/play/LivePlayerActivity;->access$602(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 634
    :goto_1
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$15;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v1}, Lcom/gemini/play/LivePlayerActivity;->access$400(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 635
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$15;->this$0:Lcom/gemini/play/LivePlayerActivity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/gemini/play/LivePlayerActivity;->access$602(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 625
    :cond_1
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$15;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v1, v0}, Lcom/gemini/play/LivePlayerActivity;->access$700(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 628
    :cond_2
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$15;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v2, p0, Lcom/gemini/play/LivePlayerActivity$15;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-virtual {v2, v5}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 631
    :cond_3
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$15;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v2, p0, Lcom/gemini/play/LivePlayerActivity$15;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-virtual {v2, v5}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
