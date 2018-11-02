.class Lcom/gemini/play/Launcher2Activity$8;
.super Ljava/lang/Object;
.source "Launcher2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/Launcher2Activity;->exitActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/Launcher2Activity;


# direct methods
.method constructor <init>(Lcom/gemini/play/Launcher2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/Launcher2Activity;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/gemini/play/Launcher2Activity$8;->this$0:Lcom/gemini/play/Launcher2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 428
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 429
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity$8;->this$0:Lcom/gemini/play/Launcher2Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/gemini/play/Launcher2Activity$8;->this$0:Lcom/gemini/play/Launcher2Activity;

    const-class v3, Lcom/gemini/play/LocalService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/Launcher2Activity;->stopService(Landroid/content/Intent;)Z

    .line 430
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity$8;->this$0:Lcom/gemini/play/Launcher2Activity;

    invoke-virtual {v0}, Lcom/gemini/play/Launcher2Activity;->finish()V

    .line 431
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 432
    invoke-static {}, Lcom/gemini/play/MGplayer;->exit_app()V

    .line 433
    return-void
.end method
