.class Lcom/gemini/play/MyTypeView2$3;
.super Landroid/os/Handler;
.source "MyTypeView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyTypeView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyTypeView2;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyTypeView2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyTypeView2;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/gemini/play/MyTypeView2$3;->this$0:Lcom/gemini/play/MyTypeView2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 258
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 261
    :pswitch_0
    iget-object v1, p0, Lcom/gemini/play/MyTypeView2$3;->this$0:Lcom/gemini/play/MyTypeView2;

    invoke-virtual {v1}, Lcom/gemini/play/MyTypeView2;->hideTypeList()V

    goto :goto_0

    .line 264
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/gemini/play/MyTypeView2$3;->this$0:Lcom/gemini/play/MyTypeView2;

    invoke-static {v1, v0}, Lcom/gemini/play/MyTypeView2;->access$300(Lcom/gemini/play/MyTypeView2;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
