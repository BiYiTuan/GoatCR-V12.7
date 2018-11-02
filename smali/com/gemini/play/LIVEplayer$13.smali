.class final Lcom/gemini/play/LIVEplayer$13;
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
.field final synthetic val$pHandler:Landroid/os/Handler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$13;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$13;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x5b

    .line 1872
    iget-object v3, p0, Lcom/gemini/play/LIVEplayer$13;->val$url:Ljava/lang/String;

    invoke-static {v3}, Lcom/gemini/play/Ghttp;->play(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1874
    .local v1, "key_url":Ljava/lang/String;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1875
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1876
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "url"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1878
    iput v4, v2, Landroid/os/Message;->what:I

    .line 1879
    iget-object v3, p0, Lcom/gemini/play/LIVEplayer$13;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1880
    iget-object v3, p0, Lcom/gemini/play/LIVEplayer$13;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1881
    :cond_0
    iget-object v3, p0, Lcom/gemini/play/LIVEplayer$13;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1882
    return-void
.end method
