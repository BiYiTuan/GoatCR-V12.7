.class Lcom/gemini/play/MySimpleAdapterVodType3View;
.super Landroid/widget/SimpleAdapter;
.source "MySimpleAdapterVodType3View.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private current_index:I

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

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterVodType3View;->current_index:I

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterVodType3View;->selectedPosition:I

    .line 32
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterVodType3View;->_this:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/gemini/play/MySimpleAdapterVodType3View;->init()V

    .line 35
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterVodType3View;->_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MySimpleAdapterVodType3View;->typeFace:Landroid/graphics/Typeface;

    .line 54
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterVodType3View;->rate:F

    .line 55
    return-void
.end method


# virtual methods
.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/gemini/play/MySimpleAdapterVodType3View;->selectedPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0xff

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 61
    .local v3, "v":Landroid/view/View;
    const v5, 0x7f07000e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 62
    .local v0, "il":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 63
    .local v2, "layoutParams0":Landroid/widget/AbsListView$LayoutParams;
    sget v5, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v5, v5, 0x9

    iput v5, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    const v5, 0x7f07001a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 67
    .local v4, "vh":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/gemini/play/MySimpleAdapterVodType3View;->rate:F

    const/high16 v6, 0x41700000    # 15.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 69
    sget v5, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v5, v5, 0x9

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 70
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget v5, p0, Lcom/gemini/play/MySimpleAdapterVodType3View;->rate:F

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 73
    iget-object v5, p0, Lcom/gemini/play/MySimpleAdapterVodType3View;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget v5, p0, Lcom/gemini/play/MySimpleAdapterVodType3View;->selectedPosition:I

    if-ne v5, p1, :cond_0

    .line 78
    const v5, 0x7f060061

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 82
    :goto_0
    return-object v3

    .line 80
    :cond_0
    const v5, 0x7f040057

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterVodType3View;->current_index:I

    .line 44
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterVodType3View;->selectedPosition:I

    .line 39
    return-void
.end method
