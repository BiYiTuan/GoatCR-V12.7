.class public Lcom/gemini/play/MyVodFind3View;
.super Landroid/widget/LinearLayout;
.source "MyVodFind3View.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

.field private inputgrid:Landroid/widget/GridView;

.field private inputlist:Ljava/util/ArrayList;
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

.field private isShow:Z

.field public rHandler:Landroid/os/Handler;

.field private spinner_area_value:I

.field private spinner_find_value:Ljava/lang/String;

.field private spinner_sort_value:I

.field private spinner_type_value:I

.field private spinner_year_value:I

.field private years_array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->_this:Landroid/content/Context;

    .line 37
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->iface:Lcom/gemini/play/ListViewInterface;

    .line 39
    iput v1, p0, Lcom/gemini/play/MyVodFind3View;->spinner_sort_value:I

    .line 40
    iput v1, p0, Lcom/gemini/play/MyVodFind3View;->spinner_area_value:I

    .line 41
    iput v1, p0, Lcom/gemini/play/MyVodFind3View;->spinner_year_value:I

    .line 42
    iput v1, p0, Lcom/gemini/play/MyVodFind3View;->spinner_type_value:I

    .line 43
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->spinner_find_value:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind3View;->years_array:Ljava/util/ArrayList;

    .line 46
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->inputgrid:Landroid/widget/GridView;

    .line 47
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind3View;->inputlist:Ljava/util/ArrayList;

    .line 50
    iput-boolean v1, p0, Lcom/gemini/play/MyVodFind3View;->isShow:Z

    .line 332
    new-instance v0, Lcom/gemini/play/MyVodFind3View$11;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodFind3View$11;-><init>(Lcom/gemini/play/MyVodFind3View;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind3View;->rHandler:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/gemini/play/MyVodFind3View;->_this:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090076

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    invoke-direct {p0}, Lcom/gemini/play/MyVodFind3View;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->_this:Landroid/content/Context;

    .line 37
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->iface:Lcom/gemini/play/ListViewInterface;

    .line 39
    iput v1, p0, Lcom/gemini/play/MyVodFind3View;->spinner_sort_value:I

    .line 40
    iput v1, p0, Lcom/gemini/play/MyVodFind3View;->spinner_area_value:I

    .line 41
    iput v1, p0, Lcom/gemini/play/MyVodFind3View;->spinner_year_value:I

    .line 42
    iput v1, p0, Lcom/gemini/play/MyVodFind3View;->spinner_type_value:I

    .line 43
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->spinner_find_value:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind3View;->years_array:Ljava/util/ArrayList;

    .line 46
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->inputgrid:Landroid/widget/GridView;

    .line 47
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind3View;->inputlist:Ljava/util/ArrayList;

    .line 50
    iput-boolean v1, p0, Lcom/gemini/play/MyVodFind3View;->isShow:Z

    .line 332
    new-instance v0, Lcom/gemini/play/MyVodFind3View$11;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodFind3View$11;-><init>(Lcom/gemini/play/MyVodFind3View;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind3View;->rHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/gemini/play/MyVodFind3View;->_this:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090076

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    invoke-direct {p0}, Lcom/gemini/play/MyVodFind3View;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->_this:Landroid/content/Context;

    .line 37
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->iface:Lcom/gemini/play/ListViewInterface;

    .line 39
    iput v1, p0, Lcom/gemini/play/MyVodFind3View;->spinner_sort_value:I

    .line 40
    iput v1, p0, Lcom/gemini/play/MyVodFind3View;->spinner_area_value:I

    .line 41
    iput v1, p0, Lcom/gemini/play/MyVodFind3View;->spinner_year_value:I

    .line 42
    iput v1, p0, Lcom/gemini/play/MyVodFind3View;->spinner_type_value:I

    .line 43
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->spinner_find_value:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind3View;->years_array:Ljava/util/ArrayList;

    .line 46
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->inputgrid:Landroid/widget/GridView;

    .line 47
    iput-object v2, p0, Lcom/gemini/play/MyVodFind3View;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind3View;->inputlist:Ljava/util/ArrayList;

    .line 50
    iput-boolean v1, p0, Lcom/gemini/play/MyVodFind3View;->isShow:Z

    .line 332
    new-instance v0, Lcom/gemini/play/MyVodFind3View$11;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodFind3View$11;-><init>(Lcom/gemini/play/MyVodFind3View;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind3View;->rHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/gemini/play/MyVodFind3View;->_this:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090076

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lcom/gemini/play/MyVodFind3View;->init()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyVodFind3View;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind3View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3View;->spinner_find_value:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/gemini/play/MyVodFind3View;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind3View;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/gemini/play/MyVodFind3View;->spinner_find_value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/gemini/play/MyVodFind3View;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind3View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3View;->_this:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyVodFind3View;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind3View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3View;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gemini/play/MyVodFind3View;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind3View;

    .prologue
    .line 34
    iget v0, p0, Lcom/gemini/play/MyVodFind3View;->spinner_sort_value:I

    return v0
.end method

.method static synthetic access$400(Lcom/gemini/play/MyVodFind3View;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind3View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3View;->inputgrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/gemini/play/MyVodFind3View;)Lcom/gemini/play/MySimpleAdapterInputView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind3View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3View;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/high16 v7, 0x40e00000    # 7.0f

    .line 78
    iget-object v5, p0, Lcom/gemini/play/MyVodFind3View;->_this:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fonts/Roboto-Bold.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 79
    .local v4, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v3

    .line 81
    .local v3, "rate":F
    const v5, 0x7f070098

    invoke-virtual {p0, v5}, Lcom/gemini/play/MyVodFind3View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 82
    .local v2, "e1":Landroid/widget/EditText;
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 84
    new-instance v5, Lcom/gemini/play/MyVodFind3View$1;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodFind3View$1;-><init>(Lcom/gemini/play/MyVodFind3View;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 95
    const v5, 0x7f070070

    invoke-virtual {p0, v5}, Lcom/gemini/play/MyVodFind3View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 96
    .local v1, "button_find":Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    mul-float v5, v3, v7

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 98
    new-instance v5, Lcom/gemini/play/MyVodFind3View$2;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodFind3View$2;-><init>(Lcom/gemini/play/MyVodFind3View;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v5, Lcom/gemini/play/MyVodFind3View$3;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodFind3View$3;-><init>(Lcom/gemini/play/MyVodFind3View;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 131
    const v5, 0x7f07006e

    invoke-virtual {p0, v5}, Lcom/gemini/play/MyVodFind3View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 132
    .local v0, "button_back":Landroid/widget/Button;
    mul-float v5, v3, v7

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 133
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 134
    new-instance v5, Lcom/gemini/play/MyVodFind3View$4;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodFind3View$4;-><init>(Lcom/gemini/play/MyVodFind3View;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    new-instance v5, Lcom/gemini/play/MyVodFind3View$5;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodFind3View$5;-><init>(Lcom/gemini/play/MyVodFind3View;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 158
    const v5, 0x7f0700bb

    invoke-virtual {p0, v5}, Lcom/gemini/play/MyVodFind3View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/gemini/play/MyVodFind3View;->inputgrid:Landroid/widget/GridView;

    .line 159
    iget-object v5, p0, Lcom/gemini/play/MyVodFind3View;->inputgrid:Landroid/widget/GridView;

    new-instance v6, Lcom/gemini/play/MyVodFind3View$6;

    invoke-direct {v6, p0, v2}, Lcom/gemini/play/MyVodFind3View$6;-><init>(Lcom/gemini/play/MyVodFind3View;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 182
    iget-object v5, p0, Lcom/gemini/play/MyVodFind3View;->inputgrid:Landroid/widget/GridView;

    new-instance v6, Lcom/gemini/play/MyVodFind3View$7;

    invoke-direct {v6, p0}, Lcom/gemini/play/MyVodFind3View$7;-><init>(Lcom/gemini/play/MyVodFind3View;)V

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 199
    iget-object v5, p0, Lcom/gemini/play/MyVodFind3View;->inputgrid:Landroid/widget/GridView;

    const v6, 0x106000d

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setSelector(I)V

    .line 200
    invoke-direct {p0}, Lcom/gemini/play/MyVodFind3View;->init_input()V

    .line 201
    invoke-direct {p0}, Lcom/gemini/play/MyVodFind3View;->set_inputlist()V

    .line 202
    return-void
.end method

.method private init_input()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 207
    new-instance v0, Lcom/gemini/play/MySimpleAdapterInputView;

    iget-object v1, p0, Lcom/gemini/play/MyVodFind3View;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyVodFind3View;->inputlist:Ljava/util/ArrayList;

    const v3, 0x7f090039

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ItemChar"

    aput-object v5, v4, v7

    new-array v5, v6, [I

    const v6, 0x7f070007

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterInputView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind3View;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 209
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3View;->inputgrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/gemini/play/MyVodFind3View;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3View;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    new-instance v1, Lcom/gemini/play/MyVodFind3View$8;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodFind3View$8;-><init>(Lcom/gemini/play/MyVodFind3View;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterInputView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 225
    return-void
.end method

.method private set_inputlist()V
    .locals 6

    .prologue
    .line 229
    iget-object v4, p0, Lcom/gemini/play/MyVodFind3View;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 230
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    .line 231
    .local v3, "t":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 233
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ItemChar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v4, p0, Lcom/gemini/play/MyVodFind3View;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 239
    .local v2, "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ItemChar"

    const-string v5, "CE"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v4, p0, Lcom/gemini/play/MyVodFind3View;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v4, p0, Lcom/gemini/play/MyVodFind3View;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    invoke-virtual {v4}, Lcom/gemini/play/MySimpleAdapterInputView;->notifyDataSetChanged()V

    .line 243
    return-void
.end method


# virtual methods
.method public hideFindView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 284
    iget-object v1, p0, Lcom/gemini/play/MyVodFind3View;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/gemini/play/MyVodFind3View;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyVodFind3View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    :goto_0
    return-void

    .line 290
    :cond_1
    iput-boolean v3, p0, Lcom/gemini/play/MyVodFind3View;->isShow:Z

    .line 292
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x7

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 293
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 294
    new-instance v1, Lcom/gemini/play/MyVodFind3View$10;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodFind3View$10;-><init>(Lcom/gemini/play/MyVodFind3View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 313
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVodFind3View;->setFocusable(Z)V

    .line 314
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodFind3View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public hideViewTimeout()V
    .locals 4

    .prologue
    .line 319
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 320
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 321
    iget-object v1, p0, Lcom/gemini/play/MyVodFind3View;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 322
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/gemini/play/MyVodFind3View;->isShow:Z

    return v0
.end method

.method public listFocus()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 353
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodFind3View;->setFocusable(Z)V

    .line 354
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodFind3View;->setFocusableInTouchMode(Z)V

    .line 355
    invoke-virtual {p0}, Lcom/gemini/play/MyVodFind3View;->requestFocus()Z

    .line 356
    invoke-virtual {p0}, Lcom/gemini/play/MyVodFind3View;->requestFocusFromTouch()Z

    .line 357
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown keyCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 367
    packed-switch p1, :pswitch_data_0

    .line 373
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 370
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 371
    const/4 v0, 0x1

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/gemini/play/MyVodFind3View;->iface:Lcom/gemini/play/ListViewInterface;

    .line 362
    return-void
.end method

.method public showFindView(Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/gemini/play/MyVodFind3View;->listFocus()V

    .line 250
    invoke-virtual {p0}, Lcom/gemini/play/MyVodFind3View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 255
    :cond_0
    iput-boolean v4, p0, Lcom/gemini/play/MyVodFind3View;->isShow:Z

    .line 257
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVodFind3View;->setVisibility(I)V

    .line 258
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x7

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 259
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 260
    new-instance v1, Lcom/gemini/play/MyVodFind3View$9;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodFind3View$9;-><init>(Lcom/gemini/play/MyVodFind3View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 277
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodFind3View;->setFocusable(Z)V

    .line 278
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodFind3View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showViewTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3View;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3View;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyVodFind3View;->hideViewTimeout()V

    .line 330
    return-void
.end method
