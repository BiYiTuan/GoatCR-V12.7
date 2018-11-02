.class final Lcom/gemini/play/MGplayer$5;
.super Ljava/lang/Thread;
.source "MGplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MGplayer;->upnp(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pol:Ljava/lang/String;

.field final synthetic val$port:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2253
    iput-object p1, p0, Lcom/gemini/play/MGplayer$5;->val$port:Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/MGplayer$5;->val$pol:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2256
    :try_start_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 2258
    .local v2, "ip":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2259
    invoke-static {}, Lcom/gemini/play/MGplayer;->access$100()Lcom/gemini/play/gplayer;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/MGplayer$5;->val$port:Ljava/lang/String;

    iget-object v5, p0, Lcom/gemini/play/MGplayer$5;->val$port:Ljava/lang/String;

    iget-object v6, p0, Lcom/gemini/play/MGplayer$5;->val$pol:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/gemini/play/gplayer;->upnp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2269
    .end local v2    # "ip":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2262
    :catch_0
    move-exception v0

    .line 2264
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v4, "data"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2265
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "upnp"

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2266
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2267
    const-string v3, "upnp error"

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_0
.end method
