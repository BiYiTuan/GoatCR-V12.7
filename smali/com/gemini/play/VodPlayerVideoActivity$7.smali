.class Lcom/gemini/play/VodPlayerVideoActivity$7;
.super Ljava/lang/Object;
.source "VodPlayerVideoActivity.java"

# interfaces
.implements Lcom/gemini/play/ScrollViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/VodPlayerVideoActivity;
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
    .line 468
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity$7;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

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
    .line 470
    packed-switch p1, :pswitch_data_0

    .line 482
    :goto_0
    return-void

    .line 472
    :pswitch_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 473
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 474
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "content"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v2, "times"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 477
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 478
    iget-object v2, p0, Lcom/gemini/play/VodPlayerVideoActivity$7;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    iget-object v2, v2, Lcom/gemini/play/VodPlayerVideoActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
