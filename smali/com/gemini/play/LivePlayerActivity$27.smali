.class Lcom/gemini/play/LivePlayerActivity$27;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity;->exitActivity()V
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
    .line 1503
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$27;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 1505
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->stopCheckVideo()V

    .line 1506
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1507
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$27;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$200(Lcom/gemini/play/LivePlayerActivity;)V

    .line 1508
    sput-boolean v3, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    .line 1510
    sget-boolean v0, Lcom/gemini/play/MGplayer;->boot_launcher:Z

    if-nez v0, :cond_0

    .line 1512
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->resumeDecode()V

    .line 1513
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$27;->this$0:Lcom/gemini/play/LivePlayerActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/gemini/play/LivePlayerActivity$27;->this$0:Lcom/gemini/play/LivePlayerActivity;

    const-class v3, Lcom/gemini/play/LocalService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/LivePlayerActivity;->stopService(Landroid/content/Intent;)Z

    .line 1514
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$27;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/gemini/play/LivePlayerActivity;->finish()V

    .line 1515
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1517
    invoke-static {}, Lcom/gemini/play/MGplayer;->exit_app()V

    .line 1529
    :goto_0
    return-void

    .line 1521
    :cond_0
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->resumeDecode()V

    .line 1522
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$27;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$27;->this$0:Lcom/gemini/play/LivePlayerActivity;

    const v2, 0x7f0b0052

    invoke-virtual {v1, v2}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1523
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/LivePlayerActivity$27$1;

    invoke-direct {v1, p0}, Lcom/gemini/play/LivePlayerActivity$27$1;-><init>(Lcom/gemini/play/LivePlayerActivity$27;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
