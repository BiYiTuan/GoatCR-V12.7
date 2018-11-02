.class Lcom/gemini/play/MyPreviewView$9;
.super Landroid/os/Handler;
.source "MyPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyPreviewView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyPreviewView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyPreviewView;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/gemini/play/MyPreviewView$9;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 588
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 628
    :goto_0
    return-void

    .line 591
    :pswitch_0
    iget-object v4, p0, Lcom/gemini/play/MyPreviewView$9;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v4}, Lcom/gemini/play/MyPreviewView;->hidePreviewList()V

    goto :goto_0

    .line 594
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "preview"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "preview":Ljava/lang/String;
    iget-object v4, p0, Lcom/gemini/play/MyPreviewView$9;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v4, v2, v6}, Lcom/gemini/play/MyPreviewView;->set_list(Ljava/lang/String;Z)V

    goto :goto_0

    .line 598
    .end local v2    # "preview":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 599
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "id":Ljava/lang/String;
    new-instance v4, Lcom/gemini/play/MyPreviewView$9$1;

    invoke-direct {v4, p0, v3, v1}, Lcom/gemini/play/MyPreviewView$9$1;-><init>(Lcom/gemini/play/MyPreviewView$9;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-virtual {v4}, Lcom/gemini/play/MyPreviewView$9$1;->start()V

    goto :goto_0

    .line 624
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "data":Ljava/lang/String;
    iget-object v4, p0, Lcom/gemini/play/MyPreviewView$9;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v4}, Lcom/gemini/play/MyPreviewView;->access$400(Lcom/gemini/play/MyPreviewView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v4

    invoke-interface {v4, v6, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 588
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
