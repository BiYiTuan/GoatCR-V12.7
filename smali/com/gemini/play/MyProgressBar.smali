.class public Lcom/gemini/play/MyProgressBar;
.super Landroid/widget/ProgressBar;
.source "MyProgressBar.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private text_progress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/gemini/play/MyProgressBar;->text_progress:Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Lcom/gemini/play/MyProgressBar;->initPaint()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/gemini/play/MyProgressBar;->text_progress:Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/gemini/play/MyProgressBar;->initPaint()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/gemini/play/MyProgressBar;->text_progress:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/gemini/play/MyProgressBar;->initPaint()V

    .line 27
    return-void
.end method

.method private initPaint()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/gemini/play/MyProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/gemini/play/MyProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    return-void
.end method

.method private setTextProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 64
    if-gez p1, :cond_0

    .line 66
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyProgressBar;->setVisibility(I)V

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/gemini/play/MyProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 71
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gemini/play/MyProgressBar;->text_progress:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 46
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/gemini/play/MyProgressBar;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/gemini/play/MyProgressBar;->text_progress:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/gemini/play/MyProgressBar;->text_progress:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 47
    invoke-virtual {p0}, Lcom/gemini/play/MyProgressBar;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v1, v3, v4

    .line 48
    .local v1, "x":I
    invoke-virtual {p0}, Lcom/gemini/play/MyProgressBar;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int v2, v3, v4

    .line 49
    .local v2, "y":I
    iget-object v3, p0, Lcom/gemini/play/MyProgressBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    iget-object v3, p0, Lcom/gemini/play/MyProgressBar;->text_progress:Ljava/lang/String;

    int-to-float v4, v1

    int-to-float v5, v2

    iget-object v6, p0, Lcom/gemini/play/MyProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 44
    .end local v0    # "rect":Landroid/graphics/Rect;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/gemini/play/MyProgressBar;->text_progress:Ljava/lang/String;

    .line 39
    return-void
.end method
