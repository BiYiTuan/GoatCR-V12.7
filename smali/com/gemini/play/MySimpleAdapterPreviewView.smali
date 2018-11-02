.class public Lcom/gemini/play/MySimpleAdapterPreviewView;
.super Landroid/widget/SimpleAdapter;
.source "MySimpleAdapterPreviewView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private current_index:I

.field private rate:F

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->current_index:I

    .line 31
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->_this:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/gemini/play/MySimpleAdapterPreviewView;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->typeFace:Landroid/graphics/Typeface;

    .line 38
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    .line 39
    return-void
.end method

.method private timeOut(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "time0"    # Ljava/lang/String;
    .param p2, "time1"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 43
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v6, v7

    .line 82
    :cond_1
    :goto_0
    return v6

    .line 46
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 51
    const-string v9, ":"

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "times1":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 53
    .local v2, "nhour":I
    const/4 v3, 0x0

    .line 54
    .local v3, "nminute":I
    array-length v9, v5

    if-lt v9, v8, :cond_3

    .line 56
    aget-object v9, v5, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 57
    aget-object v9, v5, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 60
    :cond_3
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "times0":[Ljava/lang/String;
    array-length v9, v4

    if-lt v9, v8, :cond_8

    .line 63
    aget-object v9, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "hour":I
    aget-object v9, v4, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "minute":I
    if-ge v0, v2, :cond_4

    move v6, v7

    .line 67
    goto :goto_0

    .line 69
    :cond_4
    if-ne v0, v2, :cond_5

    if-ge v1, v3, :cond_5

    move v6, v7

    .line 71
    goto :goto_0

    .line 73
    :cond_5
    if-ne v0, v2, :cond_6

    if-gt v1, v3, :cond_7

    :cond_6
    if-le v0, v2, :cond_1

    :cond_7
    move v6, v8

    .line 75
    goto :goto_0

    .end local v0    # "hour":I
    .end local v1    # "minute":I
    :cond_8
    move v6, v8

    .line 82
    goto :goto_0
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 88
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 89
    .local v1, "nhour":I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 91
    .local v2, "nminute":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v9, 0x41a00000    # 20.0f

    const/high16 v8, 0x41700000    # 15.0f

    const/16 v7, 0xff

    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "v":Landroid/view/View;
    const v4, 0x7f070019

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 99
    .local v2, "vh":Landroid/widget/TextView;
    const v4, 0x7f070017

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 100
    .local v3, "vt":Landroid/widget/TextView;
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 101
    iget-object v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 103
    iget-object v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 109
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDensityDpi()I

    move-result v4

    const/16 v5, 0xa0

    if-ne v4, v5, :cond_1

    .line 111
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 112
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 125
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    .restart local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDensityDpi()I

    move-result v4

    const/16 v5, 0xa0

    if-ne v4, v5, :cond_3

    .line 130
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 131
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 144
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->current_index:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 148
    if-eqz v1, :cond_0

    .line 150
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    :cond_0
    :goto_2
    return-object v1

    .line 114
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDensityDpi()I

    move-result v4

    const/16 v5, 0x140

    if-gt v4, v5, :cond_2

    .line 116
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 117
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    const/high16 v5, 0x41f00000    # 30.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 121
    :cond_2
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 122
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    mul-float/2addr v4, v9

    invoke-static {}, Lcom/gemini/play/MGplayer;->getDensityDpi()I

    move-result v5

    add-int/lit16 v5, v5, -0x140

    int-to-float v5, v5

    const/high16 v6, 0x43200000    # 160.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v11

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 133
    :cond_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDensityDpi()I

    move-result v4

    const/16 v5, 0x140

    if-gt v4, v5, :cond_4

    .line 135
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 136
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    const/high16 v5, 0x41f00000    # 30.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    .line 140
    :cond_4
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 141
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->rate:F

    mul-float/2addr v4, v9

    invoke-static {}, Lcom/gemini/play/MGplayer;->getDensityDpi()I

    move-result v5

    add-int/lit16 v5, v5, -0x140

    int-to-float v5, v5

    const/high16 v6, 0x43200000    # 160.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v11

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    .line 154
    :cond_5
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->current_index:I

    if-ge p1, v4, :cond_6

    .line 156
    if-eqz v1, :cond_0

    .line 158
    const/16 v4, 0xc9

    const/16 v5, 0xe

    invoke-static {v7, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    const/16 v4, 0xc9

    const/16 v5, 0xe

    invoke-static {v7, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 162
    :cond_6
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->current_index:I

    if-ne p1, v4, :cond_7

    .line 164
    if-eqz v1, :cond_0

    .line 166
    invoke-static {v7, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    invoke-static {v7, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 170
    :cond_7
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->current_index:I

    if-le p1, v4, :cond_0

    .line 172
    if-eqz v1, :cond_0

    .line 174
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterPreviewView;->current_index:I

    .line 184
    return-void
.end method
