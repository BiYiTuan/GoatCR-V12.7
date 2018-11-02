.class Lcom/gemini/goat/ValidateActivity$7;
.super Landroid/os/Handler;
.source "ValidateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/goat/ValidateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/goat/ValidateActivity;


# direct methods
.method constructor <init>(Lcom/gemini/goat/ValidateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 1895
    iput-object p1, p0, Lcom/gemini/goat/ValidateActivity$7;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1897
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1930
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1901
    :pswitch_1
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$7;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$600(Lcom/gemini/goat/ValidateActivity;)V

    goto :goto_0

    .line 1904
    :pswitch_2
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$7;->this$0:Lcom/gemini/goat/ValidateActivity;

    const v4, 0x7f0700e7

    invoke-virtual {v3, v4}, Lcom/gemini/goat/ValidateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1905
    .local v1, "t":Landroid/widget/TextView;
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1906
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1913
    .end local v1    # "t":Landroid/widget/TextView;
    :pswitch_3
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$7;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/gemini/play/NumberProgressBar;->setVisibility(I)V

    .line 1914
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$7;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$700(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1915
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "progress"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1916
    .local v0, "num":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "text"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1917
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$7;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/gemini/play/NumberProgressBar;->setProgress(I)V

    .line 1918
    if-eqz v2, :cond_0

    .line 1919
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$7;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$700(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1922
    .end local v0    # "num":I
    .end local v2    # "text":Ljava/lang/String;
    :pswitch_4
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$7;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/gemini/play/NumberProgressBar;->setVisibility(I)V

    .line 1923
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$7;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$800(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1924
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$7;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$700(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1927
    :pswitch_5
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$7;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->getWebView(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 1897
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
