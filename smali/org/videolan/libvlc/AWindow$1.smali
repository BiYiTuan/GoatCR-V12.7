.class Lorg/videolan/libvlc/AWindow$1;
.super Lorg/videolan/libvlc/AWindowNativeHandler;
.source "AWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/AWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/AWindow;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/AWindow;)V
    .locals 0
    .param p1, "this$0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 441
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0}, Lorg/videolan/libvlc/AWindowNativeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubtitlesSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/videolan/libvlc/AWindow;->access$000(Lorg/videolan/libvlc/AWindow;I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/videolan/libvlc/AWindow;->access$000(Lorg/videolan/libvlc/AWindow;I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method protected native nativeOnMouseEvent(JIIII)V
.end method

.method protected native nativeOnWindowSize(JII)V
.end method

.method public sendHardwareAccelerationError()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2200(Lorg/videolan/libvlc/AWindow;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/videolan/libvlc/AWindow$1$3;

    invoke-direct {v1, p0}, Lorg/videolan/libvlc/AWindow$1$3;-><init>(Lorg/videolan/libvlc/AWindow$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 552
    return-void
.end method

.method public setBuffersGeometry(Landroid/view/Surface;III)Z
    .locals 9
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I

    .prologue
    const/4 v7, 0x0

    .line 478
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isICSOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    .line 528
    :goto_0
    return v0

    .line 480
    :cond_0
    mul-int v0, p2, p3

    if-nez v0, :cond_1

    move v0, v7

    .line 481
    goto :goto_0

    .line 482
    :cond_1
    const-string v0, "AWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2000(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v1

    monitor-enter v1

    .line 485
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2000(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$900(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2000(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$1000(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    :cond_2
    monitor-exit v1

    move v0, v7

    goto :goto_0

    .line 487
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 489
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2200(Lorg/videolan/libvlc/AWindow;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lorg/videolan/libvlc/AWindow$1$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/videolan/libvlc/AWindow$1$1;-><init>(Lorg/videolan/libvlc/AWindow$1;Landroid/view/Surface;III)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 520
    :try_start_1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2000(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 521
    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2000(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$900(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2000(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$1000(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 522
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2000(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 525
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/InterruptedException;
    move v0, v7

    .line 526
    goto/16 :goto_0

    .line 487
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 523
    :cond_4
    :try_start_5
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2000(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$902(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;Z)Z

    .line 524
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 528
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public setCallback(J)Z
    .locals 11
    .param p1, "nativeHandle"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, -0x1

    .line 460
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1200(Lorg/videolan/libvlc/AWindow;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 461
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1300(Lorg/videolan/libvlc/AWindow;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x0

    monitor-exit v8

    .line 473
    :goto_0
    return v0

    .line 463
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0, p1, p2}, Lorg/videolan/libvlc/AWindow;->access$1302(Lorg/videolan/libvlc/AWindow;J)J

    .line 464
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1300(Lorg/videolan/libvlc/AWindow;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1400(Lorg/videolan/libvlc/AWindow;)I

    move-result v0

    if-eq v0, v9, :cond_1

    .line 466
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1300(Lorg/videolan/libvlc/AWindow;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1400(Lorg/videolan/libvlc/AWindow;)I

    move-result v4

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1500(Lorg/videolan/libvlc/AWindow;)I

    move-result v5

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1600(Lorg/videolan/libvlc/AWindow;)I

    move-result v6

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1700(Lorg/videolan/libvlc/AWindow;)I

    move-result v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/videolan/libvlc/AWindow$1;->nativeOnMouseEvent(JIIII)V

    .line 467
    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1800(Lorg/videolan/libvlc/AWindow;)I

    move-result v0

    if-eq v0, v9, :cond_2

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1900(Lorg/videolan/libvlc/AWindow;)I

    move-result v0

    if-eq v0, v9, :cond_2

    .line 468
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1300(Lorg/videolan/libvlc/AWindow;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v2}, Lorg/videolan/libvlc/AWindow;->access$1800(Lorg/videolan/libvlc/AWindow;)I

    move-result v2

    iget-object v3, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v3}, Lorg/videolan/libvlc/AWindow;->access$1900(Lorg/videolan/libvlc/AWindow;)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/videolan/libvlc/AWindow$1;->nativeOnWindowSize(JII)V

    .line 470
    :cond_2
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    iget-object v3, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/videolan/libvlc/AWindow;->access$1702(Lorg/videolan/libvlc/AWindow;I)I

    move-result v3

    invoke-static {v2, v3}, Lorg/videolan/libvlc/AWindow;->access$1602(Lorg/videolan/libvlc/AWindow;I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/videolan/libvlc/AWindow;->access$1502(Lorg/videolan/libvlc/AWindow;I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/videolan/libvlc/AWindow;->access$1402(Lorg/videolan/libvlc/AWindow;I)I

    .line 471
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/videolan/libvlc/AWindow;->access$1902(Lorg/videolan/libvlc/AWindow;I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/videolan/libvlc/AWindow;->access$1802(Lorg/videolan/libvlc/AWindow;I)I

    .line 472
    monitor-exit v8

    .line 473
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWindowLayout(IIIIII)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "visibleWidth"    # I
    .param p4, "visibleHeight"    # I
    .param p5, "sarNum"    # I
    .param p6, "sarDen"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2200(Lorg/videolan/libvlc/AWindow;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lorg/videolan/libvlc/AWindow$1$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/videolan/libvlc/AWindow$1$2;-><init>(Lorg/videolan/libvlc/AWindow$1;IIIIII)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 541
    return-void
.end method
