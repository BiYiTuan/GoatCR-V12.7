.class Lcom/gemini/play/VodPlayerListActivity$9;
.super Ljava/lang/Object;
.source "VodPlayerListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerListActivity;->exitActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerListActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/gemini/play/VodPlayerListActivity$9;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 660
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 661
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity$9;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-virtual {v0}, Lcom/gemini/play/VodPlayerListActivity;->finish()V

    .line 663
    sget-boolean v0, Lcom/gemini/play/MGplayer;->boot_launcher:Z

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity$9;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$9;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    const-class v3, Lcom/gemini/play/LocalService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/VodPlayerListActivity;->stopService(Landroid/content/Intent;)Z

    .line 665
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 666
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 668
    :cond_0
    return-void
.end method
