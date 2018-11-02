.class Lcom/gemini/play/MyPreviewView$9$1;
.super Ljava/lang/Thread;
.source "MyPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyPreviewView$9;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/MyPreviewView$9;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyPreviewView$9;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/MyPreviewView$9;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/gemini/play/MyPreviewView$9$1;->this$1:Lcom/gemini/play/MyPreviewView$9;

    iput-object p2, p0, Lcom/gemini/play/MyPreviewView$9$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/MyPreviewView$9$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 601
    iget-object v4, p0, Lcom/gemini/play/MyPreviewView$9$1;->this$1:Lcom/gemini/play/MyPreviewView$9;

    iget-object v4, v4, Lcom/gemini/play/MyPreviewView$9;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v4}, Lcom/gemini/play/MyPreviewView;->access$200(Lcom/gemini/play/MyPreviewView;)I

    move-result v1

    .line 602
    .local v1, "index":I
    iget-object v4, p0, Lcom/gemini/play/MyPreviewView$9$1;->val$url:Ljava/lang/String;

    const/16 v5, 0x3e8

    invoke-static {v4, v5}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 603
    .local v3, "preview":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 605
    iget-object v4, p0, Lcom/gemini/play/MyPreviewView$9$1;->val$id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v1, v3}, Lcom/gemini/play/LIVEplayer;->setVideoIntroductions(IILjava/lang/String;)V

    .line 608
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_2

    iget-object v4, p0, Lcom/gemini/play/MyPreviewView$9$1;->this$1:Lcom/gemini/play/MyPreviewView$9;

    iget-object v4, v4, Lcom/gemini/play/MyPreviewView$9;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v4}, Lcom/gemini/play/MyPreviewView;->access$200(Lcom/gemini/play/MyPreviewView;)I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 610
    iget-object v4, p0, Lcom/gemini/play/MyPreviewView$9$1;->this$1:Lcom/gemini/play/MyPreviewView$9;

    iget-object v4, v4, Lcom/gemini/play/MyPreviewView$9;->this$0:Lcom/gemini/play/MyPreviewView;

    iget-object v4, v4, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 611
    iget-object v4, p0, Lcom/gemini/play/MyPreviewView$9$1;->this$1:Lcom/gemini/play/MyPreviewView$9;

    iget-object v4, v4, Lcom/gemini/play/MyPreviewView$9;->this$0:Lcom/gemini/play/MyPreviewView;

    iget-object v4, v4, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    :cond_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 614
    .local v2, "msg":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 615
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 616
    .local v0, "data":Landroid/os/Bundle;
    const-string v4, "preview"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 618
    iget-object v4, p0, Lcom/gemini/play/MyPreviewView$9$1;->this$1:Lcom/gemini/play/MyPreviewView$9;

    iget-object v4, v4, Lcom/gemini/play/MyPreviewView$9;->this$0:Lcom/gemini/play/MyPreviewView;

    iget-object v4, v4, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 620
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method
