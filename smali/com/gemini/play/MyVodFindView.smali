.class public Lcom/gemini/play/MyVodFindView;
.super Landroid/widget/LinearLayout;
.source "MyVodFindView.java"


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

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    .line 42
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 44
    iput v1, p0, Lcom/gemini/play/MyVodFindView;->spinner_sort_value:I

    .line 45
    iput v1, p0, Lcom/gemini/play/MyVodFindView;->spinner_area_value:I

    .line 46
    iput v1, p0, Lcom/gemini/play/MyVodFindView;->spinner_year_value:I

    .line 47
    iput v1, p0, Lcom/gemini/play/MyVodFindView;->spinner_type_value:I

    .line 48
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->spinner_find_value:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFindView;->years_array:Ljava/util/ArrayList;

    .line 51
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->inputgrid:Landroid/widget/GridView;

    .line 52
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFindView;->inputlist:Ljava/util/ArrayList;

    .line 55
    iput-boolean v1, p0, Lcom/gemini/play/MyVodFindView;->isShow:Z

    .line 578
    new-instance v0, Lcom/gemini/play/MyVodFindView$19;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodFindView$19;-><init>(Lcom/gemini/play/MyVodFindView;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodFindView;->rHandler:Landroid/os/Handler;

    .line 76
    iput-object p1, p0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090075

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    invoke-direct {p0}, Lcom/gemini/play/MyVodFindView;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    .line 42
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 44
    iput v1, p0, Lcom/gemini/play/MyVodFindView;->spinner_sort_value:I

    .line 45
    iput v1, p0, Lcom/gemini/play/MyVodFindView;->spinner_area_value:I

    .line 46
    iput v1, p0, Lcom/gemini/play/MyVodFindView;->spinner_year_value:I

    .line 47
    iput v1, p0, Lcom/gemini/play/MyVodFindView;->spinner_type_value:I

    .line 48
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->spinner_find_value:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFindView;->years_array:Ljava/util/ArrayList;

    .line 51
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->inputgrid:Landroid/widget/GridView;

    .line 52
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFindView;->inputlist:Ljava/util/ArrayList;

    .line 55
    iput-boolean v1, p0, Lcom/gemini/play/MyVodFindView;->isShow:Z

    .line 578
    new-instance v0, Lcom/gemini/play/MyVodFindView$19;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodFindView$19;-><init>(Lcom/gemini/play/MyVodFindView;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodFindView;->rHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090075

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    invoke-direct {p0}, Lcom/gemini/play/MyVodFindView;->init()V

    .line 71
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

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    .line 42
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 44
    iput v1, p0, Lcom/gemini/play/MyVodFindView;->spinner_sort_value:I

    .line 45
    iput v1, p0, Lcom/gemini/play/MyVodFindView;->spinner_area_value:I

    .line 46
    iput v1, p0, Lcom/gemini/play/MyVodFindView;->spinner_year_value:I

    .line 47
    iput v1, p0, Lcom/gemini/play/MyVodFindView;->spinner_type_value:I

    .line 48
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->spinner_find_value:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFindView;->years_array:Ljava/util/ArrayList;

    .line 51
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->inputgrid:Landroid/widget/GridView;

    .line 52
    iput-object v2, p0, Lcom/gemini/play/MyVodFindView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFindView;->inputlist:Ljava/util/ArrayList;

    .line 55
    iput-boolean v1, p0, Lcom/gemini/play/MyVodFindView;->isShow:Z

    .line 578
    new-instance v0, Lcom/gemini/play/MyVodFindView$19;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodFindView$19;-><init>(Lcom/gemini/play/MyVodFindView;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodFindView;->rHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090075

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    invoke-direct {p0}, Lcom/gemini/play/MyVodFindView;->init()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyVodFindView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/MyVodFindView;->spinner_find_value:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/gemini/play/MyVodFindView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/gemini/play/MyVodFindView;->spinner_find_value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/gemini/play/MyVodFindView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyVodFindView;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/MyVodFindView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gemini/play/MyVodFindView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 39
    iget v0, p0, Lcom/gemini/play/MyVodFindView;->spinner_sort_value:I

    return v0
.end method

.method static synthetic access$302(Lcom/gemini/play/MyVodFindView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/gemini/play/MyVodFindView;->spinner_sort_value:I

    return p1
.end method

.method static synthetic access$400(Lcom/gemini/play/MyVodFindView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 39
    iget v0, p0, Lcom/gemini/play/MyVodFindView;->spinner_year_value:I

    return v0
.end method

.method static synthetic access$402(Lcom/gemini/play/MyVodFindView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/gemini/play/MyVodFindView;->spinner_year_value:I

    return p1
.end method

.method static synthetic access$500(Lcom/gemini/play/MyVodFindView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/MyVodFindView;->years_array:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/gemini/play/MyVodFindView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 39
    iget v0, p0, Lcom/gemini/play/MyVodFindView;->spinner_type_value:I

    return v0
.end method

.method static synthetic access$602(Lcom/gemini/play/MyVodFindView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/gemini/play/MyVodFindView;->spinner_type_value:I

    return p1
.end method

.method static synthetic access$700(Lcom/gemini/play/MyVodFindView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 39
    iget v0, p0, Lcom/gemini/play/MyVodFindView;->spinner_area_value:I

    return v0
.end method

.method static synthetic access$702(Lcom/gemini/play/MyVodFindView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/gemini/play/MyVodFindView;->spinner_area_value:I

    return p1
.end method

.method static synthetic access$800(Lcom/gemini/play/MyVodFindView;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/MyVodFindView;->inputgrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/gemini/play/MyVodFindView;)Lcom/gemini/play/MySimpleAdapterInputView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/MyVodFindView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    return-object v0
.end method

.method private getVodTypeStatus(Ljava/lang/String;)Lcom/gemini/play/VodTypeStatus;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 381
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/gemini/play/VODplayer;->typeGet(I)Lcom/gemini/play/VodTypeStatus;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 21

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string v19, "fonts/Roboto-Bold.ttf"

    invoke-static/range {v18 .. v19}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v17

    .line 84
    .local v17, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v9

    .line 100
    .local v9, "rate":F
    const v18, 0x7f07015c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 101
    .local v14, "t3":Landroid/widget/TextView;
    const/high16 v18, 0x40e00000    # 7.0f

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    const v18, 0x7f07015e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 105
    .local v15, "t4":Landroid/widget/TextView;
    const/high16 v18, 0x40e00000    # 7.0f

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 106
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    const v18, 0x7f07015d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 109
    .local v16, "t5":Landroid/widget/TextView;
    const/high16 v18, 0x40e00000    # 7.0f

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    const v18, 0x7f070098

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 113
    .local v8, "e1":Landroid/widget/EditText;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    const/high16 v18, 0x41200000    # 10.0f

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 115
    new-instance v18, Lcom/gemini/play/MyVodFindView$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFindView$1;-><init>(Lcom/gemini/play/MyVodFindView;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 126
    const v18, 0x7f070070

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 127
    .local v3, "b0":Landroid/widget/Button;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    const/high16 v18, 0x40e00000    # 7.0f

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 129
    new-instance v18, Lcom/gemini/play/MyVodFindView$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFindView$2;-><init>(Lcom/gemini/play/MyVodFindView;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v18, Lcom/gemini/play/MyVodFindView$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFindView$3;-><init>(Lcom/gemini/play/MyVodFindView;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 162
    const v18, 0x7f070071

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 163
    .local v4, "b1":Landroid/widget/Button;
    const/high16 v18, 0x40e00000    # 7.0f

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 164
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    new-instance v18, Lcom/gemini/play/MyVodFindView$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFindView$4;-><init>(Lcom/gemini/play/MyVodFindView;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    new-instance v18, Lcom/gemini/play/MyVodFindView$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFindView$5;-><init>(Lcom/gemini/play/MyVodFindView;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 190
    const v18, 0x7f07006f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 191
    .local v5, "b2":Landroid/widget/Button;
    const/high16 v18, 0x40e00000    # 7.0f

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 192
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 193
    new-instance v18, Lcom/gemini/play/MyVodFindView$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFindView$6;-><init>(Lcom/gemini/play/MyVodFindView;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    new-instance v18, Lcom/gemini/play/MyVodFindView$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFindView$7;-><init>(Lcom/gemini/play/MyVodFindView;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 224
    const v18, 0x7f07006e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 225
    .local v6, "b3":Landroid/widget/Button;
    const/high16 v18, 0x40e00000    # 7.0f

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 226
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 227
    new-instance v18, Lcom/gemini/play/MyVodFindView$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFindView$8;-><init>(Lcom/gemini/play/MyVodFindView;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    new-instance v18, Lcom/gemini/play/MyVodFindView$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFindView$9;-><init>(Lcom/gemini/play/MyVodFindView;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 253
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0b00d3

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v7, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0b00d2

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v7, v18

    .line 254
    .local v7, "cities":[Ljava/lang/String;
    new-instance v2, Lcom/gemini/play/MyArrayAdapterFindView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v2, v0, v7}, Lcom/gemini/play/MyArrayAdapterFindView;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 255
    .local v2, "adapter":Lcom/gemini/play/MyArrayAdapterFindView;
    const v18, 0x1090008

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/gemini/play/MyArrayAdapterFindView;->setDropDownViewResource(I)V

    .line 256
    const v18, 0x7f07013b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    .line 257
    .local v11, "spinner_sort":Landroid/widget/Spinner;
    invoke-virtual {v11, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b00cc

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 259
    new-instance v18, Lcom/gemini/play/MyVodFindView$10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/gemini/play/MyVodFindView$10;-><init>(Lcom/gemini/play/MyVodFindView;F)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 273
    const v18, 0x7f07013a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 274
    .local v10, "spinner_area":Landroid/widget/Spinner;
    invoke-virtual {v10, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 275
    const v18, 0x7f07013d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    .line 276
    .local v13, "spinner_year":Landroid/widget/Spinner;
    invoke-virtual {v13, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 277
    const v18, 0x7f07013c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    .line 278
    .local v12, "spinner_type":Landroid/widget/Spinner;
    invoke-virtual {v12, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 280
    const v18, 0x7f0700bb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/GridView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gemini/play/MyVodFindView;->inputgrid:Landroid/widget/GridView;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFindView;->inputgrid:Landroid/widget/GridView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/gemini/play/MyVodFindView$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/gemini/play/MyVodFindView$11;-><init>(Lcom/gemini/play/MyVodFindView;Landroid/widget/EditText;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFindView;->inputgrid:Landroid/widget/GridView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/gemini/play/MyVodFindView$12;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFindView$12;-><init>(Lcom/gemini/play/MyVodFindView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFindView;->inputgrid:Landroid/widget/GridView;

    move-object/from16 v18, v0

    const v19, 0x106000d

    invoke-virtual/range {v18 .. v19}, Landroid/widget/GridView;->setSelector(I)V

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/gemini/play/MyVodFindView;->init_input()V

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/gemini/play/MyVodFindView;->set_inputlist()V

    .line 324
    return-void
.end method

.method private initTypeSpinner(Lcom/gemini/play/VodTypeStatus;)V
    .locals 13
    .param p1, "s"    # Lcom/gemini/play/VodTypeStatus;

    .prologue
    const v12, 0x7f0b00d1

    const v11, 0x1090009

    .line 392
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v5

    .line 394
    .local v5, "rate":F
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->areas:[Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 396
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v3, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    const/4 v4, 0x0

    .local v4, "ii":I
    :goto_0
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->areas:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_0

    .line 400
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->areas:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 402
    :cond_0
    new-instance v0, Lcom/gemini/play/MyArrayAdapterFindView;

    iget-object v9, p0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    invoke-direct {v0, v9, v3}, Lcom/gemini/play/MyArrayAdapterFindView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 403
    .local v0, "adapter_area":Lcom/gemini/play/MyArrayAdapterFindView;
    invoke-virtual {v0, v11}, Lcom/gemini/play/MyArrayAdapterFindView;->setDropDownViewResource(I)V

    .line 404
    const v9, 0x7f07013a

    invoke-virtual {p0, v9}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 405
    .local v6, "spinner_area":Landroid/widget/Spinner;
    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 406
    new-instance v9, Lcom/gemini/play/MyVodFindView$14;

    invoke-direct {v9, p0, v5}, Lcom/gemini/play/MyVodFindView$14;-><init>(Lcom/gemini/play/MyVodFindView;F)V

    invoke-virtual {v6, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 422
    .end local v0    # "adapter_area":Lcom/gemini/play/MyArrayAdapterFindView;
    .end local v3    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "ii":I
    .end local v6    # "spinner_area":Landroid/widget/Spinner;
    :cond_1
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->years:[Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 425
    iget-object v9, p0, Lcom/gemini/play/MyVodFindView;->years_array:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 426
    iget-object v9, p0, Lcom/gemini/play/MyVodFindView;->years_array:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    const/4 v4, 0x0

    .restart local v4    # "ii":I
    :goto_1
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->years:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_2

    .line 429
    iget-object v9, p0, Lcom/gemini/play/MyVodFindView;->years_array:Ljava/util/ArrayList;

    iget-object v10, p1, Lcom/gemini/play/VodTypeStatus;->years:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 431
    :cond_2
    new-instance v2, Lcom/gemini/play/MyArrayAdapterFindView;

    iget-object v9, p0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    iget-object v10, p0, Lcom/gemini/play/MyVodFindView;->years_array:Ljava/util/ArrayList;

    invoke-direct {v2, v9, v10}, Lcom/gemini/play/MyArrayAdapterFindView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 432
    .local v2, "adapter_year":Lcom/gemini/play/MyArrayAdapterFindView;
    invoke-virtual {v2, v11}, Lcom/gemini/play/MyArrayAdapterFindView;->setDropDownViewResource(I)V

    .line 433
    const v9, 0x7f07013d

    invoke-virtual {p0, v9}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 434
    .local v8, "spinner_year":Landroid/widget/Spinner;
    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 435
    new-instance v9, Lcom/gemini/play/MyVodFindView$15;

    invoke-direct {v9, p0, v5}, Lcom/gemini/play/MyVodFindView$15;-><init>(Lcom/gemini/play/MyVodFindView;F)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 451
    .end local v2    # "adapter_year":Lcom/gemini/play/MyArrayAdapterFindView;
    .end local v4    # "ii":I
    .end local v8    # "spinner_year":Landroid/widget/Spinner;
    :cond_3
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->types:[Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 453
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .restart local v3    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    const/4 v4, 0x0

    .restart local v4    # "ii":I
    :goto_2
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->types:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_4

    .line 457
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->types:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 459
    :cond_4
    new-instance v1, Lcom/gemini/play/MyArrayAdapterFindView;

    iget-object v9, p0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    invoke-direct {v1, v9, v3}, Lcom/gemini/play/MyArrayAdapterFindView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 460
    .local v1, "adapter_type":Lcom/gemini/play/MyArrayAdapterFindView;
    invoke-virtual {v1, v11}, Lcom/gemini/play/MyArrayAdapterFindView;->setDropDownViewResource(I)V

    .line 461
    const v9, 0x7f07013c

    invoke-virtual {p0, v9}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 462
    .local v7, "spinner_type":Landroid/widget/Spinner;
    invoke-virtual {v7, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 463
    new-instance v9, Lcom/gemini/play/MyVodFindView$16;

    invoke-direct {v9, p0, v5}, Lcom/gemini/play/MyVodFindView$16;-><init>(Lcom/gemini/play/MyVodFindView;F)V

    invoke-virtual {v7, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 478
    .end local v1    # "adapter_type":Lcom/gemini/play/MyArrayAdapterFindView;
    .end local v3    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "ii":I
    .end local v7    # "spinner_type":Landroid/widget/Spinner;
    :cond_5
    return-void
.end method

.method private init_input()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 329
    new-instance v0, Lcom/gemini/play/MySimpleAdapterInputView;

    iget-object v1, p0, Lcom/gemini/play/MyVodFindView;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyVodFindView;->inputlist:Ljava/util/ArrayList;

    const v3, 0x7f090039

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ItemChar"

    aput-object v5, v4, v7

    new-array v5, v6, [I

    const v6, 0x7f070007

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterInputView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyVodFindView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 331
    iget-object v0, p0, Lcom/gemini/play/MyVodFindView;->inputgrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/gemini/play/MyVodFindView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 333
    iget-object v0, p0, Lcom/gemini/play/MyVodFindView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    new-instance v1, Lcom/gemini/play/MyVodFindView$13;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodFindView$13;-><init>(Lcom/gemini/play/MyVodFindView;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterInputView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 347
    return-void
.end method

.method private set_inputlist()V
    .locals 6

    .prologue
    .line 351
    iget-object v4, p0, Lcom/gemini/play/MyVodFindView;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 352
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    .line 353
    .local v3, "t":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 355
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 356
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ItemChar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v4, p0, Lcom/gemini/play/MyVodFindView;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 371
    .local v2, "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ItemChar"

    const-string v5, "CE"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v4, p0, Lcom/gemini/play/MyVodFindView;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v4, p0, Lcom/gemini/play/MyVodFindView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    invoke-virtual {v4}, Lcom/gemini/play/MySimpleAdapterInputView;->notifyDataSetChanged()V

    .line 375
    return-void
.end method


# virtual methods
.method public hideFindView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 530
    iget-object v1, p0, Lcom/gemini/play/MyVodFindView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/gemini/play/MyVodFindView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyVodFindView;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 561
    :goto_0
    return-void

    .line 536
    :cond_1
    iput-boolean v3, p0, Lcom/gemini/play/MyVodFindView;->isShow:Z

    .line 538
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x7

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 539
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 540
    new-instance v1, Lcom/gemini/play/MyVodFindView$18;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodFindView$18;-><init>(Lcom/gemini/play/MyVodFindView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 559
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVodFindView;->setFocusable(Z)V

    .line 560
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodFindView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public hideViewTimeout()V
    .locals 4

    .prologue
    .line 565
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 566
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 567
    iget-object v1, p0, Lcom/gemini/play/MyVodFindView;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 568
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/gemini/play/MyVodFindView;->isShow:Z

    return v0
.end method

.method public listFocus()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 599
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodFindView;->setFocusable(Z)V

    .line 600
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodFindView;->setFocusableInTouchMode(Z)V

    .line 601
    invoke-virtual {p0}, Lcom/gemini/play/MyVodFindView;->requestFocus()Z

    .line 602
    invoke-virtual {p0}, Lcom/gemini/play/MyVodFindView;->requestFocusFromTouch()Z

    .line 603
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 612
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

    .line 613
    packed-switch p1, :pswitch_data_0

    .line 619
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 616
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 617
    const/4 v0, 0x1

    goto :goto_0

    .line 613
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
    .line 607
    iput-object p1, p0, Lcom/gemini/play/MyVodFindView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 608
    return-void
.end method

.method public showFindView(Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 484
    invoke-virtual {p0}, Lcom/gemini/play/MyVodFindView;->listFocus()V

    .line 486
    iput v3, p0, Lcom/gemini/play/MyVodFindView;->spinner_sort_value:I

    .line 487
    iput v3, p0, Lcom/gemini/play/MyVodFindView;->spinner_area_value:I

    .line 488
    iput v3, p0, Lcom/gemini/play/MyVodFindView;->spinner_year_value:I

    .line 489
    iput v3, p0, Lcom/gemini/play/MyVodFindView;->spinner_type_value:I

    .line 491
    invoke-virtual {p0}, Lcom/gemini/play/MyVodFindView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    :goto_0
    return-void

    .line 496
    :cond_0
    iput-boolean v5, p0, Lcom/gemini/play/MyVodFindView;->isShow:Z

    .line 498
    invoke-direct {p0, p1}, Lcom/gemini/play/MyVodFindView;->getVodTypeStatus(Ljava/lang/String;)Lcom/gemini/play/VodTypeStatus;

    move-result-object v1

    .line 499
    .local v1, "s":Lcom/gemini/play/VodTypeStatus;
    if-eqz v1, :cond_1

    .line 500
    invoke-direct {p0, v1}, Lcom/gemini/play/MyVodFindView;->initTypeSpinner(Lcom/gemini/play/VodTypeStatus;)V

    .line 502
    :cond_1
    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodFindView;->setVisibility(I)V

    .line 503
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v2, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v2, v2, 0xa

    mul-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    invoke-direct {v0, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 504
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 505
    new-instance v2, Lcom/gemini/play/MyVodFindView$17;

    invoke-direct {v2, p0}, Lcom/gemini/play/MyVodFindView$17;-><init>(Lcom/gemini/play/MyVodFindView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 522
    invoke-virtual {p0, v5}, Lcom/gemini/play/MyVodFindView;->setFocusable(Z)V

    .line 523
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodFindView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showViewTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 572
    iget-object v0, p0, Lcom/gemini/play/MyVodFindView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/gemini/play/MyVodFindView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyVodFindView;->hideViewTimeout()V

    .line 576
    return-void
.end method
