.class public Lcom/gemini/play/MyArrayAdapterFindView;
.super Landroid/widget/ArrayAdapter;
.source "MyArrayAdapterFindView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private mStringArray:[Ljava/lang/String;

.field private mStringArray2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rate:F

.field private typeFace:Landroid/graphics/Typeface;

.field private used:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v0, 0x1090008

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MyArrayAdapterFindView;->used:I

    .line 35
    iput-object p1, p0, Lcom/gemini/play/MyArrayAdapterFindView;->_this:Landroid/content/Context;

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/gemini/play/MyArrayAdapterFindView;->used:I

    .line 37
    iput-object p2, p0, Lcom/gemini/play/MyArrayAdapterFindView;->mStringArray2:Ljava/util/ArrayList;

    .line 38
    invoke-direct {p0}, Lcom/gemini/play/MyArrayAdapterFindView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stringArray"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 26
    const v0, 0x1090008

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 18
    iput v1, p0, Lcom/gemini/play/MyArrayAdapterFindView;->used:I

    .line 27
    iput-object p1, p0, Lcom/gemini/play/MyArrayAdapterFindView;->_this:Landroid/content/Context;

    .line 28
    iput v1, p0, Lcom/gemini/play/MyArrayAdapterFindView;->used:I

    .line 29
    iput-object p2, p0, Lcom/gemini/play/MyArrayAdapterFindView;->mStringArray:[Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/gemini/play/MyArrayAdapterFindView;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/gemini/play/MyArrayAdapterFindView;->_this:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MyArrayAdapterFindView;->typeFace:Landroid/graphics/Typeface;

    .line 44
    sget v0, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit16 v0, v0, 0x140

    int-to-float v0, v0

    iput v0, p0, Lcom/gemini/play/MyArrayAdapterFindView;->rate:F

    .line 45
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/gemini/play/MyArrayAdapterFindView;->_this:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 52
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090009

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, "tv":Landroid/widget/TextView;
    iget v2, p0, Lcom/gemini/play/MyArrayAdapterFindView;->used:I

    if-nez v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/gemini/play/MyArrayAdapterFindView;->mStringArray:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_0
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget v2, p0, Lcom/gemini/play/MyArrayAdapterFindView;->rate:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x401a000000000000L    # 6.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 65
    iget-object v2, p0, Lcom/gemini/play/MyArrayAdapterFindView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    return-object p2

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/gemini/play/MyArrayAdapterFindView;->mStringArray2:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/gemini/play/MyArrayAdapterFindView;->_this:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 76
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090008

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, "tv":Landroid/widget/TextView;
    iget v2, p0, Lcom/gemini/play/MyArrayAdapterFindView;->used:I

    if-nez v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/gemini/play/MyArrayAdapterFindView;->mStringArray:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_0
    iget v2, p0, Lcom/gemini/play/MyArrayAdapterFindView;->rate:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x401a000000000000L    # 6.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    iget-object v2, p0, Lcom/gemini/play/MyArrayAdapterFindView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    return-object p2

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/gemini/play/MyArrayAdapterFindView;->mStringArray2:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
