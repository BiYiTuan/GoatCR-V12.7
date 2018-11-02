.class public Lorg/succlz123/okplayer/view/OkVideoView$CustomTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OkVideoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/succlz123/okplayer/view/OkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomTouchListener"
.end annotation


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lorg/succlz123/okplayer/view/OkVideoView;


# direct methods
.method public constructor <init>(Lorg/succlz123/okplayer/view/OkVideoView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 375
    iput-object p1, p0, Lorg/succlz123/okplayer/view/OkVideoView$CustomTouchListener;->this$0:Lorg/succlz123/okplayer/view/OkVideoView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 376
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView$CustomTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 377
    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 387
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView$CustomTouchListener;->this$0:Lorg/succlz123/okplayer/view/OkVideoView;

    invoke-static {v0}, Lorg/succlz123/okplayer/view/OkVideoView;->access$000(Lorg/succlz123/okplayer/view/OkVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 388
    const/4 v0, 0x0

    .line 396
    :goto_0
    return v0

    .line 391
    :cond_0
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView$CustomTouchListener;->this$0:Lorg/succlz123/okplayer/view/OkVideoView;

    invoke-static {v0}, Lorg/succlz123/okplayer/view/OkVideoView;->access$000(Lorg/succlz123/okplayer/view/OkVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView$CustomTouchListener;->this$0:Lorg/succlz123/okplayer/view/OkVideoView;

    invoke-static {v0}, Lorg/succlz123/okplayer/view/OkVideoView;->access$000(Lorg/succlz123/okplayer/view/OkVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 396
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView$CustomTouchListener;->this$0:Lorg/succlz123/okplayer/view/OkVideoView;

    invoke-static {v0}, Lorg/succlz123/okplayer/view/OkVideoView;->access$000(Lorg/succlz123/okplayer/view/OkVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 381
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView$CustomTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 382
    const/4 v0, 0x1

    return v0
.end method
