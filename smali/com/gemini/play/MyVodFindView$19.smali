.class Lcom/gemini/play/MyVodFindView$19;
.super Landroid/os/Handler;
.source "MyVodFindView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyVodFindView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodFindView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFindView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/gemini/play/MyVodFindView$19;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 583
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 589
    :goto_0
    return-void

    .line 586
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/MyVodFindView$19;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodFindView;->hideFindView()V

    goto :goto_0

    .line 583
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
