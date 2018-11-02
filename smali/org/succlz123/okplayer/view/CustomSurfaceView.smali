.class public Lorg/succlz123/okplayer/view/CustomSurfaceView;
.super Landroid/view/SurfaceView;
.source "CustomSurfaceView.java"


# static fields
.field private static final MAX_ASPECT_RATIO_DEFORMATION_FRACTION:F = 0.01f


# instance fields
.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 49
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 50
    iget v4, p0, Lorg/succlz123/okplayer/view/CustomSurfaceView;->videoAspectRatio:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Lorg/succlz123/okplayer/view/CustomSurfaceView;->getMeasuredWidth()I

    move-result v3

    .line 56
    .local v3, "width":I
    invoke-virtual {p0}, Lorg/succlz123/okplayer/view/CustomSurfaceView;->getMeasuredHeight()I

    move-result v1

    .line 57
    .local v1, "height":I
    int-to-float v4, v3

    int-to-float v5, v1

    div-float v2, v4, v5

    .line 58
    .local v2, "viewAspectRatio":F
    iget v4, p0, Lorg/succlz123/okplayer/view/CustomSurfaceView;->videoAspectRatio:F

    div-float/2addr v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v4, v5

    .line 59
    .local v0, "aspectDeformation":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    .line 64
    cmpl-float v4, v0, v6

    if-lez v4, :cond_2

    .line 65
    int-to-float v4, v3

    iget v5, p0, Lorg/succlz123/okplayer/view/CustomSurfaceView;->videoAspectRatio:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 69
    :goto_1
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/view/SurfaceView;->onMeasure(II)V

    goto :goto_0

    .line 67
    :cond_2
    int-to-float v4, v1

    iget v5, p0, Lorg/succlz123/okplayer/view/CustomSurfaceView;->videoAspectRatio:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    goto :goto_1
.end method

.method public setAspectRatio(F)V
    .locals 1
    .param p1, "widthHeightRatio"    # F

    .prologue
    .line 41
    iget v0, p0, Lorg/succlz123/okplayer/view/CustomSurfaceView;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 42
    iput p1, p0, Lorg/succlz123/okplayer/view/CustomSurfaceView;->videoAspectRatio:F

    .line 43
    invoke-virtual {p0}, Lorg/succlz123/okplayer/view/CustomSurfaceView;->requestLayout()V

    .line 45
    :cond_0
    return-void
.end method
