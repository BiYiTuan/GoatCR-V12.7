.class Lcom/gemini/play/VodPlayerVideoActivity$9;
.super Ljava/lang/Object;
.source "VodPlayerVideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerVideoActivity;->exitActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerVideoActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity$9;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 520
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 521
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$9;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity$9;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    const v2, 0x7f0b0052

    invoke-virtual {v1, v2}, Lcom/gemini/play/VodPlayerVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 522
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$9;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v0, v3}, Lcom/gemini/play/VodPlayerVideoActivity;->access$202(Lcom/gemini/play/VodPlayerVideoActivity;Z)Z

    .line 523
    invoke-static {}, Lcom/gemini/play/VODplayer;->stopVideo()V

    .line 524
    sput-boolean v3, Lcom/gemini/play/VODplayer;->mIsPause:Z

    .line 529
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/VodPlayerVideoActivity$9$1;

    invoke-direct {v1, p0}, Lcom/gemini/play/VodPlayerVideoActivity$9$1;-><init>(Lcom/gemini/play/VodPlayerVideoActivity$9;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 536
    return-void
.end method
