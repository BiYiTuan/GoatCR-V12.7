.class Lcom/gemini/play/VodPlayerList2Activity$6$3;
.super Ljava/lang/Thread;
.source "VodPlayerList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerList2Activity$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/VodPlayerList2Activity$6;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerList2Activity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/VodPlayerList2Activity$6;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/gemini/play/VodPlayerList2Activity$6$3;->this$1:Lcom/gemini/play/VodPlayerList2Activity$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 420
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6$3;->this$1:Lcom/gemini/play/VodPlayerList2Activity$6;

    iget-object v5, v5, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerList2Activity;->access$800(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/CollectVodDB;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gemini/play/CollectVodDB;->parseAll()Ljava/util/ArrayList;

    move-result-object v4

    .line 421
    .local v4, "xlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    if-nez v4, :cond_0

    .line 442
    :goto_0
    return-void

    .line 423
    :cond_0
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 424
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/VodListStatus;

    .line 425
    .local v2, "s":Lcom/gemini/play/VodListStatus;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 426
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "ItemId"

    iget v6, v2, Lcom/gemini/play/VodListStatus;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v5, v2, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 428
    const-string v5, "ItemImageBit"

    iget-object v6, v2, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_1
    const-string v5, "ItemInfo"

    iget v6, v2, Lcom/gemini/play/VodListStatus;->clickrate:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v5, "ItemTitle"

    iget-object v6, v2, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v5, "ItemType"

    iget v6, v2, Lcom/gemini/play/VodListStatus;->infotype:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v5, "ItemHaveLoad"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v5, v2, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 435
    iget-object v3, v2, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    .line 438
    .local v3, "url":Ljava/lang/String;
    :goto_2
    const-string v5, "ItemImageUrl"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v5, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 437
    .end local v3    # "url":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/VODplayer;->gete()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/images/vodpic/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "url":Ljava/lang/String;
    goto :goto_2

    .line 441
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "s":Lcom/gemini/play/VodListStatus;
    .end local v3    # "url":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/gemini/play/VodPlayerList2Activity$6$3;->this$1:Lcom/gemini/play/VodPlayerList2Activity$6;

    iget-object v5, v5, Lcom/gemini/play/VodPlayerList2Activity$6;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-virtual {v5}, Lcom/gemini/play/VodPlayerList2Activity;->cmdMessageAddVod()V

    goto/16 :goto_0
.end method
