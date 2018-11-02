.class Lcom/gemini/play/MyBackTypeView$5;
.super Landroid/os/Handler;
.source "MyBackTypeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyBackTypeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyBackTypeView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyBackTypeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyBackTypeView;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/gemini/play/MyBackTypeView$5;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 303
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 313
    :goto_0
    return-void

    .line 306
    :pswitch_0
    iget-object v1, p0, Lcom/gemini/play/MyBackTypeView$5;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v1}, Lcom/gemini/play/MyBackTypeView;->hideTypeList()V

    goto :goto_0

    .line 309
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/gemini/play/MyBackTypeView$5;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-static {v1, v0}, Lcom/gemini/play/MyBackTypeView;->access$300(Lcom/gemini/play/MyBackTypeView;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
