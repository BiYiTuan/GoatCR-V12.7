.class final Lcom/gemini/play/MenuView$10;
.super Landroid/os/Handler;
.source "MenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MenuView;->unbundlingActivity(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_this:Landroid/content/Context;

.field final synthetic val$okButton:Landroid/widget/Button;

.field final synthetic val$text4:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/gemini/play/MenuView$10;->val$text4:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gemini/play/MenuView$10;->val$_this:Landroid/content/Context;

    iput-object p3, p0, Lcom/gemini/play/MenuView$10;->val$okButton:Landroid/widget/Button;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x7f0b00b3

    const/4 v5, 0x0

    const v4, 0x7f0b00b0

    .line 630
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 659
    :goto_0
    return-void

    .line 634
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ret"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 unbundling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unbundling"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2 unbundling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/gemini/play/MenuView$10;->val$text4:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/MenuView$10;->val$_this:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v1, p0, Lcom/gemini/play/MenuView$10;->val$okButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/gemini/play/MenuView$10;->val$_this:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 641
    sput v5, Lcom/gemini/play/MenuView;->getUnbuildling:I

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3 unbundling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 646
    iget-object v1, p0, Lcom/gemini/play/MenuView$10;->val$text4:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/MenuView$10;->val$_this:Landroid/content/Context;

    const v3, 0x7f0b00ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v1, p0, Lcom/gemini/play/MenuView$10;->val$okButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/gemini/play/MenuView$10;->val$_this:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 648
    sput v5, Lcom/gemini/play/MenuView;->getUnbuildling:I

    goto/16 :goto_0

    .line 652
    :cond_1
    iget-object v1, p0, Lcom/gemini/play/MenuView$10;->val$text4:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/MenuView$10;->val$_this:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v1, p0, Lcom/gemini/play/MenuView$10;->val$okButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/gemini/play/MenuView$10;->val$_this:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 654
    const/4 v1, 0x1

    sput v1, Lcom/gemini/play/MenuView;->getUnbuildling:I

    goto/16 :goto_0

    .line 630
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
