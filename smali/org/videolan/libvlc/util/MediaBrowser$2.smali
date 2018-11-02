.class Lorg/videolan/libvlc/util/MediaBrowser$2;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Lorg/videolan/libvlc/MediaList$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/util/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/util/MediaBrowser;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/util/MediaBrowser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/videolan/libvlc/util/MediaBrowser;

    .prologue
    .line 263
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/videolan/libvlc/MediaList$Event;)V
    .locals 8
    .param p1, "event"    # Lorg/videolan/libvlc/MediaList$Event;

    .prologue
    const/4 v7, -0x1

    .line 266
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v4

    if-nez v4, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    move-object v3, p1

    .line 269
    .local v3, "mlEvent":Lorg/videolan/libvlc/MediaList$Event;
    const/4 v1, -0x1

    .line 274
    .local v1, "index":I
    iget v4, v3, Lorg/videolan/libvlc/MediaList$Event;->type:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 277
    :pswitch_1
    const/4 v0, 0x0

    .line 278
    .local v0, "found":Z
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$100(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/libvlc/Media;

    .line 279
    .local v2, "media":Lorg/videolan/libvlc/Media;
    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-virtual {v6}, Lorg/videolan/libvlc/Media;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 280
    const/4 v0, 0x1

    .line 284
    .end local v2    # "media":Lorg/videolan/libvlc/Media;
    :cond_3
    if-nez v0, :cond_4

    .line 285
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$100(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v3, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$100(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 287
    :cond_4
    if-eq v1, v7, :cond_0

    .line 288
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v4

    iget-object v5, v3, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-interface {v4, v1, v5}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onMediaAdded(ILorg/videolan/libvlc/Media;)V

    goto :goto_0

    .line 291
    .end local v0    # "found":Z
    :pswitch_2
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$100(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v3, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 292
    if-eq v1, v7, :cond_5

    .line 293
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$100(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 294
    :cond_5
    if-eq v1, v7, :cond_0

    .line 295
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v4

    iget-object v5, v3, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-interface {v4, v1, v5}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onMediaRemoved(ILorg/videolan/libvlc/Media;)V

    goto/16 :goto_0

    .line 298
    :pswitch_3
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v4

    invoke-interface {v4}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onBrowseEnd()V

    goto/16 :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onEvent(Lorg/videolan/libvlc/VLCEvent;)V
    .locals 0

    .prologue
    .line 263
    check-cast p1, Lorg/videolan/libvlc/MediaList$Event;

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/util/MediaBrowser$2;->onEvent(Lorg/videolan/libvlc/MediaList$Event;)V

    return-void
.end method
