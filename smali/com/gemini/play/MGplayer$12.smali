.class final Lcom/gemini/play/MGplayer$12;
.super Landroid/os/Handler;
.source "MGplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MGplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2867
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 2870
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2960
    :cond_0
    :goto_0
    return-void

    .line 2872
    :sswitch_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->gl()V

    goto :goto_0

    .line 2876
    :sswitch_1
    sget-object v0, Lcom/gemini/play/MGplayer;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getWebView(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 2881
    :sswitch_2
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2882
    new-instance v0, Lcom/gemini/play/MGplayer$12$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/MGplayer$12$1;-><init>(Lcom/gemini/play/MGplayer$12;)V

    .line 2894
    invoke-virtual {v0}, Lcom/gemini/play/MGplayer$12$1;->start()V

    goto :goto_0

    .line 2901
    :sswitch_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->access$200()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2904
    new-instance v0, Lcom/gemini/play/MGplayer$12$2;

    invoke-direct {v0, p0}, Lcom/gemini/play/MGplayer$12$2;-><init>(Lcom/gemini/play/MGplayer$12;)V

    .line 2916
    invoke-virtual {v0}, Lcom/gemini/play/MGplayer$12$2;->start()V

    goto :goto_0

    .line 2922
    :sswitch_4
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jufeng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2926
    :cond_1
    new-instance v0, Lcom/gemini/play/MGplayer$12$3;

    invoke-direct {v0, p0}, Lcom/gemini/play/MGplayer$12$3;-><init>(Lcom/gemini/play/MGplayer$12;)V

    .line 2938
    invoke-virtual {v0}, Lcom/gemini/play/MGplayer$12$3;->start()V

    goto :goto_0

    .line 2942
    :sswitch_5
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "It is Timeout"

    invoke-static {v0, v1, v3}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 2945
    :sswitch_6
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u901a\u8fc7\u8ba4\u8bc1"

    invoke-static {v0, v1, v3}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 2949
    :sswitch_7
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8ba4\u8bc1\u5931\u8d25"

    invoke-static {v0, v1, v3}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 2953
    :sswitch_8
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6210\u529f\u83b7\u53d6"

    invoke-static {v0, v1, v3}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2957
    :sswitch_9
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u5931\u8d25"

    invoke-static {v0, v1, v3}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2870
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x57 -> :sswitch_4
        0x58 -> :sswitch_3
        0x59 -> :sswitch_2
        0x5a -> :sswitch_5
        0x64 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_8
        0x67 -> :sswitch_9
    .end sparse-switch
.end method
