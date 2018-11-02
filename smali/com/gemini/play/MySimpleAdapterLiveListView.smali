.class Lcom/gemini/play/MySimpleAdapterLiveListView;
.super Landroid/widget/SimpleAdapter;
.source "MySimpleAdapterLiveListView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private current_index:I

.field oListener:Landroid/view/View$OnHoverListener;

.field private rate:F

.field private selectedPosition:I

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

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->current_index:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->selectedPosition:I

    .line 46
    new-instance v0, Lcom/gemini/play/MySimpleAdapterLiveListView$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/MySimpleAdapterLiveListView$1;-><init>(Lcom/gemini/play/MySimpleAdapterLiveListView;)V

    iput-object v0, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->oListener:Landroid/view/View$OnHoverListener;

    .line 32
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->_this:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/gemini/play/MySimpleAdapterLiveListView;->init()V

    .line 35
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->typeFace:Landroid/graphics/Typeface;

    .line 67
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->rate:F

    .line 68
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spain1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spainglobal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    iget v0, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->rate:F

    float-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->rate:F

    .line 71
    :cond_1
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 76
    .local v4, "v":Landroid/view/View;
    iget-object v9, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->oListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 78
    const v9, 0x7f070022

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 79
    .local v6, "vi":Landroid/widget/ImageView;
    const v9, 0x7f070025

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 81
    .local v7, "vi2":Landroid/widget/ImageView;
    const v9, 0x7f07000b

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 82
    .local v5, "vh":Landroid/widget/TextView;
    const v9, 0x7f07001a

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 83
    .local v8, "vt":Landroid/widget/TextView;
    iget v9, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->rate:F

    const/high16 v10, 0x40e00000    # 7.0f

    mul-float/2addr v9, v10

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 84
    iget-object v9, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    iget v9, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->rate:F

    const/high16 v10, 0x41000000    # 8.0f

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    iget-object v9, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    sget-boolean v9, Lcom/gemini/play/LIVEplayer;->show_playlist_image:Z

    if-nez v9, :cond_2

    .line 89
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDensityDpi()I

    move-result v9

    const/16 v10, 0x1e0

    if-ne v9, v10, :cond_1

    .line 90
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 163
    .local v0, "height":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 164
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v9

    const-string v10, "simba"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 165
    sget v9, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v9, v9, 0x6

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 168
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v9, v9, -0x14

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 172
    iget v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v9, v9, -0xa

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 173
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 176
    .local v2, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    iget v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v9, v9, -0x14

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 177
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vt:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->rate:F

    const/high16 v11, 0x41000000    # 8.0f

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " height:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 182
    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    return-object v4

    .line 116
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 138
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDensityDpi()I

    move-result v9

    const/16 v10, 0x1e0

    if-ne v9, v10, :cond_0

    goto/16 :goto_0

    .line 167
    .restart local v0    # "height":I
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    sget v9, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v9, v9, 0xc

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->current_index:I

    .line 43
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterLiveListView;->selectedPosition:I

    .line 39
    return-void
.end method
