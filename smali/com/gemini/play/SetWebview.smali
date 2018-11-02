.class public Lcom/gemini/play/SetWebview;
.super Landroid/app/Activity;
.source "SetWebview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/play/SetWebview$MyWebViewClient;,
        Lcom/gemini/play/SetWebview$PluginInterface;
    }
.end annotation


# instance fields
.field private mWebSettings:Landroid/webkit/WebSettings;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/gemini/play/SetWebview;->mWebView:Landroid/webkit/WebView;

    .line 36
    iput-object v0, p0, Lcom/gemini/play/SetWebview;->mWebSettings:Landroid/webkit/WebSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/SetWebview;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/SetWebview;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/gemini/play/SetWebview;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 327
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 329
    .local v0, "keyCode":I
    packed-switch v0, :pswitch_data_0

    .line 350
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 346
    :pswitch_0
    invoke-virtual {p0}, Lcom/gemini/play/SetWebview;->finish()V

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0, v3}, Lcom/gemini/play/SetWebview;->requestWindowFeature(I)Z

    .line 44
    invoke-virtual {p0}, Lcom/gemini/play/SetWebview;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 46
    const v2, 0x7f09006b

    invoke-virtual {p0, v2}, Lcom/gemini/play/SetWebview;->setContentView(I)V

    .line 50
    const v2, 0x7f07017e

    invoke-virtual {p0, v2}, Lcom/gemini/play/SetWebview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/gemini/play/SetWebview;->mWebView:Landroid/webkit/WebView;

    .line 51
    iget-object v2, p0, Lcom/gemini/play/SetWebview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/gemini/play/SetWebview;->mWebSettings:Landroid/webkit/WebSettings;

    .line 52
    iget-object v2, p0, Lcom/gemini/play/SetWebview;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    iget-object v2, p0, Lcom/gemini/play/SetWebview;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/gemini/play/SetWebview$MyWebViewClient;

    invoke-direct {v3, p0}, Lcom/gemini/play/SetWebview$MyWebViewClient;-><init>(Lcom/gemini/play/SetWebview;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 54
    iget-object v2, p0, Lcom/gemini/play/SetWebview;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/gemini/play/SetWebview$PluginInterface;

    invoke-direct {v3, p0}, Lcom/gemini/play/SetWebview$PluginInterface;-><init>(Lcom/gemini/play/SetWebview;)V

    const-string v4, "Authentication"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/gemini/play/SetWebview;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 56
    iget-object v2, p0, Lcom/gemini/play/SetWebview;->mWebView:Landroid/webkit/WebView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 58
    iget-object v2, p0, Lcom/gemini/play/SetWebview;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/gemini/play/SetWebview$1;

    invoke-direct {v3, p0}, Lcom/gemini/play/SetWebview$1;-><init>(Lcom/gemini/play/SetWebview;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 154
    const-string v2, "data"

    invoke-static {p0, v2, v5}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "setwebview"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    .line 159
    iget-object v2, p0, Lcom/gemini/play/SetWebview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 160
    const v2, 0x7f0b009e

    invoke-virtual {p0, v2}, Lcom/gemini/play/SetWebview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/gemini/play/SetWebview;->mWebView:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/set.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
