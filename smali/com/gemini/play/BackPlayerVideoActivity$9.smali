.class Lcom/gemini/play/BackPlayerVideoActivity$9;
.super Ljava/lang/Object;
.source "BackPlayerVideoActivity.java"

# interfaces
.implements Lcom/gemini/play/ScrollViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/BackPlayerVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/BackPlayerVideoActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/BackPlayerVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/BackPlayerVideoActivity;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/gemini/play/BackPlayerVideoActivity$9;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;I)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "times"    # I

    .prologue
    .line 408
    packed-switch p1, :pswitch_data_0

    .line 422
    :goto_0
    return-void

    .line 412
    :pswitch_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 413
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 414
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "content"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v2, "times"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 417
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 418
    iget-object v2, p0, Lcom/gemini/play/BackPlayerVideoActivity$9;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    iget-object v2, v2, Lcom/gemini/play/BackPlayerVideoActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
