.class public Lcom/gemini/play/MyPickerView;
.super Landroid/view/View;
.source "MyPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/play/MyPickerView$onSelectListener;,
        Lcom/gemini/play/MyPickerView$MyTimerTask;
    }
.end annotation


# static fields
.field public static final MARGIN_ALPHA:F = 2.8f

.field public static final SPEED:F = 2.0f

.field public static final TAG:Ljava/lang/String; = "PickerView"


# instance fields
.field private iface:Lcom/gemini/play/ListViewInterface;

.field private isInit:Z

.field private mBmp:Landroid/graphics/Bitmap;

.field private mColorText:I

.field private mCurrentSelected:I

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastDownY:F

.field private mMaxTextAlpha:F

.field private mMaxTextSize:F

.field private mMinTextAlpha:F

.field private mMinTextSize:F

.field private mMoveLen:F

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectListener:Lcom/gemini/play/MyPickerView$onSelectListener;

.field private mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

.field private mViewHeight:I

.field private mViewWidth:I

.field private timer:Ljava/util/Timer;

.field private typeFace:Landroid/graphics/Typeface;

.field updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mMaxTextSize:F

    .line 44
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mMinTextSize:F

    .line 46
    iput v2, p0, Lcom/gemini/play/MyPickerView;->mMaxTextAlpha:F

    .line 47
    iput v2, p0, Lcom/gemini/play/MyPickerView;->mMinTextAlpha:F

    .line 49
    const v0, 0xffffff

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mColorText:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyPickerView;->isInit:Z

    .line 62
    iput-object v1, p0, Lcom/gemini/play/MyPickerView;->typeFace:Landroid/graphics/Typeface;

    .line 64
    iput-object v1, p0, Lcom/gemini/play/MyPickerView;->mBmp:Landroid/graphics/Bitmap;

    .line 66
    iput-object v1, p0, Lcom/gemini/play/MyPickerView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 68
    new-instance v0, Lcom/gemini/play/MyPickerView$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyPickerView$1;-><init>(Lcom/gemini/play/MyPickerView;)V

    iput-object v0, p0, Lcom/gemini/play/MyPickerView;->updateHandler:Landroid/os/Handler;

    .line 93
    invoke-direct {p0}, Lcom/gemini/play/MyPickerView;->init()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mMaxTextSize:F

    .line 44
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mMinTextSize:F

    .line 46
    iput v2, p0, Lcom/gemini/play/MyPickerView;->mMaxTextAlpha:F

    .line 47
    iput v2, p0, Lcom/gemini/play/MyPickerView;->mMinTextAlpha:F

    .line 49
    const v0, 0xffffff

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mColorText:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyPickerView;->isInit:Z

    .line 62
    iput-object v1, p0, Lcom/gemini/play/MyPickerView;->typeFace:Landroid/graphics/Typeface;

    .line 64
    iput-object v1, p0, Lcom/gemini/play/MyPickerView;->mBmp:Landroid/graphics/Bitmap;

    .line 66
    iput-object v1, p0, Lcom/gemini/play/MyPickerView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 68
    new-instance v0, Lcom/gemini/play/MyPickerView$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyPickerView$1;-><init>(Lcom/gemini/play/MyPickerView;)V

    iput-object v0, p0, Lcom/gemini/play/MyPickerView;->updateHandler:Landroid/os/Handler;

    .line 99
    invoke-direct {p0}, Lcom/gemini/play/MyPickerView;->init()V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyPickerView;)F
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyPickerView;

    .prologue
    .line 29
    iget v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    return v0
.end method

.method static synthetic access$002(Lcom/gemini/play/MyPickerView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyPickerView;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    return p1
.end method

.method static synthetic access$100(Lcom/gemini/play/MyPickerView;)Lcom/gemini/play/MyPickerView$MyTimerTask;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyPickerView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/gemini/play/MyPickerView;Lcom/gemini/play/MyPickerView$MyTimerTask;)Lcom/gemini/play/MyPickerView$MyTimerTask;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyPickerView;
    .param p1, "x1"    # Lcom/gemini/play/MyPickerView$MyTimerTask;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/gemini/play/MyPickerView;->mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/gemini/play/MyPickerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyPickerView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/gemini/play/MyPickerView;->performSelect()V

    return-void
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

    invoke-virtual {v0}, Lcom/gemini/play/MyPickerView$MyTimerTask;->cancel()Z

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gemini/play/MyPickerView;->mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mLastDownY:F

    .line 263
    return-void
.end method

.method private doMove(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const v3, 0x40333333    # 2.8f

    .line 294
    iget v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/gemini/play/MyPickerView;->mLastDownY:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    .line 296
    iget v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    iget v1, p0, Lcom/gemini/play/MyPickerView;->mMinTextSize:F

    mul-float/2addr v1, v3

    div-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/gemini/play/MyPickerView;->moveTailToHead()V

    .line 299
    iget v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    iget v1, p0, Lcom/gemini/play/MyPickerView;->mMinTextSize:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    .line 306
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mLastDownY:F

    .line 307
    invoke-virtual {p0}, Lcom/gemini/play/MyPickerView;->invalidate()V

    .line 308
    return-void

    .line 300
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    const v1, -0x3fcccccd    # -2.8f

    iget v2, p0, Lcom/gemini/play/MyPickerView;->mMinTextSize:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/gemini/play/MyPickerView;->moveHeadToTail()V

    .line 303
    iget v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    iget v1, p0, Lcom/gemini/play/MyPickerView;->mMinTextSize:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    goto :goto_0
.end method

.method private doMoveLeft()V
    .locals 6

    .prologue
    .line 267
    iget v0, p0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    .line 268
    iget v0, p0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    if-gez v0, :cond_0

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    const v1, 0x40333333    # 2.8f

    iget v2, p0, Lcom/gemini/play/MyPickerView;->mMinTextSize:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    .line 274
    new-instance v0, Lcom/gemini/play/MyPickerView$MyTimerTask;

    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->updateHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/gemini/play/MyPickerView$MyTimerTask;-><init>(Lcom/gemini/play/MyPickerView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/gemini/play/MyPickerView;->mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

    .line 275
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private doMoveRight()V
    .locals 6

    .prologue
    .line 280
    iget v0, p0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    .line 281
    iget v0, p0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    const v0, 0x40333333    # 2.8f

    iget v1, p0, Lcom/gemini/play/MyPickerView;->mMinTextSize:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    .line 287
    new-instance v0, Lcom/gemini/play/MyPickerView$MyTimerTask;

    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->updateHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/gemini/play/MyPickerView$MyTimerTask;-><init>(Lcom/gemini/play/MyPickerView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/gemini/play/MyPickerView;->mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

    .line 288
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private doUp(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 312
    iget v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    .line 327
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

    invoke-virtual {v0}, Lcom/gemini/play/MyPickerView$MyTimerTask;->cancel()Z

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gemini/play/MyPickerView;->mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

    .line 322
    :cond_1
    new-instance v0, Lcom/gemini/play/MyPickerView$MyTimerTask;

    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->updateHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/gemini/play/MyPickerView$MyTimerTask;-><init>(Lcom/gemini/play/MyPickerView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/gemini/play/MyPickerView;->mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

    .line 323
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->mTask:Lcom/gemini/play/MyPickerView$MyTimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 325
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "ItemID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, "data":Ljava/lang/String;
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->iface:Lcom/gemini/play/ListViewInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v6}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private drawData(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget v2, v0, Lcom/gemini/play/MyPickerView;->mViewHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/gemini/play/MyPickerView;->parabola(FF)F

    move-result v14

    .line 172
    .local v14, "scale":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/gemini/play/MyPickerView;->mMaxTextSize:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/gemini/play/MyPickerView;->mMinTextSize:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/gemini/play/MyPickerView;->mMinTextSize:F

    add-float v15, v2, v3

    .line 173
    .local v15, "size":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/gemini/play/MyPickerView;->mMaxTextAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gemini/play/MyPickerView;->mMinTextAlpha:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gemini/play/MyPickerView;->mMinTextAlpha:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gemini/play/MyPickerView;->typeFace:Landroid/graphics/Typeface;

    if-eqz v2, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/MyPickerView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 177
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/gemini/play/MyPickerView;->mViewWidth:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-float v0, v2

    move/from16 v16, v0

    .line 178
    .local v16, "x":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/gemini/play/MyPickerView;->mViewHeight:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v0, v2

    move/from16 v17, v0

    .line 179
    .local v17, "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    .line 180
    .local v12, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    move/from16 v0, v17

    float-to-double v2, v0

    iget v4, v12, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    iget v6, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v11, v2

    .line 182
    .local v11, "baseline":F
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MyPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0044

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gemini/play/MyPickerView;->mBmp:Landroid/graphics/Bitmap;

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/MyPickerView;->mBmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    iget v2, v12, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v6, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, v17, v2

    float-to-int v6, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/gemini/play/MyPickerView;->mViewWidth:I

    iget v2, v12, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v8, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v8, v2, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v10}, Lcom/gemini/play/MyPickerView;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;IIIIII)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "ItemName"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1, v11, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 188
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    sub-int/2addr v2, v13

    if-ltz v2, :cond_1

    .line 190
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v2}, Lcom/gemini/play/MyPickerView;->drawOtherText(Landroid/graphics/Canvas;II)V

    .line 188
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 192
    :cond_1
    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 194
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v2}, Lcom/gemini/play/MyPickerView;->drawOtherText(Landroid/graphics/Canvas;II)V

    .line 192
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 198
    :cond_2
    return-void
.end method

.method public static drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;IIIIII)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "blt"    # Landroid/graphics/Bitmap;
    .param p2, "mPaint"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "bx"    # I
    .param p8, "by"    # I

    .prologue
    .line 371
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 372
    .local v1, "src":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 373
    .local v0, "dst":Landroid/graphics/Rect;
    iput p7, v1, Landroid/graphics/Rect;->left:I

    .line 374
    iput p8, v1, Landroid/graphics/Rect;->top:I

    .line 375
    add-int v2, p7, p5

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 376
    add-int v2, p8, p6

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 377
    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 378
    iput p4, v0, Landroid/graphics/Rect;->top:I

    .line 379
    add-int v2, p3, p5

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 380
    add-int v2, p4, p6

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 381
    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 382
    return-void
.end method

.method private drawOtherText(Landroid/graphics/Canvas;II)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "position"    # I
    .param p3, "type"    # I

    .prologue
    .line 202
    const v8, 0x40333333    # 2.8f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/gemini/play/MyPickerView;->mMinTextSize:F

    mul-float/2addr v8, v9

    move/from16 v0, p2

    int-to-float v9, v0

    mul-float/2addr v8, v9

    move/from16 v0, p3

    int-to-float v9, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/gemini/play/MyPickerView;->mMoveLen:F

    mul-float/2addr v9, v10

    add-float v3, v8, v9

    .line 203
    .local v3, "d":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/gemini/play/MyPickerView;->mViewHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v8, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3}, Lcom/gemini/play/MyPickerView;->parabola(FF)F

    move-result v5

    .line 204
    .local v5, "scale":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/gemini/play/MyPickerView;->mMaxTextSize:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/gemini/play/MyPickerView;->mMinTextSize:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/gemini/play/MyPickerView;->mMinTextSize:F

    add-float v6, v8, v9

    .line 205
    .local v6, "size":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 206
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/gemini/play/MyPickerView;->mMaxTextAlpha:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/gemini/play/MyPickerView;->mMinTextAlpha:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, v5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/gemini/play/MyPickerView;->mMinTextAlpha:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/MyPickerView;->typeFace:Landroid/graphics/Typeface;

    if-eqz v8, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/gemini/play/MyPickerView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 210
    :cond_0
    move-object/from16 v0, p0

    iget v8, v0, Lcom/gemini/play/MyPickerView;->mViewHeight:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    move/from16 v0, p3

    int-to-float v10, v0

    mul-float/2addr v10, v3

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v7, v8

    .line 211
    .local v7, "y":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    .line 212
    .local v4, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    float-to-double v8, v7

    iget v10, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    iget v12, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v2, v8

    .line 213
    .local v2, "baseline":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    mul-int v10, p3, p2

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, "ItemName"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/gemini/play/MyPickerView;->mViewWidth:I

    int-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-float v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v2, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 214
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyPickerView;->timer:Ljava/util/Timer;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    .line 154
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 156
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/gemini/play/MyPickerView;->mColorText:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    invoke-virtual {p0}, Lcom/gemini/play/MyPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0044

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MyPickerView;->mBmp:Landroid/graphics/Bitmap;

    .line 159
    return-void
.end method

.method private moveHeadToTail()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 128
    .local v0, "head":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method private moveTailToHead()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 135
    .local v0, "tail":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 137
    return-void
.end method

.method private parabola(FF)F
    .locals 8
    .param p1, "zero"    # F
    .param p2, "x"    # F

    .prologue
    const/4 v1, 0x0

    .line 218
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-float v4, p2, p1

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v0, v2

    .line 219
    .local v0, "f":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    .end local v0    # "f":F
    :cond_0
    return v0
.end method

.method private performSelect()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->mSelectListener:Lcom/gemini/play/MyPickerView$onSelectListener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->mSelectListener:Lcom/gemini/play/MyPickerView$onSelectListener;

    iget-object v0, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "ItemID"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/gemini/play/MyPickerView$onSelectListener;->onSelect(Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public getFocus()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 348
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyPickerView;->setFocusable(Z)V

    .line 349
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyPickerView;->setFocusableInTouchMode(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/gemini/play/MyPickerView;->requestFocus()Z

    .line 351
    invoke-virtual {p0}, Lcom/gemini/play/MyPickerView;->requestFocusFromTouch()Z

    .line 352
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 165
    iget-boolean v0, p0, Lcom/gemini/play/MyPickerView;->isInit:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/gemini/play/MyPickerView;->drawData(Landroid/graphics/Canvas;)V

    .line 167
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 223
    const/16 v1, 0x13

    if-ne p1, v1, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/gemini/play/MyPickerView;->doMoveLeft()V

    .line 234
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 226
    :cond_1
    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    .line 227
    invoke-direct {p0}, Lcom/gemini/play/MyPickerView;->doMoveRight()V

    goto :goto_0

    .line 229
    :cond_2
    const/16 v1, 0x17

    if-eq p1, v1, :cond_3

    const/16 v1, 0x42

    if-ne p1, v1, :cond_0

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ItemID"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/gemini/play/MyPickerView;->iface:Lcom/gemini/play/ListViewInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 143
    invoke-virtual {p0}, Lcom/gemini/play/MyPickerView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mViewHeight:I

    .line 144
    invoke-virtual {p0}, Lcom/gemini/play/MyPickerView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mViewWidth:I

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/MyPickerView;->isInit:Z

    .line 146
    invoke-virtual {p0}, Lcom/gemini/play/MyPickerView;->invalidate()V

    .line 147
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 243
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/gemini/play/MyPickerView;->doDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 246
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/gemini/play/MyPickerView;->doMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 249
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/gemini/play/MyPickerView;->doUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/gemini/play/MyPickerView;->mDataList:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    .line 117
    invoke-virtual {p0}, Lcom/gemini/play/MyPickerView;->invalidate()V

    .line 118
    return-void
.end method

.method public setFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 361
    int-to-float v0, p1

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mMinTextSize:F

    iput v0, p0, Lcom/gemini/play/MyPickerView;->mMaxTextSize:F

    .line 362
    return-void
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/gemini/play/MyPickerView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 387
    return-void
.end method

.method public setOnSelectListener(Lcom/gemini/play/MyPickerView$onSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gemini/play/MyPickerView$onSelectListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/gemini/play/MyPickerView;->mSelectListener:Lcom/gemini/play/MyPickerView$onSelectListener;

    .line 105
    return-void
.end method

.method public setSelected(I)V
    .locals 0
    .param p1, "selected"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/gemini/play/MyPickerView;->mCurrentSelected:I

    .line 123
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/gemini/play/MyPickerView;->typeFace:Landroid/graphics/Typeface;

    .line 367
    return-void
.end method
