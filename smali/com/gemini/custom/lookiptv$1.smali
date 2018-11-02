.class final Lcom/gemini/custom/lookiptv$1;
.super Ljava/lang/Object;
.source "lookiptv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/custom/lookiptv;->lookiptv_start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/gemini/custom/lookiptv$1;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 58
    sget v2, Lcom/gemini/custom/lookiptv;->lookiptvSendTimeOut:I

    .line 59
    .local v2, "timeout":I
    sget-object v3, Lcom/gemini/custom/lookiptv;->lookiptvSendUrl:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget v3, Lcom/gemini/custom/lookiptv;->lookiptvSendTimeOut:I

    if-lez v3, :cond_2

    sget-object v3, Lcom/gemini/custom/lookiptv;->lookiptvSendUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_2

    sget-object v3, Lcom/gemini/custom/lookiptv;->lookiptvSendUrl:Ljava/lang/String;

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/gemini/custom/lookiptv;->lookiptvloaded:Z

    if-ne v3, v6, :cond_2

    .line 61
    sget-object v3, Lcom/gemini/custom/lookiptv;->lookiptvSendUrl:Ljava/lang/String;

    const-string v4, "#@#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    sget-object v3, Lcom/gemini/custom/lookiptv;->lookiptvSendUrl:Ljava/lang/String;

    const-string v4, "#@#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "lookiptvSendUrls":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 65
    sget-object v3, Lcom/gemini/play/MGplayer;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 66
    sget-object v3, Lcom/gemini/play/MGplayer;->mWebView:Landroid/webkit/WebView;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 68
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lookiptvSendUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/gemini/play/MGplayer;->seconds_prc:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 70
    const/16 v3, 0x3e8

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "ii":I
    .end local v1    # "lookiptvSendUrls":[Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/gemini/play/MGplayer;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_2

    .line 75
    sget-object v3, Lcom/gemini/play/MGplayer;->mWebView:Landroid/webkit/WebView;

    sget-object v4, Lcom/gemini/custom/lookiptv;->lookiptvSendUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 79
    :cond_2
    sget-boolean v3, Lcom/gemini/custom/lookiptv;->lookiptvloaded:Z

    if-ne v3, v6, :cond_3

    .line 80
    iget-object v3, p0, Lcom/gemini/custom/lookiptv$1;->val$mHandler:Landroid/os/Handler;

    int-to-long v4, v2

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    :goto_1
    return-void

    .line 82
    :cond_3
    iget-object v3, p0, Lcom/gemini/custom/lookiptv$1;->val$mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
