.class final Lcom/gemini/play/VODplayer$6;
.super Ljava/lang/Object;
.source "VODplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VODplayer;->playVideoMessage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pHandler:Landroid/os/Handler;

.field final synthetic val$pw:Ljava/lang/String;

.field final synthetic val$seek:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/gemini/play/VODplayer$6;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/VODplayer$6;->val$pw:Ljava/lang/String;

    iput p3, p0, Lcom/gemini/play/VODplayer$6;->val$seek:I

    iput-object p4, p0, Lcom/gemini/play/VODplayer$6;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x5a

    .line 1421
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1422
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1423
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "url"

    iget-object v3, p0, Lcom/gemini/play/VODplayer$6;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const-string v2, "pw"

    iget-object v3, p0, Lcom/gemini/play/VODplayer$6;->val$pw:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    const-string v2, "ourl"

    iget-object v3, p0, Lcom/gemini/play/VODplayer$6;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    const-string v2, "seek"

    iget v3, p0, Lcom/gemini/play/VODplayer$6;->val$seek:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1427
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1428
    iput v4, v1, Landroid/os/Message;->what:I

    .line 1429
    iget-object v2, p0, Lcom/gemini/play/VODplayer$6;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1430
    iget-object v2, p0, Lcom/gemini/play/VODplayer$6;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1431
    :cond_0
    iget-object v2, p0, Lcom/gemini/play/VODplayer$6;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1432
    return-void
.end method
