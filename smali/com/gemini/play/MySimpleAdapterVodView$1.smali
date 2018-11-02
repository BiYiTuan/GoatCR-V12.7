.class Lcom/gemini/play/MySimpleAdapterVodView$1;
.super Landroid/os/Handler;
.source "MySimpleAdapterVodView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MySimpleAdapterVodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MySimpleAdapterVodView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MySimpleAdapterVodView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MySimpleAdapterVodView;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterVodView$1;->this$0:Lcom/gemini/play/MySimpleAdapterVodView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v7, 0x7f0a005c

    .line 74
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "viewholder"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;

    .line 80
    .local v2, "my_viewhold":Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;
    invoke-virtual {v2}, Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;->getViewHolder()Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;

    move-result-object v4

    .line 81
    .local v4, "viewHolder":Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "imageurl":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    sget-object v5, Lcom/gemini/play/VODplayer;->listbitmapCache:Lcom/gemini/play/LruBitmapCache;

    invoke-virtual {v5, v3}, Lcom/gemini/play/LruBitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 87
    invoke-static {v4}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->access$000(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v4}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->access$000(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 95
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "imageurl":Ljava/lang/String;
    .end local v2    # "my_viewhold":Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "viewHolder":Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "viewholder"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;

    .line 96
    .restart local v2    # "my_viewhold":Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;
    invoke-virtual {v2}, Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;->getViewHolder()Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;

    move-result-object v4

    .line 98
    .restart local v4    # "viewHolder":Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    if-eqz v4, :cond_0

    .line 99
    invoke-static {v4}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->access$000(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 104
    .end local v2    # "my_viewhold":Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;
    .end local v4    # "viewHolder":Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    :pswitch_2
    iget-object v5, p0, Lcom/gemini/play/MySimpleAdapterVodView$1;->this$0:Lcom/gemini/play/MySimpleAdapterVodView;

    invoke-virtual {v5}, Lcom/gemini/play/MySimpleAdapterVodView;->notifyDataSetChanged()V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
