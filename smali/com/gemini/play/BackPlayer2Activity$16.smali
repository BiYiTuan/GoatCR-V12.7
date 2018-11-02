.class Lcom/gemini/play/BackPlayer2Activity$16;
.super Ljava/lang/Object;
.source "BackPlayer2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/BackPlayer2Activity;->exitActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/BackPlayer2Activity;


# direct methods
.method constructor <init>(Lcom/gemini/play/BackPlayer2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/BackPlayer2Activity;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/gemini/play/BackPlayer2Activity$16;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 783
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 784
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$16;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-virtual {v0}, Lcom/gemini/play/BackPlayer2Activity;->stopVideo()V

    .line 785
    invoke-static {}, Lcom/gemini/play/BACKplayer;->stopCheckVideo()V

    .line 787
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$16;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity$16;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    const v2, 0x7f0b0052

    invoke-virtual {v1, v2}, Lcom/gemini/play/BackPlayer2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 788
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/BackPlayer2Activity$16$1;

    invoke-direct {v1, p0}, Lcom/gemini/play/BackPlayer2Activity$16$1;-><init>(Lcom/gemini/play/BackPlayer2Activity$16;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 793
    return-void
.end method
