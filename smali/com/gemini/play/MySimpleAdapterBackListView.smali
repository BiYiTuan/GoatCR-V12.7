.class Lcom/gemini/play/MySimpleAdapterBackListView;
.super Landroid/widget/SimpleAdapter;
.source "MySimpleAdapterBackListView.java"


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
    .line 34
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterBackListView;->current_index:I

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterBackListView;->selectedPosition:I

    .line 35
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterBackListView;->_this:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/gemini/play/MySimpleAdapterBackListView;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterBackListView;->_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MySimpleAdapterBackListView;->typeFace:Landroid/graphics/Typeface;

    .line 52
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterBackListView;->rate:F

    .line 53
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v11, 0xff

    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 58
    .local v4, "v":Landroid/view/View;
    const v9, 0x7f070022

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 59
    .local v6, "vi":Landroid/widget/ImageView;
    const v9, 0x7f070025

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 61
    .local v7, "vi2":Landroid/widget/ImageView;
    const v9, 0x7f07000b

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 62
    .local v5, "vh":Landroid/widget/TextView;
    const v9, 0x7f07001a

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 63
    .local v8, "vt":Landroid/widget/TextView;
    iget v9, p0, Lcom/gemini/play/MySimpleAdapterBackListView;->rate:F

    const/high16 v10, 0x40e00000    # 7.0f

    mul-float/2addr v9, v10

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 64
    iget-object v9, p0, Lcom/gemini/play/MySimpleAdapterBackListView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    iget v9, p0, Lcom/gemini/play/MySimpleAdapterBackListView;->rate:F

    const/high16 v10, 0x41000000    # 8.0f

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    iget-object v9, p0, Lcom/gemini/play/MySimpleAdapterBackListView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 69
    .local v0, "height":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 70
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    sget v9, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v9, v9, 0xc

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 71
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v9, v9, -0x14

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 75
    iget v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v9, v9, -0xa

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 76
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    .local v2, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    iget v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v9, v9, -0x14

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 80
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    return-object v4
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterBackListView;->current_index:I

    .line 47
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterBackListView;->selectedPosition:I

    .line 42
    return-void
.end method
