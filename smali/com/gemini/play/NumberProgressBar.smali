.class public Lcom/gemini/play/NumberProgressBar;
.super Landroid/view/View;
.source "NumberProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/play/NumberProgressBar$ProgressTextVisibility;
    }
.end annotation


# static fields
.field private static final INSTANCE_MAX:Ljava/lang/String; = "max"

.field private static final INSTANCE_PREFIX:Ljava/lang/String; = "prefix"

.field private static final INSTANCE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final INSTANCE_REACHED_BAR_COLOR:Ljava/lang/String; = "reached_bar_color"

.field private static final INSTANCE_REACHED_BAR_HEIGHT:Ljava/lang/String; = "reached_bar_height"

.field private static final INSTANCE_STATE:Ljava/lang/String; = "saved_instance"

.field private static final INSTANCE_SUFFIX:Ljava/lang/String; = "suffix"

.field private static final INSTANCE_TEXT_COLOR:Ljava/lang/String; = "text_color"

.field private static final INSTANCE_TEXT_SIZE:Ljava/lang/String; = "text_size"

.field private static final INSTANCE_TEXT_VISIBILITY:Ljava/lang/String; = "text_visibility"

.field private static final INSTANCE_UNREACHED_BAR_COLOR:Ljava/lang/String; = "unreached_bar_color"

.field private static final INSTANCE_UNREACHED_BAR_HEIGHT:Ljava/lang/String; = "unreached_bar_height"

.field private static final PROGRESS_TEXT_VISIBLE:I


# instance fields
.field private final default_progress_text_offset:F

.field private final default_reached_bar_height:F

.field private final default_reached_color:I

.field private final default_text_color:I

.field private final default_text_size:F

.field private final default_unreached_bar_height:F

.field private final default_unreached_color:I

.field private mCurrentDrawText:Ljava/lang/String;

.field private mCurrentProgress:I

.field private mDrawReachedBar:Z

.field private mDrawTextEnd:F

.field private mDrawTextStart:F

.field private mDrawTextWidth:F

.field private mDrawUnreachedBar:Z

.field private mIfDrawText:Z

.field private mListener:Lcom/gemini/play/OnProgressBarListener;

.field private mMaxProgress:I

.field private mOffset:F

.field private mPrefix:Ljava/lang/String;

.field private mReachedBarColor:I

.field private mReachedBarHeight:F

.field private mReachedBarPaint:Landroid/graphics/Paint;

.field private mReachedRectF:Landroid/graphics/RectF;

.field private mSuffix:Ljava/lang/String;

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mUnreachedBarColor:I

.field private mUnreachedBarHeight:F

.field private mUnreachedBarPaint:Landroid/graphics/Paint;

.field private mUnreachedRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gemini/play/NumberProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/gemini/play/NumberProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v8, 0x42

    const/16 v7, 0xcc

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 173
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/16 v2, 0x64

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->mMaxProgress:I

    .line 29
    iput v5, p0, Lcom/gemini/play/NumberProgressBar;->mCurrentProgress:I

    .line 64
    const-string v2, "%"

    iput-object v2, p0, Lcom/gemini/play/NumberProgressBar;->mSuffix:Ljava/lang/String;

    .line 69
    const-string v2, ""

    iput-object v2, p0, Lcom/gemini/play/NumberProgressBar;->mPrefix:Ljava/lang/String;

    .line 72
    const/16 v2, 0x91

    const/16 v3, 0xf1

    invoke-static {v8, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->default_text_color:I

    .line 73
    const/16 v2, 0x91

    const/16 v3, 0xf1

    invoke-static {v8, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->default_reached_color:I

    .line 74
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->default_unreached_color:I

    .line 135
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    .line 139
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/gemini/play/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    .line 149
    iput-boolean v6, p0, Lcom/gemini/play/NumberProgressBar;->mDrawUnreachedBar:Z

    .line 151
    iput-boolean v6, p0, Lcom/gemini/play/NumberProgressBar;->mDrawReachedBar:Z

    .line 153
    iput-boolean v6, p0, Lcom/gemini/play/NumberProgressBar;->mIfDrawText:Z

    .line 175
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v2}, Lcom/gemini/play/NumberProgressBar;->dp2px(F)F

    move-result v2

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->default_reached_bar_height:F

    .line 176
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/gemini/play/NumberProgressBar;->dp2px(F)F

    move-result v2

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->default_unreached_bar_height:F

    .line 177
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0, v2}, Lcom/gemini/play/NumberProgressBar;->sp2px(F)F

    move-result v2

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->default_text_size:F

    .line 178
    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p0, v2}, Lcom/gemini/play/NumberProgressBar;->dp2px(F)F

    move-result v2

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->default_progress_text_offset:F

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/gemini/goat/R$styleable;->NumberProgressBar:[I

    invoke-virtual {v2, p2, v3, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 184
    .local v0, "attributes":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    iget v3, p0, Lcom/gemini/play/NumberProgressBar;->default_reached_color:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarColor:I

    .line 185
    const/16 v2, 0x9

    iget v3, p0, Lcom/gemini/play/NumberProgressBar;->default_unreached_color:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarColor:I

    .line 186
    const/4 v2, 0x4

    iget v3, p0, Lcom/gemini/play/NumberProgressBar;->default_text_color:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->mTextColor:I

    .line 187
    const/4 v2, 0x6

    iget v3, p0, Lcom/gemini/play/NumberProgressBar;->default_text_size:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->mTextSize:F

    .line 189
    const/4 v2, 0x2

    iget v3, p0, Lcom/gemini/play/NumberProgressBar;->default_reached_bar_height:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarHeight:F

    .line 190
    const/16 v2, 0x8

    iget v3, p0, Lcom/gemini/play/NumberProgressBar;->default_unreached_bar_height:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarHeight:F

    .line 191
    const/4 v2, 0x5

    iget v3, p0, Lcom/gemini/play/NumberProgressBar;->default_progress_text_offset:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/gemini/play/NumberProgressBar;->mOffset:F

    .line 193
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 194
    .local v1, "textVisible":I
    if-eqz v1, :cond_0

    .line 195
    iput-boolean v5, p0, Lcom/gemini/play/NumberProgressBar;->mIfDrawText:Z

    .line 198
    :cond_0
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/gemini/play/NumberProgressBar;->setProgress(I)V

    .line 199
    const/16 v2, 0x64

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/gemini/play/NumberProgressBar;->setMax(I)V

    .line 201
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    invoke-direct {p0}, Lcom/gemini/play/NumberProgressBar;->initializePainters()V

    .line 203
    return-void
.end method

.method private calculateDrawRectF()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 288
    const-string v1, "%d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getProgress()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getMax()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gemini/play/NumberProgressBar;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/NumberProgressBar;->mSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    .line 290
    iget-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/gemini/play/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/gemini/play/NumberProgressBar;->mDrawTextWidth:F

    .line 292
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getProgress()I

    move-result v1

    if-nez v1, :cond_1

    .line 293
    iput-boolean v6, p0, Lcom/gemini/play/NumberProgressBar;->mDrawReachedBar:Z

    .line 294
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/gemini/play/NumberProgressBar;->mDrawTextStart:F

    .line 304
    :goto_0
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/gemini/play/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/gemini/play/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/gemini/play/NumberProgressBar;->mDrawTextEnd:F

    .line 306
    iget v1, p0, Lcom/gemini/play/NumberProgressBar;->mDrawTextStart:F

    iget v2, p0, Lcom/gemini/play/NumberProgressBar;->mDrawTextWidth:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/gemini/play/NumberProgressBar;->mDrawTextWidth:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/gemini/play/NumberProgressBar;->mDrawTextStart:F

    .line 308
    iget-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/gemini/play/NumberProgressBar;->mDrawTextStart:F

    iget v3, p0, Lcom/gemini/play/NumberProgressBar;->mOffset:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 311
    :cond_0
    iget v1, p0, Lcom/gemini/play/NumberProgressBar;->mDrawTextStart:F

    iget v2, p0, Lcom/gemini/play/NumberProgressBar;->mDrawTextWidth:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/gemini/play/NumberProgressBar;->mOffset:F

    add-float v0, v1, v2

    .line 312
    .local v0, "unreachedBarStart":F
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 313
    iput-boolean v6, p0, Lcom/gemini/play/NumberProgressBar;->mDrawUnreachedBar:Z

    .line 321
    :goto_1
    return-void

    .line 296
    .end local v0    # "unreachedBarStart":F
    :cond_1
    iput-boolean v7, p0, Lcom/gemini/play/NumberProgressBar;->mDrawReachedBar:Z

    .line 297
    iget-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 298
    iget-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 299
    iget-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/gemini/play/NumberProgressBar;->mOffset:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 300
    iget-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 301
    iget-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/gemini/play/NumberProgressBar;->mOffset:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/gemini/play/NumberProgressBar;->mDrawTextStart:F

    goto/16 :goto_0

    .line 315
    .restart local v0    # "unreachedBarStart":F
    :cond_2
    iput-boolean v7, p0, Lcom/gemini/play/NumberProgressBar;->mDrawUnreachedBar:Z

    .line 316
    iget-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 317
    iget-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 318
    iget-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarHeight:F

    neg-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 319
    iget-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarHeight:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method

.method private calculateDrawRectFWithoutProgressText()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 275
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 276
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 277
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 278
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 280
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 281
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 282
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarHeight:F

    neg-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 283
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarHeight:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 284
    return-void
.end method

.method private initializePainters()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 262
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    .line 263
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    .line 266
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 269
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/gemini/play/NumberProgressBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/gemini/play/NumberProgressBar;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 271
    return-void
.end method

.method private measure(IZ)I
    .locals 6
    .param p1, "measureSpec"    # I
    .param p2, "isWidth"    # Z

    .prologue
    .line 222
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 223
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 224
    .local v3, "size":I
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingRight()I

    move-result v5

    add-int v1, v4, v5

    .line 225
    .local v1, "padding":I
    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_2

    .line 226
    move v2, v3

    .line 238
    .local v2, "result":I
    :cond_0
    :goto_1
    return v2

    .line 224
    .end local v1    # "padding":I
    .end local v2    # "result":I
    :cond_1
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPaddingBottom()I

    move-result v5

    add-int v1, v4, v5

    goto :goto_0

    .line 228
    .restart local v1    # "padding":I
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getSuggestedMinimumWidth()I

    move-result v2

    .line 229
    .restart local v2    # "result":I
    :goto_2
    add-int/2addr v2, v1

    .line 230
    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_0

    .line 231
    if-eqz p2, :cond_4

    .line 232
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    .line 228
    .end local v2    # "result":I
    :cond_3
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getSuggestedMinimumHeight()I

    move-result v2

    goto :goto_2

    .line 234
    .restart local v2    # "result":I
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public dp2px(F)F
    .locals 3
    .param p1, "dp"    # F

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 487
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    return v1
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/gemini/play/NumberProgressBar;->mMaxProgress:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/gemini/play/NumberProgressBar;->mCurrentProgress:I

    return v0
.end method

.method public getProgressTextSize()F
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/gemini/play/NumberProgressBar;->mTextSize:F

    return v0
.end method

.method public getProgressTextVisibility()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/gemini/play/NumberProgressBar;->mIfDrawText:Z

    return v0
.end method

.method public getReachedBarColor()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarColor:I

    return v0
.end method

.method public getReachedBarHeight()F
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarHeight:F

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 212
    iget v0, p0, Lcom/gemini/play/NumberProgressBar;->mTextSize:F

    float-to-int v0, v0

    iget v1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarHeight:F

    float-to-int v1, v1

    iget v2, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarHeight:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/gemini/play/NumberProgressBar;->mTextSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/gemini/play/NumberProgressBar;->mTextColor:I

    return v0
.end method

.method public getUnreachedBarColor()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarColor:I

    return v0
.end method

.method public getUnreachedBarHeight()F
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarHeight:F

    return v0
.end method

.method public incrementProgressBy(I)V
    .locals 3
    .param p1, "by"    # I

    .prologue
    .line 429
    if-lez p1, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getProgress()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/gemini/play/NumberProgressBar;->setProgress(I)V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mListener:Lcom/gemini/play/OnProgressBarListener;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mListener:Lcom/gemini/play/OnProgressBarListener;

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getMax()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/gemini/play/OnProgressBarListener;->onProgressChange(II)V

    .line 436
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/gemini/play/NumberProgressBar;->mIfDrawText:Z

    if-eqz v0, :cond_3

    .line 244
    invoke-direct {p0}, Lcom/gemini/play/NumberProgressBar;->calculateDrawRectF()V

    .line 249
    :goto_0
    iget-boolean v0, p0, Lcom/gemini/play/NumberProgressBar;->mDrawReachedBar:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 253
    :cond_0
    iget-boolean v0, p0, Lcom/gemini/play/NumberProgressBar;->mDrawUnreachedBar:Z

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 257
    :cond_1
    iget-boolean v0, p0, Lcom/gemini/play/NumberProgressBar;->mIfDrawText:Z

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    iget v1, p0, Lcom/gemini/play/NumberProgressBar;->mDrawTextStart:F

    iget v2, p0, Lcom/gemini/play/NumberProgressBar;->mDrawTextEnd:F

    iget-object v3, p0, Lcom/gemini/play/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 259
    :cond_2
    return-void

    .line 246
    :cond_3
    invoke-direct {p0}, Lcom/gemini/play/NumberProgressBar;->calculateDrawRectFWithoutProgressText()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/gemini/play/NumberProgressBar;->measure(IZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/gemini/play/NumberProgressBar;->measure(IZ)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/NumberProgressBar;->setMeasuredDimension(II)V

    .line 218
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 465
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 466
    check-cast v0, Landroid/os/Bundle;

    .line 467
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "text_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gemini/play/NumberProgressBar;->mTextColor:I

    .line 468
    const-string v1, "text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/gemini/play/NumberProgressBar;->mTextSize:F

    .line 469
    const-string v1, "reached_bar_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarHeight:F

    .line 470
    const-string v1, "unreached_bar_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarHeight:F

    .line 471
    const-string v1, "reached_bar_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarColor:I

    .line 472
    const-string v1, "unreached_bar_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarColor:I

    .line 473
    invoke-direct {p0}, Lcom/gemini/play/NumberProgressBar;->initializePainters()V

    .line 474
    const-string v1, "max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gemini/play/NumberProgressBar;->setMax(I)V

    .line 475
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gemini/play/NumberProgressBar;->setProgress(I)V

    .line 476
    const-string v1, "prefix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gemini/play/NumberProgressBar;->setPrefix(Ljava/lang/String;)V

    .line 477
    const-string v1, "suffix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gemini/play/NumberProgressBar;->setSuffix(Ljava/lang/String;)V

    .line 478
    const-string v1, "text_visibility"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gemini/play/NumberProgressBar$ProgressTextVisibility;->Visible:Lcom/gemini/play/NumberProgressBar$ProgressTextVisibility;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/gemini/play/NumberProgressBar;->setProgressTextVisibility(Lcom/gemini/play/NumberProgressBar$ProgressTextVisibility;)V

    .line 479
    const-string v1, "saved_instance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 483
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_1
    return-void

    .line 478
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    sget-object v1, Lcom/gemini/play/NumberProgressBar$ProgressTextVisibility;->Invisible:Lcom/gemini/play/NumberProgressBar$ProgressTextVisibility;

    goto :goto_0

    .line 482
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 447
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 448
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 449
    const-string v1, "text_color"

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 450
    const-string v1, "text_size"

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getProgressTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 451
    const-string v1, "reached_bar_height"

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getReachedBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 452
    const-string v1, "unreached_bar_height"

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getUnreachedBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 453
    const-string v1, "reached_bar_color"

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getReachedBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    const-string v1, "unreached_bar_color"

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getUnreachedBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    const-string v1, "max"

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    const-string v1, "suffix"

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v1, "prefix"

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v1, "text_visibility"

    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getProgressTextVisibility()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 460
    return-object v0
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 398
    if-lez p1, :cond_0

    .line 399
    iput p1, p0, Lcom/gemini/play/NumberProgressBar;->mMaxProgress:I

    .line 400
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->invalidate()V

    .line 402
    :cond_0
    return-void
.end method

.method public setOnProgressBarListener(Lcom/gemini/play/OnProgressBarListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gemini/play/OnProgressBarListener;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/gemini/play/NumberProgressBar;->mListener:Lcom/gemini/play/OnProgressBarListener;

    .line 506
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    const-string v0, ""

    iput-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mPrefix:Ljava/lang/String;

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iput-object p1, p0, Lcom/gemini/play/NumberProgressBar;->mPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getMax()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 440
    iput p1, p0, Lcom/gemini/play/NumberProgressBar;->mCurrentProgress:I

    .line 441
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->invalidate()V

    .line 443
    :cond_0
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 2
    .param p1, "textColor"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/gemini/play/NumberProgressBar;->mTextColor:I

    .line 373
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/gemini/play/NumberProgressBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->invalidate()V

    .line 375
    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .prologue
    .line 366
    iput p1, p0, Lcom/gemini/play/NumberProgressBar;->mTextSize:F

    .line 367
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/gemini/play/NumberProgressBar;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 368
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->invalidate()V

    .line 369
    return-void
.end method

.method public setProgressTextVisibility(Lcom/gemini/play/NumberProgressBar$ProgressTextVisibility;)V
    .locals 1
    .param p1, "visibility"    # Lcom/gemini/play/NumberProgressBar$ProgressTextVisibility;

    .prologue
    .line 496
    sget-object v0, Lcom/gemini/play/NumberProgressBar$ProgressTextVisibility;->Visible:Lcom/gemini/play/NumberProgressBar$ProgressTextVisibility;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/gemini/play/NumberProgressBar;->mIfDrawText:Z

    .line 497
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->invalidate()V

    .line 498
    return-void

    .line 496
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReachedBarColor(I)V
    .locals 2
    .param p1, "progressColor"    # I

    .prologue
    .line 384
    iput p1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarColor:I

    .line 385
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 386
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->invalidate()V

    .line 387
    return-void
.end method

.method public setReachedBarHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 390
    iput p1, p0, Lcom/gemini/play/NumberProgressBar;->mReachedBarHeight:F

    .line 391
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 405
    if-nez p1, :cond_0

    .line 406
    const-string v0, ""

    iput-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mSuffix:Ljava/lang/String;

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    iput-object p1, p0, Lcom/gemini/play/NumberProgressBar;->mSuffix:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUnreachedBarColor(I)V
    .locals 2
    .param p1, "barColor"    # I

    .prologue
    .line 378
    iput p1, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarColor:I

    .line 379
    iget-object v0, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->invalidate()V

    .line 381
    return-void
.end method

.method public setUnreachedBarHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 394
    iput p1, p0, Lcom/gemini/play/NumberProgressBar;->mUnreachedBarHeight:F

    .line 395
    return-void
.end method

.method public sp2px(F)F
    .locals 2
    .param p1, "sp"    # F

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/gemini/play/NumberProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 492
    .local v0, "scale":F
    mul-float v1, p1, v0

    return v1
.end method
