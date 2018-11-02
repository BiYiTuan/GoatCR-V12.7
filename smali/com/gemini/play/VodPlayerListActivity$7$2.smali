.class Lcom/gemini/play/VodPlayerListActivity$7$2;
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

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerListActivity$7;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/VodPlayerListActivity$7;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/gemini/play/VodPlayerListActivity$7$2;->this$1:Lcom/gemini/play/VodPlayerListActivity$7;

    iput-object p2, p0, Lcom/gemini/play/VodPlayerListActivity$7$2;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/VodPlayerListActivity$7$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 385
    const/4 v7, 0x0

    .line 386
    .local v7, "xlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    sget-object v5, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    .line 388
    .local v5, "type_tmp":Ljava/lang/String;
    :goto_0
    sget-object v8, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    if-ne v5, v8, :cond_0

    iget-object v8, p0, Lcom/gemini/play/VodPlayerListActivity$7$2;->this$1:Lcom/gemini/play/VodPlayerListActivity$7;

    iget-object v8, v8, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    .line 389
    invoke-virtual {v8}, Lcom/gemini/play/VodPlayerListActivity;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/gemini/play/VodPlayerListActivity$7$2;->this$1:Lcom/gemini/play/VodPlayerListActivity$7;

    iget-object v8, v8, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    .line 390
    invoke-virtual {v8}, Lcom/gemini/play/VodPlayerListActivity;->isFinishing()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 472
    :cond_0
    :goto_1
    return-void

    .line 393
    :cond_1
    iget-object v8, p0, Lcom/gemini/play/VodPlayerListActivity$7$2;->val$id:Ljava/lang/String;

    iget-object v9, p0, Lcom/gemini/play/VodPlayerListActivity$7$2;->val$url:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/gemini/play/VODplayer;->parseXML(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 394
    if-nez v7, :cond_2

    .line 395
    const-string v8, "xlist:NULL"

    invoke-static {v8}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_2
    iget-object v8, p0, Lcom/gemini/play/VodPlayerListActivity$7$2;->this$1:Lcom/gemini/play/VodPlayerListActivity$7;

    iget-object v8, v8, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-virtual {v8}, Lcom/gemini/play/VodPlayerListActivity;->cmdMessageHideProgress()V

    .line 418
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_7

    .line 439
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gemini/play/VodListStatus;

    .line 440
    .local v4, "s":Lcom/gemini/play/VodListStatus;
    const/4 v0, 0x0

    .line 441
    .local v0, "checkok":Z
    const/4 v2, 0x0

    .local v2, "kk":I
    :goto_3
    sget-object v8, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 442
    sget-object v8, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, "ItemId"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget v9, v4, Lcom/gemini/play/VodListStatus;->id:I

    if-ne v8, v9, :cond_5

    .line 443
    const/4 v0, 0x1

    .line 444
    const-string v8, "checkok = true"

    invoke-static {v8}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 448
    :cond_3
    if-nez v0, :cond_4

    .line 449
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 451
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v8, v4, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v8, v4, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 452
    iget-object v6, v4, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    .line 455
    .local v6, "url":Ljava/lang/String;
    :goto_4
    const-string v8, "ItemView"

    invoke-virtual {v3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v8, "ItemId"

    iget v9, v4, Lcom/gemini/play/VodListStatus;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v8, "ItemInfo"

    iget v9, v4, Lcom/gemini/play/VodListStatus;->clickrate:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v8, "ItemTitle"

    iget-object v9, v4, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v8, "ItemType"

    sget-object v9, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v8, "ItemImageUrl"

    invoke-virtual {v3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v8, "ItemHaveLoad"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v8, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "url":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 441
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 454
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/VODplayer;->gete()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/images/vodpic/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "url":Ljava/lang/String;
    goto :goto_4

    .line 466
    .end local v0    # "checkok":Z
    .end local v2    # "kk":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "s":Lcom/gemini/play/VodListStatus;
    .end local v6    # "url":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 467
    sget v8, Lcom/gemini/play/VODplayer;->page:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/gemini/play/VODplayer;->page:I

    .line 469
    :cond_8
    iget-object v8, p0, Lcom/gemini/play/VodPlayerListActivity$7$2;->this$1:Lcom/gemini/play/VodPlayerListActivity$7;

    iget-object v8, v8, Lcom/gemini/play/VodPlayerListActivity$7;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-virtual {v8}, Lcom/gemini/play/VodPlayerListActivity;->cmdMessageAddVod()V

    goto/16 :goto_1
.end method
