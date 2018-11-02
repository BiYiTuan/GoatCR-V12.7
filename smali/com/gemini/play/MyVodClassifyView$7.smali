.class Lcom/gemini/play/MyVodClassifyView$7;
.super Landroid/os/Handler;
.source "MyVodClassifyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyVodClassifyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodClassifyView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodClassifyView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodClassifyView;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/gemini/play/MyVodClassifyView$7;->this$0:Lcom/gemini/play/MyVodClassifyView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 294
    :goto_0
    return-void

    .line 289
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView$7;->this$0:Lcom/gemini/play/MyVodClassifyView;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodClassifyView;->hideClassifyList()V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
