.class Lcom/gemini/goat/ValidateActivity$2;
.super Ljava/lang/Object;
.source "ValidateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/goat/ValidateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/goat/ValidateActivity;

.field final synthetic val$timeHander:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/gemini/goat/ValidateActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/gemini/goat/ValidateActivity$2;->this$0:Lcom/gemini/goat/ValidateActivity;

    iput-object p2, p0, Lcom/gemini/goat/ValidateActivity$2;->val$timeHander:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MGplayer.load_timeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/gemini/play/MGplayer;->load_timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 380
    sget v0, Lcom/gemini/play/MGplayer;->load_timeout:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 381
    sget v0, Lcom/gemini/play/MGplayer;->epgList_index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/gemini/play/MGplayer;->epgList_index:I

    .line 382
    sget v0, Lcom/gemini/play/MGplayer;->epgList_index:I

    sget-object v1, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 383
    const/4 v0, -0x1

    sput v0, Lcom/gemini/play/MGplayer;->epgList_index:I

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$2;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v0

    sget-object v1, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v1}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$2;->val$timeHander:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    :cond_1
    return-void
.end method
