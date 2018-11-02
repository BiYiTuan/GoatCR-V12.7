.class public Lcom/gemini/goat/ValidateActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ValidateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/goat/ValidateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/goat/ValidateActivity;


# direct methods
.method public constructor <init>(Lcom/gemini/goat/ValidateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 1947
    iput-object p1, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1955
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1956
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 2059
    const-string v0, "error.php"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 2060
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2062
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spain1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spainglobal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spain1cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2063
    :cond_0
    invoke-static {}, Lcom/gemini/custom/spain1;->rm_mi_txt()V

    .line 2067
    :cond_1
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gemini/goat/ValidateActivity;->access$902(Lcom/gemini/goat/ValidateActivity;Z)Z

    .line 2068
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2069
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const v10, 0x7f0b00c1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1959
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1961
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4, v8}, Lcom/gemini/goat/ValidateActivity;->access$902(Lcom/gemini/goat/ValidateActivity;Z)Z

    .line 1962
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$1;

    invoke-direct {v5, p0}, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$1;-><init>(Lcom/gemini/goat/ValidateActivity$MyWebViewClient;)V

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1978
    const-string v4, "error"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 1979
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/gemini/play/NumberProgressBar;->setVisibility(I)V

    .line 1980
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$800(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1981
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1984
    :cond_0
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1985
    const-string v4, "custom_post"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1986
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gemini/play/NumberProgressBar;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1987
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/gemini/play/NumberProgressBar;->setVisibility(I)V

    .line 1988
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$800(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1990
    :cond_1
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v4

    const/16 v5, 0x46

    invoke-virtual {v4, v5}, Lcom/gemini/play/NumberProgressBar;->setProgress(I)V

    .line 1991
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "quanxing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1992
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fszj"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1993
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$1000(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v6, v10}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "...."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2032
    :goto_0
    const-string v4, "error"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2033
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jhome"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-boolean v4, Lcom/gemini/custom/jhome;->bg_default:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 2034
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v4

    const v5, 0x7f0a0011

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 2051
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2053
    :cond_3
    return-void

    .line 1995
    :cond_4
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$700(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    const v6, 0x7f0b00bf

    invoke-virtual {v5, v6}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1998
    :cond_5
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/gemini/play/NumberProgressBar;->setVisibility(I)V

    .line 1999
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$800(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2001
    :cond_6
    const-string v4, "init"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2002
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gemini/play/NumberProgressBar;->isShown()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2003
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/gemini/play/NumberProgressBar;->setVisibility(I)V

    .line 2004
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$800(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2006
    :cond_7
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v4

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Lcom/gemini/play/NumberProgressBar;->setProgress(I)V

    .line 2007
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "quanxing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2008
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fszj"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2009
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$1000(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v6, v10}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "......"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2011
    :cond_8
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$700(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    const v6, 0x7f0b00c0

    invoke-virtual {v5, v6}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2014
    :cond_9
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/gemini/play/NumberProgressBar;->setVisibility(I)V

    .line 2015
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$800(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2020
    :cond_a
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "quanxing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 2021
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fszj"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2022
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$1000(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v6, v10}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2024
    :cond_b
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$700(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    const v6, 0x7f0b00be

    invoke-virtual {v5, v6}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2027
    :cond_c
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/gemini/play/NumberProgressBar;->setVisibility(I)V

    .line 2028
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$800(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2035
    :cond_d
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "badatv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2036
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v4

    const v5, 0x7f0a0010

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 2038
    :cond_e
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-string v5, "data"

    invoke-static {v4, v5, v8}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "accountimage"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2039
    .local v2, "loadimage":Ljava/lang/String;
    if-eqz v2, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v5}, Lcom/gemini/goat/ValidateActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/background/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2040
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v5}, Lcom/gemini/goat/ValidateActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/background/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2041
    .local v1, "imagePath":Ljava/lang/String;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2042
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2043
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2044
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2045
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 2047
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "imagePath":Ljava/lang/String;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_f
    iget-object v4, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v4}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v4

    const v5, 0x7f0a000f

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 2073
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/gemini/goat/ValidateActivity;->access$902(Lcom/gemini/goat/ValidateActivity;Z)Z

    .line 2074
    sget-object v3, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 2075
    sget v3, Lcom/gemini/play/MGplayer;->epgList_index:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/gemini/play/MGplayer;->epgList_index:I

    .line 2076
    sget v3, Lcom/gemini/play/MGplayer;->epgList_index:I

    sget-object v4, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 2077
    const/4 v3, -0x1

    sput v3, Lcom/gemini/play/MGplayer;->epgList_index:I

    .line 2078
    :cond_0
    move-object v2, p1

    .line 2079
    .local v2, "view2":Landroid/webkit/WebView;
    move-object v0, p4

    .line 2080
    .local v0, "failingUrl2":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    const v4, 0x7f0700a6

    invoke-virtual {v3, v4}, Lcom/gemini/goat/ValidateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 2082
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "spain1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "spainglobal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2083
    :cond_1
    const v3, 0x7f0a000e

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 2084
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$1100(Lcom/gemini/goat/ValidateActivity;)V

    .line 2095
    :goto_0
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2096
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$2;-><init>(Lcom/gemini/goat/ValidateActivity$MyWebViewClient;Ljava/lang/String;Landroid/webkit/WebView;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2139
    :goto_1
    return-void

    .line 2085
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "badatv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2086
    const v3, 0x7f0a0005

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 2088
    :cond_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh-cn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2089
    const v3, 0x7f0a000d

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 2091
    :cond_4
    const v3, 0x7f0a0012

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 2110
    .end local v0    # "failingUrl2":Ljava/lang/String;
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v2    # "view2":Landroid/webkit/WebView;
    :cond_5
    move-object v2, p1

    .line 2111
    .restart local v2    # "view2":Landroid/webkit/WebView;
    move-object v0, p4

    .line 2113
    .restart local v0    # "failingUrl2":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    const v4, 0x7f0700a6

    invoke-virtual {v3, v4}, Lcom/gemini/goat/ValidateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 2115
    .restart local v1    # "frameLayout":Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "spain1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "spainglobal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2116
    :cond_6
    const v3, 0x7f0a000e

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 2117
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$1100(Lcom/gemini/goat/ValidateActivity;)V

    .line 2122
    :goto_2
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2123
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$3;

    invoke-direct {v4, p0, v0, v2}, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$3;-><init>(Lcom/gemini/goat/ValidateActivity$MyWebViewClient;Ljava/lang/String;Landroid/webkit/WebView;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2119
    :cond_7
    const v3, 0x7f0a000d

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1949
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1951
    const/4 v0, 0x1

    return v0
.end method
