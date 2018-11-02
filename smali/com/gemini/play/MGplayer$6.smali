.class final Lcom/gemini/play/MGplayer$6;
.super Ljava/lang/Thread;
.source "MGplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MGplayer;->Thread_LoadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$editorName:Ljava/lang/String;

.field final synthetic val$image:Ljava/lang/String;

.field final synthetic val$md5:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2330
    iput-object p1, p0, Lcom/gemini/play/MGplayer$6;->val$image:Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/MGplayer$6;->val$md5:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/MGplayer$6;->val$editorName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/gemini/play/MGplayer$6;->val$image:Ljava/lang/String;

    .line 2333
    .local v0, "Loadground":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/background/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2335
    .local v4, "imagePath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loadingground 1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2336
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Background:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v6}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/images/background/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2339
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v6}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/images/background/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/gemini/play/MGplayer;->donwFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2346
    :cond_0
    :goto_0
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 2347
    iget-object v5, p0, Lcom/gemini/play/MGplayer$6;->val$md5:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 2348
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->file_md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2349
    .local v3, "filemd5":Ljava/lang/String;
    iget-object v5, p0, Lcom/gemini/play/MGplayer$6;->val$md5:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2350
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->deleteFile(Ljava/lang/String;)Z

    .line 2360
    .end local v3    # "filemd5":Ljava/lang/String;
    .end local v4    # "imagePath":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 2340
    .restart local v4    # "imagePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2342
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2355
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    sget-object v5, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v6, "data"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2356
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/gemini/play/MGplayer$6;->val$editorName:Ljava/lang/String;

    iget-object v6, p0, Lcom/gemini/play/MGplayer$6;->val$image:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2357
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method
