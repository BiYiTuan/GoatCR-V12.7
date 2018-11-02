.class Lcom/gemini/play/ControlPlayerActivity$5;
.super Ljava/lang/Object;
.source "ControlPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/ControlPlayerActivity;->playVideoMessage(Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/ControlPlayerActivity;

.field final synthetic val$pHandler:Landroid/os/Handler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/ControlPlayerActivity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/ControlPlayerActivity;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/gemini/play/ControlPlayerActivity$5;->this$0:Lcom/gemini/play/ControlPlayerActivity;

    iput-object p2, p0, Lcom/gemini/play/ControlPlayerActivity$5;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/ControlPlayerActivity$5;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v8, 0x5e

    const/16 v9, 0x5c

    .line 266
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "cpuinfo":Ljava/lang/String;
    const/4 v2, -0x1

    .line 268
    .local v2, "gplayer_port":I
    iget-object v6, p0, Lcom/gemini/play/ControlPlayerActivity$5;->val$url:Ljava/lang/String;

    const/16 v7, 0xa

    invoke-static {v6, v7, v10, v10}, Lcom/gemini/play/MGplayer;->mediaplayerload(Ljava/lang/String;III)I

    move-result v2

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#################### port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "####################"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 271
    if-gez v2, :cond_1

    .line 273
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 274
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 275
    .local v3, "msg":Landroid/os/Message;
    iput v8, v3, Landroid/os/Message;->what:I

    .line 276
    iget-object v6, p0, Lcom/gemini/play/ControlPlayerActivity$5;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 277
    iget-object v6, p0, Lcom/gemini/play/ControlPlayerActivity$5;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    :cond_0
    iget-object v6, p0, Lcom/gemini/play/ControlPlayerActivity$5;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 309
    .end local v3    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 283
    :cond_1
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 284
    .local v4, "msg4":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 285
    .local v1, "data":Landroid/os/Bundle;
    const-string v6, "AML8726"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 287
    invoke-static {v2}, Lcom/gemini/play/ControlPlayerActivity;->access$100(I)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "murl":Ljava/lang/String;
    const-string v6, "url"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v5    # "murl":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 305
    iput v9, v4, Landroid/os/Message;->what:I

    .line 306
    iget-object v6, p0, Lcom/gemini/play/ControlPlayerActivity$5;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 307
    iget-object v6, p0, Lcom/gemini/play/ControlPlayerActivity$5;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    :cond_2
    iget-object v6, p0, Lcom/gemini/play/ControlPlayerActivity$5;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 290
    :cond_3
    const-string v6, "HI3716M"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "HIK3V2"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 292
    :cond_4
    invoke-static {v2}, Lcom/gemini/play/ControlPlayerActivity;->access$100(I)Ljava/lang/String;

    move-result-object v5

    .line 293
    .restart local v5    # "murl":Ljava/lang/String;
    const-string v6, "url"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 296
    .end local v5    # "murl":Ljava/lang/String;
    :cond_5
    const-string v6, "RK3128"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "S805"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 298
    :cond_6
    const-string v6, "url"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://127.0.0.1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 302
    :cond_7
    const-string v6, "url"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://127.0.0.1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
