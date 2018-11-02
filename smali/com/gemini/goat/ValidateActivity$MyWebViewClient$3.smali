.class Lcom/gemini/goat/ValidateActivity$MyWebViewClient$3;
.super Ljava/lang/Object;
.source "ValidateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/goat/ValidateActivity$MyWebViewClient;

.field final synthetic val$failingUrl2:Ljava/lang/String;

.field final synthetic val$view2:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/gemini/goat/ValidateActivity$MyWebViewClient;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/goat/ValidateActivity$MyWebViewClient;

    .prologue
    .line 2123
    iput-object p1, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$3;->this$1:Lcom/gemini/goat/ValidateActivity$MyWebViewClient;

    iput-object p2, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$3;->val$failingUrl2:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$3;->val$view2:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$3;->val$failingUrl2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2126
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$3;->this$1:Lcom/gemini/goat/ValidateActivity$MyWebViewClient;

    iget-object v0, v0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2127
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quanxing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2128
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$3;->val$view2:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$3;->val$failingUrl2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2133
    :goto_0
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$3;->this$1:Lcom/gemini/goat/ValidateActivity$MyWebViewClient;

    iget-object v0, v0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2135
    return-void

    .line 2130
    :cond_0
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$3;->this$1:Lcom/gemini/goat/ValidateActivity$MyWebViewClient;

    iget-object v0, v0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getWebView(Landroid/webkit/WebView;)V

    goto :goto_0
.end method
