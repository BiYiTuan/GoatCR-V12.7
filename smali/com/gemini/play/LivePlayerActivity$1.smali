.class Lcom/gemini/play/LivePlayerActivity$1;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Lcom/gemini/play/ScreenObserver$ScreenStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/LivePlayerActivity;
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
    .line 277
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$1;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOff()V
    .locals 4

    .prologue
    .line 288
    const-string v0, "onScreenOff"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$1;->this$0:Lcom/gemini/play/LivePlayerActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/gemini/play/LivePlayerActivity$1;->this$0:Lcom/gemini/play/LivePlayerActivity;

    const-class v3, Lcom/gemini/play/LocalService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/LivePlayerActivity;->stopService(Landroid/content/Intent;)Z

    .line 290
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$1;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/gemini/play/LivePlayerActivity;->finish()V

    .line 291
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 292
    invoke-static {}, Lcom/gemini/play/MGplayer;->exit_app()V

    .line 293
    return-void
.end method

.method public onScreenOn()V
    .locals 1

    .prologue
    .line 282
    const-string v0, "onScreenOn"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public onUserPresent()V
    .locals 1

    .prologue
    .line 298
    const-string v0, "onUserPresent"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 299
    return-void
.end method
