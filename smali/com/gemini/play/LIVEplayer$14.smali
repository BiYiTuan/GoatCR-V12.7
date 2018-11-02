.class final Lcom/gemini/play/LIVEplayer$14;
.super Ljava/lang/Object;
.source "LIVEplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LIVEplayer;->playVideoMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pHandler:Landroid/os/Handler;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$14;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$14;->val$password:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/LIVEplayer$14;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x5b

    .line 1889
    const/4 v7, 0x0

    .line 1890
    .local v7, "userid":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1891
    .local v6, "sgin":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/LIVEplayer$14;->val$url:Ljava/lang/String;

    .line 1892
    .local v2, "key_url2":Ljava/lang/String;
    iget-object v8, p0, Lcom/gemini/play/LIVEplayer$14;->val$password:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/gemini/play/LIVEplayer$14;->val$password:Ljava/lang/String;

    const-string v9, "@PWUSERID@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_0

    .line 1893
    iget-object v8, p0, Lcom/gemini/play/LIVEplayer$14;->val$password:Ljava/lang/String;

    const-string v9, "@PWUSERID@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1894
    .local v5, "pwuserid":[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    aget-object v8, v5, v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 1895
    aget-object v7, v5, v11

    .line 1899
    .end local v5    # "pwuserid":[Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "userid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1900
    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1901
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/gemini/play/MGplayer;->ip:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1902
    const-string v8, "<br>"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1903
    .local v4, "pos":I
    add-int/lit8 v8, v4, 0x4

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1906
    .end local v4    # "pos":I
    :cond_1
    iget-object v8, p0, Lcom/gemini/play/LIVEplayer$14;->val$url:Ljava/lang/String;

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1907
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/gemini/play/LIVEplayer$14;->val$url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1911
    :goto_0
    move-object v1, v2

    .line 1913
    .local v1, "key_url":Ljava/lang/String;
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1914
    .local v3, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1915
    .local v0, "data":Landroid/os/Bundle;
    const-string v8, "url"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1917
    iput v10, v3, Landroid/os/Message;->what:I

    .line 1918
    iget-object v8, p0, Lcom/gemini/play/LIVEplayer$14;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1919
    iget-object v8, p0, Lcom/gemini/play/LIVEplayer$14;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1920
    :cond_2
    iget-object v8, p0, Lcom/gemini/play/LIVEplayer$14;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1921
    return-void

    .line 1909
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "key_url":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/gemini/play/LIVEplayer$14;->val$url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
