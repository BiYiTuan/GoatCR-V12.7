.class public Lcom/gemini/play/MySimpleAdapterBackPreviewView;
.super Landroid/widget/SimpleAdapter;
.source "MySimpleAdapterBackPreviewView.java"


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
    .line 31
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->current_index:I

    .line 33
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->_this:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->init()V

    .line 35
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->typeFace:Landroid/graphics/Typeface;

    .line 40
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->rate:F

    .line 41
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

    .line 45
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v6, v7

    .line 84
    :cond_1
    :goto_0
    return v6

    .line 48
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 53
    const-string v9, ":"

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "times1":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 55
    .local v2, "nhour":I
    const/4 v3, 0x0

    .line 56
    .local v3, "nminute":I
    array-length v9, v5

    if-lt v9, v8, :cond_3

    .line 58
    aget-object v9, v5, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 59
    aget-object v9, v5, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 62
    :cond_3
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "times0":[Ljava/lang/String;
    array-length v9, v4

    if-lt v9, v8, :cond_8

    .line 65
    aget-object v9, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, "hour":I
    aget-object v9, v4, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 67
    .local v1, "minute":I
    if-ge v0, v2, :cond_4

    move v6, v7

    .line 69
    goto :goto_0

    .line 71
    :cond_4
    if-ne v0, v2, :cond_5

    if-ge v1, v3, :cond_5

    move v6, v7

    .line 73
    goto :goto_0

    .line 75
    :cond_5
    if-ne v0, v2, :cond_6

    if-gt v1, v3, :cond_7

    :cond_6
    if-le v0, v2, :cond_1

    :cond_7
    move v6, v8

    .line 77
    goto :goto_0

    .end local v0    # "hour":I
    .end local v1    # "minute":I
    :cond_8
    move v6, v8

    .line 84
    goto :goto_0
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 90
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 91
    .local v1, "nhour":I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 93
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
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 100
    .local v1, "v":Landroid/view/View;
    const v4, 0x7f070019

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    .local v2, "vh":Landroid/widget/TextView;
    const v4, 0x7f070017

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 102
    .local v3, "vt":Landroid/widget/TextView;
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->rate:F

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 103
    iget-object v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->rate:F

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    iget-object v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDensityDpi()I

    move-result v4

    const/16 v5, 0x140

    if-gt v4, v5, :cond_1

    .line 110
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->rate:F

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 111
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->rate:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 117
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 120
    .restart local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDensityDpi()I

    move-result v4

    const/16 v5, 0x140

    if-gt v4, v5, :cond_2

    .line 122
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->rate:F

    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 123
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->rate:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 129
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->current_index:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 133
    if-eqz v1, :cond_0

    .line 135
    const/16 v4, 0xff

    const/16 v5, 0xc9

    const/16 v6, 0xe

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    const/16 v4, 0xff

    const/16 v5, 0xc9

    const/16 v6, 0xe

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    :cond_0
    :goto_2
    return-object v1

    .line 114
    :cond_1
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->rate:F

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 115
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->rate:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getDensityDpi()I

    move-result v6

    add-int/lit16 v6, v6, -0x140

    int-to-float v6, v6

    const/high16 v7, 0x43200000    # 160.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 126
    :cond_2
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->rate:F

    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 127
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->rate:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getDensityDpi()I

    move-result v6

    add-int/lit16 v6, v6, -0x140

    int-to-float v6, v6

    const/high16 v7, 0x43200000    # 160.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    .line 139
    :cond_3
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->current_index:I

    if-ge p1, v4, :cond_4

    .line 141
    if-eqz v1, :cond_0

    .line 145
    const/16 v4, 0xff

    const/16 v5, 0xc9

    const/16 v6, 0xe

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    const/16 v4, 0xff

    const/16 v5, 0xc9

    const/16 v6, 0xe

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 149
    :cond_4
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->current_index:I

    if-ne p1, v4, :cond_5

    .line 151
    if-eqz v1, :cond_0

    .line 153
    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 157
    :cond_5
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->current_index:I

    if-le p1, v4, :cond_0

    .line 159
    if-eqz v1, :cond_0

    .line 161
    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->current_index:I

    .line 171
    return-void
.end method
