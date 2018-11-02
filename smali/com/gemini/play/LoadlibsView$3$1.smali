.class Lcom/gemini/play/LoadlibsView$3$1;
.super Ljava/lang/Object;
.source "LoadlibsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LoadlibsView$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LoadlibsView$3;


# direct methods
.method constructor <init>(Lcom/gemini/play/LoadlibsView$3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LoadlibsView$3;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/gemini/play/LoadlibsView$3$1;->this$0:Lcom/gemini/play/LoadlibsView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 196
    invoke-static {}, Lcom/gemini/play/LoadlibsView;->access$200()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/gemini/play/LoadlibsView;->access$200()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/gemini/play/LocalService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 197
    invoke-static {}, Lcom/gemini/play/LoadlibsView;->access$200()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 198
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 199
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 200
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 201
    return-void
.end method
