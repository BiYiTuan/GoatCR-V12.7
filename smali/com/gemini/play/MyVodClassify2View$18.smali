.class Lcom/gemini/play/MyVodClassify2View$18;
.super Landroid/os/Handler;
.source "MyVodClassify2View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyVodClassify2View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodClassify2View;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodClassify2View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/gemini/play/MyVodClassify2View$18;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 579
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 586
    :goto_0
    return-void

    .line 581
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View$18;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodClassify2View;->hideClassifyList()V

    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
