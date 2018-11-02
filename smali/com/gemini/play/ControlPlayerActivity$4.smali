.class Lcom/gemini/play/ControlPlayerActivity$4;
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
    .line 246
    iput-object p1, p0, Lcom/gemini/play/ControlPlayerActivity$4;->this$0:Lcom/gemini/play/ControlPlayerActivity;

    iput-object p2, p0, Lcom/gemini/play/ControlPlayerActivity$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/ControlPlayerActivity$4;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x5b

    .line 249
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 250
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "url"

    iget-object v3, p0, Lcom/gemini/play/ControlPlayerActivity$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 253
    iput v4, v1, Landroid/os/Message;->what:I

    .line 254
    iget-object v2, p0, Lcom/gemini/play/ControlPlayerActivity$4;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/gemini/play/ControlPlayerActivity$4;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/gemini/play/ControlPlayerActivity$4;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    return-void
.end method
