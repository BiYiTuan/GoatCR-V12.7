.class Lcom/gemini/goat/ValidateActivity$MyWebViewClient$1;
.super Ljava/lang/Object;
.source "ValidateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/goat/ValidateActivity$MyWebViewClient;


# direct methods
.method constructor <init>(Lcom/gemini/goat/ValidateActivity$MyWebViewClient;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/goat/ValidateActivity$MyWebViewClient;

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$1;->this$1:Lcom/gemini/goat/ValidateActivity$MyWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$1;->this$1:Lcom/gemini/goat/ValidateActivity$MyWebViewClient;

    iget-object v0, v0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$900(Lcom/gemini/goat/ValidateActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1965
    sget v0, Lcom/gemini/play/MGplayer;->epgList_index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/gemini/play/MGplayer;->epgList_index:I

    .line 1966
    sget v0, Lcom/gemini/play/MGplayer;->epgList_index:I

    sget-object v1, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1967
    const/4 v0, -0x1

    sput v0, Lcom/gemini/play/MGplayer;->epgList_index:I

    .line 1969
    :cond_0
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$1;->this$1:Lcom/gemini/goat/ValidateActivity$MyWebViewClient;

    iget-object v0, v0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1970
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$1;->this$1:Lcom/gemini/goat/ValidateActivity$MyWebViewClient;

    iget-object v0, v0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1971
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient$1;->this$1:Lcom/gemini/goat/ValidateActivity$MyWebViewClient;

    iget-object v0, v0, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getWebView(Landroid/webkit/WebView;)V

    .line 1974
    :cond_1
    return-void
.end method
