.class Lcom/gemini/play/MyInfoView$6;
.super Landroid/os/Handler;
.source "MyInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyInfoView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyInfoView;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/gemini/play/MyInfoView$6;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 521
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 533
    :goto_0
    return-void

    .line 524
    :pswitch_0
    iget-object v1, p0, Lcom/gemini/play/MyInfoView$6;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-virtual {v1}, Lcom/gemini/play/MyInfoView;->hideInfoPanal()V

    goto :goto_0

    .line 528
    :pswitch_1
    iget-object v1, p0, Lcom/gemini/play/MyInfoView$6;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-virtual {v1}, Lcom/gemini/play/MyInfoView;->showViewTimeout()V

    .line 529
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "currentTime"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/gemini/play/MyInfoView$6;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-static {v1}, Lcom/gemini/play/MyInfoView;->access$200(Lcom/gemini/play/MyInfoView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
