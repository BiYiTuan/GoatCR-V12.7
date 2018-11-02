.class Lcom/gemini/play/LivePlayerActivity$33;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity;->showMAC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LivePlayerActivity;

.field final synthetic val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/gemini/play/LivePlayerActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$33;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iput-object p2, p0, Lcom/gemini/play/LivePlayerActivity$33;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 1750
    sget v2, Lcom/gemini/play/MGplayer;->screenWidth:I

    .line 1751
    .local v2, "max":I
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 1752
    .local v4, "random":Ljava/util/Random;
    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 1754
    .local v6, "w":I
    sget v2, Lcom/gemini/play/MGplayer;->screenHeight:I

    .line 1755
    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 1757
    .local v0, "h":I
    const/16 v2, 0x708

    .line 1758
    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    .line 1760
    .local v1, "m":I
    const/16 v2, 0xa

    .line 1761
    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v5, v7, 0xa

    .line 1763
    .local v5, "s":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "w:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " h:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " m:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " s:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1764
    iget-object v7, p0, Lcom/gemini/play/LivePlayerActivity$33;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v7}, Lcom/gemini/play/LivePlayerActivity;->access$1800(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1765
    iget-object v7, p0, Lcom/gemini/play/LivePlayerActivity$33;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v7}, Lcom/gemini/play/LivePlayerActivity;->access$1800(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v7

    sget-object v8, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v8}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1766
    iget-object v7, p0, Lcom/gemini/play/LivePlayerActivity$33;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v7}, Lcom/gemini/play/LivePlayerActivity;->access$1800(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1767
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v6, v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1768
    iget-object v7, p0, Lcom/gemini/play/LivePlayerActivity$33;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v7}, Lcom/gemini/play/LivePlayerActivity;->access$1800(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1770
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/gemini/play/LivePlayerActivity$33$1;

    invoke-direct {v8, p0}, Lcom/gemini/play/LivePlayerActivity$33$1;-><init>(Lcom/gemini/play/LivePlayerActivity$33;)V

    const-wide/32 v10, 0xea60

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1776
    iget-object v7, p0, Lcom/gemini/play/LivePlayerActivity$33;->val$mHandler:Landroid/os/Handler;

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v7, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1777
    return-void
.end method
