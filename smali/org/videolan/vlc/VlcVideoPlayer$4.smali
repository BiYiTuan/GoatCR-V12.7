.class Lorg/videolan/vlc/VlcVideoPlayer$4;
.super Ljava/lang/Object;
.source "VlcVideoPlayer.java"

# interfaces
.implements Lorg/videolan/libvlc/Media$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/VlcVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/VlcVideoPlayer;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/VlcVideoPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/videolan/vlc/VlcVideoPlayer;

    .prologue
    .line 286
    iput-object p1, p0, Lorg/videolan/vlc/VlcVideoPlayer$4;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/videolan/libvlc/Media$Event;)V
    .locals 4
    .param p1, "event"    # Lorg/videolan/libvlc/Media$Event;

    .prologue
    .line 289
    const/4 v0, 0x1

    .line 290
    .local v0, "update":Z
    iget v1, p1, Lorg/videolan/libvlc/Media$Event;->type:I

    packed-switch v1, :pswitch_data_0

    .line 301
    :pswitch_0
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer$4;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-static {v1}, Lorg/videolan/vlc/VlcVideoPlayer;->access$300(Lorg/videolan/vlc/VlcVideoPlayer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media.Event.type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/videolan/libvlc/Media$Event;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   eventgetParsedStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media$Event;->getParsedStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    .line 306
    :goto_0
    if-eqz v0, :cond_0

    .line 309
    :cond_0
    return-void

    .line 292
    :pswitch_1
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer$4;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-static {v1}, Lorg/videolan/vlc/VlcVideoPlayer;->access$300(Lorg/videolan/vlc/VlcVideoPlayer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media.Event.MetaChanged:  ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media$Event;->getMetaId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer$4;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-static {v1}, Lorg/videolan/vlc/VlcVideoPlayer;->access$300(Lorg/videolan/vlc/VlcVideoPlayer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media.Event.ParsedChanged  ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media$Event;->getMetaId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer$4;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-static {v1}, Lorg/videolan/vlc/VlcVideoPlayer;->access$300(Lorg/videolan/vlc/VlcVideoPlayer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateChanged   ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media$Event;->getMetaId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onEvent(Lorg/videolan/libvlc/VLCEvent;)V
    .locals 0

    .prologue
    .line 286
    check-cast p1, Lorg/videolan/libvlc/Media$Event;

    invoke-virtual {p0, p1}, Lorg/videolan/vlc/VlcVideoPlayer$4;->onEvent(Lorg/videolan/libvlc/Media$Event;)V

    return-void
.end method
