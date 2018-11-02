.class Lcom/gemini/play/MySimpleAdapterVodTypeView;
.super Landroid/widget/SimpleAdapter;
.source "MySimpleAdapterVodTypeView.java"


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

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterVodTypeView;->current_index:I

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterVodTypeView;->selectedPosition:I

    .line 35
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterVodTypeView;->_this:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/gemini/play/MySimpleAdapterVodTypeView;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterVodTypeView;->_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MySimpleAdapterVodTypeView;->typeFace:Landroid/graphics/Typeface;

    .line 52
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterVodTypeView;->rate:F

    .line 53
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v9, 0x41400000    # 12.0f

    const/16 v8, 0xff

    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 59
    .local v3, "v":Landroid/view/View;
    const v6, 0x7f07000e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 60
    .local v0, "il":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 61
    .local v2, "layoutParams0":Landroid/widget/AbsListView$LayoutParams;
    sget v6, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v6, v6, 0x9

    iput v6, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    const v6, 0x7f07001a

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 65
    .local v4, "vh":Landroid/widget/TextView;
    iget v6, p0, Lcom/gemini/play/MySimpleAdapterVodTypeView;->rate:F

    const/high16 v7, 0x41000000    # 8.0f

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    iget-object v6, p0, Lcom/gemini/play/MySimpleAdapterVodTypeView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    const v6, 0x7f070022

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 74
    .local v5, "vi":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 75
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/gemini/play/MySimpleAdapterVodTypeView;->rate:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 76
    iget v6, p0, Lcom/gemini/play/MySimpleAdapterVodTypeView;->rate:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 77
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    return-object v3
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterVodTypeView;->current_index:I

    .line 47
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterVodTypeView;->selectedPosition:I

    .line 42
    return-void
.end method
