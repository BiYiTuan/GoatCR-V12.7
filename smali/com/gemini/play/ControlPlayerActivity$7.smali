.class Lcom/gemini/play/ControlPlayerActivity$7;
.super Landroid/os/Handler;
.source "ControlPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/ControlPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/ControlPlayerActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/ControlPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/ControlPlayerActivity;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/gemini/play/ControlPlayerActivity$7;->this$0:Lcom/gemini/play/ControlPlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 450
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 465
    :goto_0
    return-void

    .line 454
    :pswitch_0
    iget-object v1, p0, Lcom/gemini/play/ControlPlayerActivity$7;->this$0:Lcom/gemini/play/ControlPlayerActivity;

    invoke-static {v1}, Lcom/gemini/play/ControlPlayerActivity;->access$200(Lcom/gemini/play/ControlPlayerActivity;)V

    .line 455
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/gemini/play/ControlPlayerActivity$7;->this$0:Lcom/gemini/play/ControlPlayerActivity;

    invoke-static {v1, v0}, Lcom/gemini/play/ControlPlayerActivity;->access$300(Lcom/gemini/play/ControlPlayerActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    .end local v0    # "url":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/gemini/play/ControlPlayerActivity$7;->this$0:Lcom/gemini/play/ControlPlayerActivity;

    invoke-static {v1}, Lcom/gemini/play/ControlPlayerActivity;->access$200(Lcom/gemini/play/ControlPlayerActivity;)V

    .line 462
    iget-object v1, p0, Lcom/gemini/play/ControlPlayerActivity$7;->this$0:Lcom/gemini/play/ControlPlayerActivity;

    invoke-virtual {v1}, Lcom/gemini/play/ControlPlayerActivity;->finish()V

    goto :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
