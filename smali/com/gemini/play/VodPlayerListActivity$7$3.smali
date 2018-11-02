.class Lcom/gemini/play/VodPlayerListActivity$7$3;
.super Ljava/lang/Thread;
.source "VodPlayerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerListActivity$7;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/VodPlayerListActivity$7;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerListActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/VodPlayerListActivity$7;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/gemini/play/VodPlayerListActivity$7$3;->this$1:Lcom/gemini/play/VodPlayerListActivity$7;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 491
    iget-object v4, p0, Lcom/gemini/play/VodPlayerListActivity$7$3;->this$1:Lcom/gemini/play/VodPlayerListActivity$7;

    iget-object v4, v4, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v4}, Lcom/gemini/play/VodPlayerListActivity;->access$900(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/CollectVodDB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gemini/play/CollectVodDB;->parseAll()Ljava/util/ArrayList;

    move-result-object v3

    .line 492
    .local v3, "xlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    if-nez v3, :cond_0

    .line 507
    :goto_0
    return-void

    .line 494
    :cond_0
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 495
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/VodListStatus;

    .line 496
    .local v2, "s":Lcom/gemini/play/VodListStatus;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 497
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ItemId"

    iget v5, v2, Lcom/gemini/play/VodListStatus;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v4, v2, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 499
    const-string v4, "ItemImageBit"

    iget-object v5, v2, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_1
    const-string v4, "ItemInfo"

    iget v5, v2, Lcom/gemini/play/VodListStatus;->clickrate:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v4, "ItemTitle"

    iget-object v5, v2, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v4, "ItemType"

    iget v5, v2, Lcom/gemini/play/VodListStatus;->infotype:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v4, "ItemHaveLoad"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v4, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 506
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "s":Lcom/gemini/play/VodListStatus;
    :cond_2
    iget-object v4, p0, Lcom/gemini/play/VodPlayerListActivity$7$3;->this$1:Lcom/gemini/play/VodPlayerListActivity$7;

    iget-object v4, v4, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-virtual {v4}, Lcom/gemini/play/VodPlayerListActivity;->cmdMessageAddVod()V

    goto :goto_0
.end method
