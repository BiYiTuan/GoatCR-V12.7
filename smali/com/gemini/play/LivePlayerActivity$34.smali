.class Lcom/gemini/play/LivePlayerActivity$34;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity;->checkVideo()V
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
    .line 1790
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$34;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iput-object p2, p0, Lcom/gemini/play/LivePlayerActivity$34;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1792
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$34;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$1900(Lcom/gemini/play/LivePlayerActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$34;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$1900(Lcom/gemini/play/LivePlayerActivity;)I

    move-result v0

    sget v1, Lcom/gemini/play/MGplayer;->checkVideo_times:I

    if-le v0, v1, :cond_0

    .line 1793
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$34;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$34;->this$0:Lcom/gemini/play/LivePlayerActivity;

    const v2, 0x7f0b0059

    invoke-virtual {v1, v2}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gemini/play/LivePlayerActivity$34;->this$0:Lcom/gemini/play/LivePlayerActivity;

    const v3, 0x7f0b005a

    invoke-virtual {v2, v3}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v2}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$34;->this$0:Lcom/gemini/play/LivePlayerActivity;

    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1794
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$34;->this$0:Lcom/gemini/play/LivePlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gemini/play/LivePlayerActivity;->access$1902(Lcom/gemini/play/LivePlayerActivity;I)I

    .line 1797
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$34;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$1908(Lcom/gemini/play/LivePlayerActivity;)I

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$34;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v1}, Lcom/gemini/play/LivePlayerActivity;->access$1900(Lcom/gemini/play/LivePlayerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1799
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$34;->val$mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1800
    return-void
.end method
