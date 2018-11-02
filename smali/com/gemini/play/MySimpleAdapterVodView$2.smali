.class Lcom/gemini/play/MySimpleAdapterVodView$2;
.super Ljava/lang/Thread;
.source "MySimpleAdapterVodView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MySimpleAdapterVodView;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MySimpleAdapterVodView;

.field final synthetic val$ItemHaveLoad:I

.field final synthetic val$bimage:Landroid/graphics/Bitmap;

.field final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/gemini/play/MySimpleAdapterVodView;Ljava/util/HashMap;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MySimpleAdapterVodView;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterVodView$2;->this$0:Lcom/gemini/play/MySimpleAdapterVodView;

    iput-object p2, p0, Lcom/gemini/play/MySimpleAdapterVodView$2;->val$map:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/gemini/play/MySimpleAdapterVodView$2;->val$bimage:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/gemini/play/MySimpleAdapterVodView$2;->val$ItemHaveLoad:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, "b2":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/gemini/play/MySimpleAdapterVodView$2;->val$map:Ljava/util/HashMap;

    const-string v5, "ItemImageUrl"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    .line 265
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/gemini/play/MySimpleAdapterVodView$2;->val$bimage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 267
    iget-object v4, p0, Lcom/gemini/play/MySimpleAdapterVodView$2;->val$map:Ljava/util/HashMap;

    const-string v5, "ItemId"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 268
    sget-object v4, Lcom/gemini/play/VODplayer;->listbitmapCache:Lcom/gemini/play/LruBitmapCache;

    iget-object v5, p0, Lcom/gemini/play/MySimpleAdapterVodView$2;->val$bimage:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3, v5}, Lcom/gemini/play/LruBitmapCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 272
    :cond_0
    sget-object v4, Lcom/gemini/play/VODplayer;->listbitmapCache:Lcom/gemini/play/LruBitmapCache;

    invoke-virtual {v4, v3}, Lcom/gemini/play/LruBitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/gemini/play/MySimpleAdapterVodView$2;->val$ItemHaveLoad:I

    if-nez v4, :cond_1

    .line 287
    const/16 v4, 0x2710

    invoke-static {v3, v4}, Lcom/gemini/play/MGplayer;->getHttpBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    .local v0, "b1":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 290
    const-string v4, "ItemImageUrl b1 null"

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 322
    .end local v0    # "b1":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 294
    .restart local v0    # "b1":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v4, Lcom/gemini/play/VODplayer;->listbitmapCache:Lcom/gemini/play/LruBitmapCache;

    invoke-virtual {v4, v3, v0}, Lcom/gemini/play/LruBitmapCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 296
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 297
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v2, Landroid/os/Message;->what:I

    .line 298
    iget-object v4, p0, Lcom/gemini/play/MySimpleAdapterVodView$2;->this$0:Lcom/gemini/play/MySimpleAdapterVodView;

    iget-object v4, v4, Lcom/gemini/play/MySimpleAdapterVodView;->pHandler:Landroid/os/Handler;

    iget v5, v2, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 299
    iget-object v4, p0, Lcom/gemini/play/MySimpleAdapterVodView$2;->this$0:Lcom/gemini/play/MySimpleAdapterVodView;

    iget-object v4, v4, Lcom/gemini/play/MySimpleAdapterVodView;->pHandler:Landroid/os/Handler;

    iget v5, v2, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    :cond_3
    iget-object v4, p0, Lcom/gemini/play/MySimpleAdapterVodView$2;->this$0:Lcom/gemini/play/MySimpleAdapterVodView;

    iget-object v4, v4, Lcom/gemini/play/MySimpleAdapterVodView;->pHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
