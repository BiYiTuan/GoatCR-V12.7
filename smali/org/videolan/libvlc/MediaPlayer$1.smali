.class Lorg/videolan/libvlc/MediaPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lorg/videolan/libvlc/AWindow$SurfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/MediaPlayer;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/MediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/videolan/libvlc/MediaPlayer;

    .prologue
    .line 342
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfacesCreated(Lorg/videolan/libvlc/AWindow;)V
    .locals 4
    .param p1, "vout"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, "play":Z
    const/4 v0, 0x0

    .line 347
    .local v0, "enableVideo":Z
    iget-object v3, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    monitor-enter v3

    .line 348
    :try_start_0
    iget-object v2, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-static {v2}, Lorg/videolan/libvlc/MediaPlayer;->access$200(Lorg/videolan/libvlc/MediaPlayer;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-static {v2}, Lorg/videolan/libvlc/MediaPlayer;->access$300(Lorg/videolan/libvlc/MediaPlayer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    const/4 v1, 0x1

    .line 352
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    if-eqz v1, :cond_3

    .line 354
    iget-object v2, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v2}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 357
    :cond_1
    :goto_1
    return-void

    .line 350
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-static {v2}, Lorg/videolan/libvlc/MediaPlayer;->access$400(Lorg/videolan/libvlc/MediaPlayer;)I

    move-result v2

    if-nez v2, :cond_0

    .line 351
    const/4 v0, 0x1

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 355
    :cond_3
    if-eqz v0, :cond_1

    .line 356
    iget-object v2, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTrackEnabled(Z)V

    goto :goto_1
.end method

.method public onSurfacesDestroyed(Lorg/videolan/libvlc/AWindow;)V
    .locals 3
    .param p1, "vout"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "disableVideo":Z
    iget-object v2, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    monitor-enter v2

    .line 363
    :try_start_0
    iget-object v1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    invoke-static {v1}, Lorg/videolan/libvlc/MediaPlayer;->access$400(Lorg/videolan/libvlc/MediaPlayer;)I

    move-result v1

    if-lez v1, :cond_0

    .line 364
    const/4 v0, 0x1

    .line 365
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    if-eqz v0, :cond_1

    .line 367
    iget-object v1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTrackEnabled(Z)V

    .line 368
    :cond_1
    return-void

    .line 365
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
