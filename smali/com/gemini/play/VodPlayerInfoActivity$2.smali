.class Lcom/gemini/play/VodPlayerInfoActivity$2;
.super Ljava/lang/Thread;
.source "VodPlayerInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerInfoActivity;->init(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerInfoActivity;

.field final synthetic val$collect:I

.field final synthetic val$s:Lcom/gemini/play/VodListStatus;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerInfoActivity;ILcom/gemini/play/VodListStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iput p2, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$collect:I

    iput-object p3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$collect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 142
    iget v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$collect:I

    if-nez v3, :cond_4

    .line 162
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    sget-object v4, Lcom/gemini/play/VODplayer;->listbitmapCache:Lcom/gemini/play/LruBitmapCache;

    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v5, v5, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/gemini/play/LruBitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gemini/play/VodPlayerInfoActivity;->access$302(Lcom/gemini/play/VodPlayerInfoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 163
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerInfoActivity;->access$300(Lcom/gemini/play/VodPlayerInfoActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v3, v3, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v3, v3, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v2, v3, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    .line 171
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http bitmap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v3, v3, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 173
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iget-object v4, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v4, v4, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    invoke-static {v3, v4}, Lcom/gemini/play/VodPlayerInfoActivity;->access$302(Lcom/gemini/play/VodPlayerInfoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 202
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 203
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 204
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iget-object v3, v3, Lcom/gemini/play/VodPlayerInfoActivity;->rHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 205
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 169
    .restart local v2    # "url":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/VODplayer;->gete()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/images/vodpic/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v4, v4, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 175
    :cond_3
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->getHttpBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gemini/play/VodPlayerInfoActivity;->access$302(Lcom/gemini/play/VodPlayerInfoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 180
    .end local v2    # "url":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerInfoActivity;->access$000(Lcom/gemini/play/VodPlayerInfoActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget v4, v4, Lcom/gemini/play/VodListStatus;->id:I

    invoke-static {v3, v4}, Lcom/gemini/play/VODplayer;->parseCollectXML(Ljava/lang/String;I)Lcom/gemini/play/VodListStatus;

    move-result-object v0

    .line 181
    .local v0, "collects":Lcom/gemini/play/VodListStatus;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collects.url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v4, v0, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    iput-object v4, v3, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iget-object v4, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v4, v4, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    invoke-static {v3, v4}, Lcom/gemini/play/VodPlayerInfoActivity;->access$302(Lcom/gemini/play/VodPlayerInfoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 188
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerInfoActivity;->access$300(Lcom/gemini/play/VodPlayerInfoActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 190
    const/4 v2, 0x0

    .line 191
    .restart local v2    # "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v3, v3, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v3, v3, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 192
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v2, v3, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    .line 196
    :goto_2
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v3, v3, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    .line 197
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iget-object v4, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v4, v4, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    invoke-static {v3, v4}, Lcom/gemini/play/VodPlayerInfoActivity;->access$302(Lcom/gemini/play/VodPlayerInfoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 194
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/VODplayer;->gete()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/images/vodpic/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v4, v4, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 199
    :cond_6
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$2;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->getHttpBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gemini/play/VodPlayerInfoActivity;->access$302(Lcom/gemini/play/VodPlayerInfoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method
