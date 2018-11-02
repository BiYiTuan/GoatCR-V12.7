.class final Lcom/gemini/play/LoadlibsView$3;
.super Landroid/os/Handler;
.source "LoadlibsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/LoadlibsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 170
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 190
    :pswitch_0
    new-instance v0, Lcom/gemini/play/MyDialog2$Builder;

    invoke-static {}, Lcom/gemini/play/LoadlibsView;->access$200()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gemini/play/MyDialog2$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, "builder":Lcom/gemini/play/MyDialog2$Builder;
    invoke-static {}, Lcom/gemini/play/LoadlibsView;->access$200()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b00b7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog2$Builder;->setTitle(Ljava/lang/String;)Lcom/gemini/play/MyDialog2$Builder;

    move-result-object v1

    .line 192
    invoke-static {}, Lcom/gemini/play/LoadlibsView;->access$200()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0062

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gemini/play/MyDialog2$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog2$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/gemini/play/LoadlibsView$3$1;

    invoke-direct {v3, p0}, Lcom/gemini/play/LoadlibsView$3$1;-><init>(Lcom/gemini/play/LoadlibsView$3;)V

    .line 193
    invoke-virtual {v1, v2, v3}, Lcom/gemini/play/MyDialog2$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog2$Builder;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Lcom/gemini/play/MyDialog2$Builder;->create()Lcom/gemini/play/MyDialog2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialog2;->show()V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
