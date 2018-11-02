.class final Lcom/gemini/play/LIVEplayer$16;
.super Ljava/lang/Object;
.source "LIVEplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LIVEplayer;->playVideoMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key_url:Ljava/lang/String;

.field final synthetic val$pHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1970
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$16;->val$key_url:Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$16;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x5b

    .line 1972
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1973
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1974
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "url"

    iget-object v3, p0, Lcom/gemini/play/LIVEplayer$16;->val$key_url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1976
    iput v4, v1, Landroid/os/Message;->what:I

    .line 1977
    iget-object v2, p0, Lcom/gemini/play/LIVEplayer$16;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1978
    iget-object v2, p0, Lcom/gemini/play/LIVEplayer$16;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1979
    :cond_0
    iget-object v2, p0, Lcom/gemini/play/LIVEplayer$16;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1980
    return-void
.end method
