.class public Lcom/gemini/play/ScrollTextView;
.super Landroid/widget/TextView;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/play/ScrollTextView$SavedState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static time:I


# instance fields
.field private color:Ljava/lang/String;

.field private first:Z

.field public isStarting:Z

.field private paint:Landroid/graphics/Paint;

.field private settime:I

.field private speed:F

.field private step:F

.field private temp_view_plus_text_length:F

.field private temp_view_plus_two_text_length:F

.field private text:Ljava/lang/String;

.field private textLength:F

.field private text_dtime:Ljava/lang/String;

.field private text_every:Ljava/lang/String;

.field private text_one:Ljava/lang/String;

.field private times_dtime:I

.field private times_every:I

.field private times_one:I

.field private times_runtime:I

.field private viewWidth:F

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/gemini/play/ScrollTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/ScrollTextView;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/gemini/play/ScrollTextView;->time:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->textLength:F

    .line 21
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->viewWidth:F

    .line 22
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->step:F

    .line 23
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->y:F

    .line 24
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->x:F

    .line 25
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->temp_view_plus_text_length:F

    .line 26
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->temp_view_plus_two_text_length:F

    .line 27
    iput-boolean v2, p0, Lcom/gemini/play/ScrollTextView;->isStarting:Z

    .line 28
    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->paint:Landroid/graphics/Paint;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/gemini/play/ScrollTextView;->text:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/ScrollTextView;->first:Z

    .line 31
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/gemini/play/ScrollTextView;->speed:F

    .line 32
    const-string v0, "FFFFFF"

    iput-object v0, p0, Lcom/gemini/play/ScrollTextView;->color:Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/gemini/play/ScrollTextView;->settime:I

    .line 36
    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_one:Ljava/lang/String;

    .line 37
    iput v3, p0, Lcom/gemini/play/ScrollTextView;->times_one:I

    .line 38
    iput v2, p0, Lcom/gemini/play/ScrollTextView;->times_runtime:I

    .line 40
    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_every:Ljava/lang/String;

    .line 41
    iput v3, p0, Lcom/gemini/play/ScrollTextView;->times_every:I

    .line 43
    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_dtime:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/gemini/play/ScrollTextView;->times_dtime:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->textLength:F

    .line 21
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->viewWidth:F

    .line 22
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->step:F

    .line 23
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->y:F

    .line 24
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->x:F

    .line 25
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->temp_view_plus_text_length:F

    .line 26
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->temp_view_plus_two_text_length:F

    .line 27
    iput-boolean v2, p0, Lcom/gemini/play/ScrollTextView;->isStarting:Z

    .line 28
    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->paint:Landroid/graphics/Paint;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/gemini/play/ScrollTextView;->text:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/ScrollTextView;->first:Z

    .line 31
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/gemini/play/ScrollTextView;->speed:F

    .line 32
    const-string v0, "FFFFFF"

    iput-object v0, p0, Lcom/gemini/play/ScrollTextView;->color:Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/gemini/play/ScrollTextView;->settime:I

    .line 36
    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_one:Ljava/lang/String;

    .line 37
    iput v3, p0, Lcom/gemini/play/ScrollTextView;->times_one:I

    .line 38
    iput v2, p0, Lcom/gemini/play/ScrollTextView;->times_runtime:I

    .line 40
    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_every:Ljava/lang/String;

    .line 41
    iput v3, p0, Lcom/gemini/play/ScrollTextView;->times_every:I

    .line 43
    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_dtime:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/gemini/play/ScrollTextView;->times_dtime:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->textLength:F

    .line 21
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->viewWidth:F

    .line 22
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->step:F

    .line 23
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->y:F

    .line 24
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->x:F

    .line 25
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->temp_view_plus_text_length:F

    .line 26
    iput v0, p0, Lcom/gemini/play/ScrollTextView;->temp_view_plus_two_text_length:F

    .line 27
    iput-boolean v2, p0, Lcom/gemini/play/ScrollTextView;->isStarting:Z

    .line 28
    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->paint:Landroid/graphics/Paint;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/gemini/play/ScrollTextView;->text:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/ScrollTextView;->first:Z

    .line 31
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/gemini/play/ScrollTextView;->speed:F

    .line 32
    const-string v0, "FFFFFF"

    iput-object v0, p0, Lcom/gemini/play/ScrollTextView;->color:Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/gemini/play/ScrollTextView;->settime:I

    .line 36
    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_one:Ljava/lang/String;

    .line 37
    iput v3, p0, Lcom/gemini/play/ScrollTextView;->times_one:I

    .line 38
    iput v2, p0, Lcom/gemini/play/ScrollTextView;->times_runtime:I

    .line 40
    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_every:Ljava/lang/String;

    .line 41
    iput v3, p0, Lcom/gemini/play/ScrollTextView;->times_every:I

    .line 43
    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_dtime:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/gemini/play/ScrollTextView;->times_dtime:I

    .line 56
    return-void
.end method

.method private char_to_int(C)I
    .locals 2
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 287
    const/16 v1, 0x30

    if-ne p1, v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    const/16 v1, 0x31

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 289
    :cond_2
    const/16 v1, 0x32

    if-ne p1, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 290
    :cond_3
    const/16 v1, 0x33

    if-ne p1, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    .line 291
    :cond_4
    const/16 v1, 0x34

    if-ne p1, v1, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    .line 292
    :cond_5
    const/16 v1, 0x35

    if-ne p1, v1, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    .line 293
    :cond_6
    const/16 v1, 0x36

    if-ne p1, v1, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    .line 294
    :cond_7
    const/16 v1, 0x37

    if-ne p1, v1, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    .line 295
    :cond_8
    const/16 v1, 0x38

    if-ne p1, v1, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    .line 296
    :cond_9
    const/16 v1, 0x39

    if-ne p1, v1, :cond_a

    const/16 v0, 0x9

    goto :goto_0

    .line 297
    :cond_a
    const/16 v1, 0x61

    if-ne p1, v1, :cond_b

    const/16 v0, 0xa

    goto :goto_0

    .line 298
    :cond_b
    const/16 v1, 0x62

    if-ne p1, v1, :cond_c

    const/16 v0, 0xb

    goto :goto_0

    .line 299
    :cond_c
    const/16 v1, 0x63

    if-ne p1, v1, :cond_d

    const/16 v0, 0xc

    goto :goto_0

    .line 300
    :cond_d
    const/16 v1, 0x64

    if-ne p1, v1, :cond_e

    const/16 v0, 0xd

    goto :goto_0

    .line 301
    :cond_e
    const/16 v1, 0x65

    if-ne p1, v1, :cond_f

    const/16 v0, 0xe

    goto :goto_0

    .line 302
    :cond_f
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    const/16 v0, 0xf

    goto :goto_0
.end method


# virtual methods
.method public gettime()I
    .locals 1

    .prologue
    .line 282
    sget v0, Lcom/gemini/play/ScrollTextView;->time:I

    return v0
.end method

.method public hideScroll()V
    .locals 1

    .prologue
    .line 175
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 176
    return-void
.end method

.method public init(Landroid/view/WindowManager;)V
    .locals 9
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    const/4 v6, 0x6

    const/4 v8, 0x1

    const/16 v7, 0xff

    .line 62
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iput-object v5, p0, Lcom/gemini/play/ScrollTextView;->paint:Landroid/graphics/Paint;

    .line 64
    iget-object v5, p0, Lcom/gemini/play/ScrollTextView;->color:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 65
    .local v3, "c":[C
    array-length v5, v3

    if-ge v5, v6, :cond_2

    .line 67
    iget-object v5, p0, Lcom/gemini/play/ScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/gemini/play/ScrollTextView;->text:Ljava/lang/String;

    .line 81
    iget-object v5, p0, Lcom/gemini/play/ScrollTextView;->paint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/gemini/play/ScrollTextView;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/gemini/play/ScrollTextView;->textLength:F

    .line 82
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/gemini/play/ScrollTextView;->viewWidth:F

    .line 83
    iget v5, p0, Lcom/gemini/play/ScrollTextView;->viewWidth:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 86
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/gemini/play/ScrollTextView;->viewWidth:F

    .line 89
    .end local v4    # "display":Landroid/view/Display;
    :cond_0
    iget v5, p0, Lcom/gemini/play/ScrollTextView;->textLength:F

    iget v6, p0, Lcom/gemini/play/ScrollTextView;->viewWidth:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 90
    iput-boolean v8, p0, Lcom/gemini/play/ScrollTextView;->isStarting:Z

    .line 92
    :cond_1
    iget v5, p0, Lcom/gemini/play/ScrollTextView;->textLength:F

    iput v5, p0, Lcom/gemini/play/ScrollTextView;->step:F

    .line 93
    iget v5, p0, Lcom/gemini/play/ScrollTextView;->viewWidth:F

    iget v6, p0, Lcom/gemini/play/ScrollTextView;->textLength:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/gemini/play/ScrollTextView;->temp_view_plus_text_length:F

    .line 94
    iget v5, p0, Lcom/gemini/play/ScrollTextView;->viewWidth:F

    iget v6, p0, Lcom/gemini/play/ScrollTextView;->textLength:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/gemini/play/ScrollTextView;->temp_view_plus_two_text_length:F

    .line 95
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->getTextSize()F

    move-result v5

    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/gemini/play/ScrollTextView;->y:F

    .line 96
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/gemini/play/ScrollTextView;->x:F

    .line 97
    return-void

    .line 69
    :cond_2
    array-length v5, v3

    if-ne v5, v6, :cond_3

    .line 71
    const/4 v5, 0x0

    aget-char v5, v3, v5

    invoke-direct {p0, v5}, Lcom/gemini/play/ScrollTextView;->char_to_int(C)I

    move-result v5

    aget-char v6, v3, v8

    invoke-direct {p0, v6}, Lcom/gemini/play/ScrollTextView;->char_to_int(C)I

    move-result v6

    mul-int v2, v5, v6

    .line 72
    .local v2, "R":I
    const/4 v5, 0x2

    aget-char v5, v3, v5

    invoke-direct {p0, v5}, Lcom/gemini/play/ScrollTextView;->char_to_int(C)I

    move-result v5

    const/4 v6, 0x3

    aget-char v6, v3, v6

    invoke-direct {p0, v6}, Lcom/gemini/play/ScrollTextView;->char_to_int(C)I

    move-result v6

    mul-int v1, v5, v6

    .line 73
    .local v1, "G":I
    const/4 v5, 0x4

    aget-char v5, v3, v5

    invoke-direct {p0, v5}, Lcom/gemini/play/ScrollTextView;->char_to_int(C)I

    move-result v5

    const/4 v6, 0x5

    aget-char v6, v3, v6

    invoke-direct {p0, v6}, Lcom/gemini/play/ScrollTextView;->char_to_int(C)I

    move-result v6

    mul-int v0, v5, v6

    .line 74
    .local v0, "B":I
    iget-object v5, p0, Lcom/gemini/play/ScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7, v2, v1, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_0

    .line 78
    .end local v0    # "B":I
    .end local v1    # "G":I
    .end local v2    # "R":I
    :cond_3
    iget-object v5, p0, Lcom/gemini/play/ScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    const/4 v5, -0x3

    const/4 v4, 0x0

    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "dtimeout":I
    iget-boolean v1, p0, Lcom/gemini/play/ScrollTextView;->first:Z

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/gemini/play/ScrollTextView;->viewWidth:F

    .line 206
    const-string v1, "width"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/gemini/play/ScrollTextView;->viewWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iput-boolean v7, p0, Lcom/gemini/play/ScrollTextView;->first:Z

    .line 210
    :cond_0
    iget v1, p0, Lcom/gemini/play/ScrollTextView;->speed:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/gemini/play/ScrollTextView;->text:Ljava/lang/String;

    iget v2, p0, Lcom/gemini/play/ScrollTextView;->y:F

    iget-object v3, p0, Lcom/gemini/play/ScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 215
    :cond_1
    iget-boolean v1, p0, Lcom/gemini/play/ScrollTextView;->isStarting:Z

    if-nez v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/gemini/play/ScrollTextView;->paint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/gemini/play/ScrollTextView;->text:Ljava/lang/String;

    iget v2, p0, Lcom/gemini/play/ScrollTextView;->x:F

    iget v3, p0, Lcom/gemini/play/ScrollTextView;->y:F

    iget-object v4, p0, Lcom/gemini/play/ScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 278
    :cond_2
    :goto_0
    return-void

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/gemini/play/ScrollTextView;->paint:Landroid/graphics/Paint;

    if-eqz v1, :cond_4

    .line 221
    iget-object v1, p0, Lcom/gemini/play/ScrollTextView;->text:Ljava/lang/String;

    iget v2, p0, Lcom/gemini/play/ScrollTextView;->temp_view_plus_text_length:F

    iget v3, p0, Lcom/gemini/play/ScrollTextView;->step:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/gemini/play/ScrollTextView;->y:F

    iget-object v4, p0, Lcom/gemini/play/ScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 223
    :cond_4
    iget v1, p0, Lcom/gemini/play/ScrollTextView;->step:F

    iget v2, p0, Lcom/gemini/play/ScrollTextView;->speed:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/gemini/play/ScrollTextView;->step:F

    .line 224
    iget v1, p0, Lcom/gemini/play/ScrollTextView;->step:F

    iget v2, p0, Lcom/gemini/play/ScrollTextView;->temp_view_plus_two_text_length:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 226
    sget v1, Lcom/gemini/play/ScrollTextView;->time:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/gemini/play/ScrollTextView;->time:I

    .line 227
    iget v1, p0, Lcom/gemini/play/ScrollTextView;->textLength:F

    iput v1, p0, Lcom/gemini/play/ScrollTextView;->step:F

    .line 229
    iget v1, p0, Lcom/gemini/play/ScrollTextView;->times_dtime:I

    if-lez v1, :cond_5

    .line 230
    const/4 v0, 0x1

    .line 231
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "times_dtime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/gemini/play/ScrollTextView;->times_dtime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 238
    :goto_1
    iget v1, p0, Lcom/gemini/play/ScrollTextView;->settime:I

    if-lez v1, :cond_6

    sget v1, Lcom/gemini/play/ScrollTextView;->time:I

    iget v2, p0, Lcom/gemini/play/ScrollTextView;->settime:I

    if-le v1, v2, :cond_6

    .line 240
    iget v1, p0, Lcom/gemini/play/ScrollTextView;->times_every:I

    if-ne v1, v5, :cond_9

    iget-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_one:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 242
    iget-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_one:Ljava/lang/String;

    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->text:Ljava/lang/String;

    .line 243
    iget v1, p0, Lcom/gemini/play/ScrollTextView;->times_one:I

    iput v1, p0, Lcom/gemini/play/ScrollTextView;->settime:I

    .line 244
    iget v1, p0, Lcom/gemini/play/ScrollTextView;->times_runtime:I

    sput v1, Lcom/gemini/play/ScrollTextView;->time:I

    .line 245
    iput v6, p0, Lcom/gemini/play/ScrollTextView;->times_every:I

    .line 254
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_every:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/gemini/play/ScrollTextView;->times_every:I

    if-le v1, v6, :cond_7

    .line 256
    sget v1, Lcom/gemini/play/ScrollTextView;->time:I

    iput v1, p0, Lcom/gemini/play/ScrollTextView;->times_runtime:I

    .line 258
    iget-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_every:Ljava/lang/String;

    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->text:Ljava/lang/String;

    .line 259
    iget v1, p0, Lcom/gemini/play/ScrollTextView;->times_every:I

    iput v1, p0, Lcom/gemini/play/ScrollTextView;->settime:I

    .line 261
    sput v7, Lcom/gemini/play/ScrollTextView;->time:I

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_every:Ljava/lang/String;

    .line 264
    iput v5, p0, Lcom/gemini/play/ScrollTextView;->times_every:I

    .line 267
    :cond_7
    if-nez v0, :cond_a

    .line 269
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->invalidate()V

    goto/16 :goto_0

    .line 235
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 248
    :cond_9
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->resetTime()V

    .line 249
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->stopScroll()V

    .line 250
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->hideScroll()V

    goto :goto_2

    .line 272
    :cond_a
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/gemini/play/ScrollTextView$1;

    invoke-direct {v2, p0}, Lcom/gemini/play/ScrollTextView$1;-><init>(Lcom/gemini/play/ScrollTextView;)V

    iget v3, p0, Lcom/gemini/play/ScrollTextView;->times_dtime:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 111
    instance-of v1, p1, Lcom/gemini/play/ScrollTextView$SavedState;

    if-nez v1, :cond_0

    .line 112
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 121
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 115
    check-cast v0, Lcom/gemini/play/ScrollTextView$SavedState;

    .line 116
    .local v0, "ss":Lcom/gemini/play/ScrollTextView$SavedState;
    invoke-virtual {v0}, Lcom/gemini/play/ScrollTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 118
    iget v1, v0, Lcom/gemini/play/ScrollTextView$SavedState;->step:F

    iput v1, p0, Lcom/gemini/play/ScrollTextView;->step:F

    .line 119
    iget-boolean v1, v0, Lcom/gemini/play/ScrollTextView$SavedState;->isStarting:Z

    iput-boolean v1, p0, Lcom/gemini/play/ScrollTextView;->isStarting:Z

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 101
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/gemini/play/ScrollTextView$SavedState;

    invoke-direct {v0, v1}, Lcom/gemini/play/ScrollTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 103
    .local v0, "ss":Lcom/gemini/play/ScrollTextView$SavedState;
    iget v2, p0, Lcom/gemini/play/ScrollTextView;->step:F

    iput v2, v0, Lcom/gemini/play/ScrollTextView$SavedState;->step:F

    .line 104
    iget-boolean v2, p0, Lcom/gemini/play/ScrollTextView;->isStarting:Z

    iput-boolean v2, v0, Lcom/gemini/play/ScrollTextView$SavedState;->isStarting:Z

    .line 106
    return-object v0
.end method

.method public resetTime()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    sput v0, Lcom/gemini/play/ScrollTextView;->time:I

    .line 186
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/gemini/play/ScrollTextView;->color:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setScrollTime(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/gemini/play/ScrollTextView;->settime:I

    .line 181
    return-void
.end method

.method public speedScroll(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 190
    iput p1, p0, Lcom/gemini/play/ScrollTextView;->speed:F

    .line 191
    return-void
.end method

.method public start(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "x0"    # I
    .param p4, "y0"    # I
    .param p5, "w0"    # I
    .param p6, "h0"    # I
    .param p7, "speed"    # F
    .param p8, "fontsize"    # I
    .param p9, "color"    # Ljava/lang/String;

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 309
    int-to-float v0, p8

    invoke-virtual {p0, v0}, Lcom/gemini/play/ScrollTextView;->setTextSize(F)V

    .line 310
    invoke-virtual {p0, p7}, Lcom/gemini/play/ScrollTextView;->speedScroll(F)V

    .line 311
    invoke-virtual {p0, p9}, Lcom/gemini/play/ScrollTextView;->setColor(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0, p2}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 314
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->startScroll()V

    .line 322
    return-void
.end method

.method public start(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "speed"    # F
    .param p8, "fontsize"    # I
    .param p9, "color"    # Ljava/lang/String;
    .param p10, "time"    # I

    .prologue
    .line 363
    iput-object p2, p0, Lcom/gemini/play/ScrollTextView;->text_one:Ljava/lang/String;

    .line 364
    iput p10, p0, Lcom/gemini/play/ScrollTextView;->times_one:I

    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 367
    int-to-float v0, p8

    invoke-virtual {p0, v0}, Lcom/gemini/play/ScrollTextView;->setTextSize(F)V

    .line 368
    invoke-virtual {p0, p7}, Lcom/gemini/play/ScrollTextView;->speedScroll(F)V

    .line 369
    invoke-virtual {p0, p9}, Lcom/gemini/play/ScrollTextView;->setColor(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0, p2}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget v0, p0, Lcom/gemini/play/ScrollTextView;->times_one:I

    if-lez v0, :cond_0

    .line 372
    iget v0, p0, Lcom/gemini/play/ScrollTextView;->times_one:I

    invoke-virtual {p0, v0}, Lcom/gemini/play/ScrollTextView;->setScrollTime(I)V

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 374
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->startScroll()V

    .line 375
    return-void
.end method

.method public startScroll()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/ScrollTextView;->isStarting:Z

    .line 164
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->invalidate()V

    .line 165
    return-void
.end method

.method public start_dtime(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "speed"    # F
    .param p8, "fontsize"    # I
    .param p9, "color"    # Ljava/lang/String;
    .param p10, "dtime"    # I

    .prologue
    .line 380
    iput-object p2, p0, Lcom/gemini/play/ScrollTextView;->text_dtime:Ljava/lang/String;

    .line 381
    iput p10, p0, Lcom/gemini/play/ScrollTextView;->times_dtime:I

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 384
    int-to-float v0, p8

    invoke-virtual {p0, v0}, Lcom/gemini/play/ScrollTextView;->setTextSize(F)V

    .line 385
    invoke-virtual {p0, p7}, Lcom/gemini/play/ScrollTextView;->speedScroll(F)V

    .line 386
    invoke-virtual {p0, p9}, Lcom/gemini/play/ScrollTextView;->setColor(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, p2}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 389
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->startScroll()V

    .line 390
    return-void
.end method

.method public start_every(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "speed"    # F
    .param p8, "fontsize"    # I
    .param p9, "color"    # Ljava/lang/String;
    .param p10, "time"    # I

    .prologue
    .line 326
    iput-object p2, p0, Lcom/gemini/play/ScrollTextView;->text_every:Ljava/lang/String;

    .line 327
    iput p10, p0, Lcom/gemini/play/ScrollTextView;->times_every:I

    .line 329
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->stopScroll()V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start_every:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/ScrollTextView;->text_every:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/gemini/play/ScrollTextView;->times_every:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 333
    int-to-float v0, p8

    invoke-virtual {p0, v0}, Lcom/gemini/play/ScrollTextView;->setTextSize(F)V

    .line 334
    invoke-virtual {p0, p7}, Lcom/gemini/play/ScrollTextView;->speedScroll(F)V

    .line 335
    invoke-virtual {p0, p9}, Lcom/gemini/play/ScrollTextView;->setColor(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 340
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->startScroll()V

    .line 341
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/ScrollTextView;->isStarting:Z

    .line 171
    invoke-virtual {p0}, Lcom/gemini/play/ScrollTextView;->invalidate()V

    .line 172
    return-void
.end method
