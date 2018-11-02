.class Lcom/gemini/play/MyVodTypeView$1;
.super Landroid/os/Handler;
.source "MyVodTypeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyVodTypeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodTypeView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodTypeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodTypeView;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView$1;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 119
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cmd"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, "cmd":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "data":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/MyVodTypeView$1;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-static {v2}, Lcom/gemini/play/MyVodTypeView;->access$000(Lcom/gemini/play/MyVodTypeView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
