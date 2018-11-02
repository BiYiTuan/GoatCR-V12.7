.class final Lcom/gemini/play/VODplayer$12;
.super Ljava/lang/Thread;
.source "VODplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VODplayer;->init(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$rHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 2195
    iput-object p1, p0, Lcom/gemini/play/VODplayer$12;->val$rHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x7d0

    const/4 v8, 0x6

    .line 2198
    :goto_0
    sget-object v5, Lcom/gemini/play/VODplayer;->VodListUrlListArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 2199
    sget-object v5, Lcom/gemini/play/VODplayer;->VodListUrlListArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "ii":I
    :goto_1
    if-ltz v3, :cond_4

    .line 2200
    sget-object v5, Lcom/gemini/play/VODplayer;->VodListUrlListArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListUrlListStatus;

    .line 2201
    .local v0, "VodListUrlLister":Lcom/gemini/play/VodListUrlListStatus;
    iget-object v5, v0, Lcom/gemini/play/VodListUrlListStatus;->b:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 2202
    move-object v1, v0

    .line 2204
    .local v1, "VodListUrlLister2":Lcom/gemini/play/VodListUrlListStatus;
    iget-object v5, v0, Lcom/gemini/play/VodListUrlListStatus;->url:Ljava/lang/String;

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->getHttpBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2205
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 2207
    sget-object v5, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a005c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/VODplayer;->access$200(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lcom/gemini/play/VodListUrlListStatus;->b:Landroid/graphics/Bitmap;

    .line 2217
    :goto_2
    sget-object v5, Lcom/gemini/play/VODplayer;->VodListUrlListArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2218
    sget-object v5, Lcom/gemini/play/VODplayer;->VodListUrlListArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2199
    .end local v1    # "VodListUrlLister2":Lcom/gemini/play/VodListUrlListStatus;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2209
    .restart local v1    # "VodListUrlLister2":Lcom/gemini/play/VodListUrlListStatus;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v5

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2d

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v6

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x5a

    invoke-static {v2, v5, v6}, Lcom/gemini/play/MGplayer;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lcom/gemini/play/VodListUrlListStatus;->b:Landroid/graphics/Bitmap;

    .line 2210
    iget-object v5, p0, Lcom/gemini/play/VODplayer$12;->val$rHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2211
    iget-object v5, p0, Lcom/gemini/play/VODplayer$12;->val$rHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2212
    :cond_2
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 2213
    .local v4, "msg":Landroid/os/Message;
    iput v8, v4, Landroid/os/Message;->what:I

    .line 2214
    iget-object v5, p0, Lcom/gemini/play/VODplayer$12;->val$rHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 2225
    .end local v0    # "VodListUrlLister":Lcom/gemini/play/VodListUrlListStatus;
    .end local v1    # "VodListUrlLister2":Lcom/gemini/play/VodListUrlListStatus;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "ii":I
    .end local v4    # "msg":Landroid/os/Message;
    :cond_3
    invoke-static {v9}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 2227
    :cond_4
    invoke-static {v9}, Lcom/gemini/play/MGplayer;->sleep(I)V

    goto :goto_0
.end method
