.class public Lcom/gemini/play/MyVodFind3;
.super Ljava/lang/Object;
.source "MyVodFind3.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private dialog:Landroid/app/AlertDialog;

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

.field private spinner_area_value:I

.field private spinner_find_value:Ljava/lang/String;

.field private spinner_sort_value:I

.field private spinner_type_value:I

.field private spinner_year_value:I

.field private vodFindActivity:Landroid/view/View;

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
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/gemini/play/MyVodFind3;->iface:Lcom/gemini/play/ListViewInterface;

    .line 35
    iput v0, p0, Lcom/gemini/play/MyVodFind3;->spinner_sort_value:I

    .line 36
    iput v0, p0, Lcom/gemini/play/MyVodFind3;->spinner_area_value:I

    .line 37
    iput v0, p0, Lcom/gemini/play/MyVodFind3;->spinner_year_value:I

    .line 38
    iput v0, p0, Lcom/gemini/play/MyVodFind3;->spinner_type_value:I

    .line 39
    iput-object v1, p0, Lcom/gemini/play/MyVodFind3;->spinner_find_value:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind3;->years_array:Ljava/util/ArrayList;

    .line 42
    iput-object v1, p0, Lcom/gemini/play/MyVodFind3;->inputgrid:Landroid/widget/GridView;

    .line 43
    iput-object v1, p0, Lcom/gemini/play/MyVodFind3;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind3;->inputlist:Ljava/util/ArrayList;

    .line 46
    iput-object v1, p0, Lcom/gemini/play/MyVodFind3;->vodFindActivity:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyVodFind3;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind3;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3;->spinner_find_value:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/gemini/play/MyVodFind3;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind3;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/gemini/play/MyVodFind3;->spinner_find_value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/gemini/play/MyVodFind3;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind3;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3;->_this:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyVodFind3;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind3;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gemini/play/MyVodFind3;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind3;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gemini/play/MyVodFind3;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind3;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3;->inputgrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/gemini/play/MyVodFind3;)Lcom/gemini/play/MySimpleAdapterInputView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind3;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    return-object v0
.end method

.method private init_input()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 199
    new-instance v0, Lcom/gemini/play/MySimpleAdapterInputView;

    iget-object v1, p0, Lcom/gemini/play/MyVodFind3;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyVodFind3;->inputlist:Ljava/util/ArrayList;

    const v3, 0x7f090039

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ItemChar"

    aput-object v5, v4, v7

    new-array v5, v6, [I

    const v6, 0x7f070007

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterInputView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind3;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 201
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3;->inputgrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/gemini/play/MyVodFind3;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    new-instance v1, Lcom/gemini/play/MyVodFind3$8;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodFind3$8;-><init>(Lcom/gemini/play/MyVodFind3;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterInputView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 217
    return-void
.end method

.method private set_inputlist()V
    .locals 9

    .prologue
    .line 221
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 222
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    .line 223
    .local v5, "t":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "ItemChar"

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v6, "ItemEvent"

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v2, "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "ItemChar"

    const-string v7, "CE"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v6, "ItemEvent"

    const-string v7, "CE"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v3, "map3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "ItemChar"

    iget-object v7, p0, Lcom/gemini/play/MyVodFind3;->_this:Landroid/content/Context;

    const v8, 0x7f0b0083

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v6, "ItemEvent"

    const-string v7, "OK"

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v4, "map4":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "ItemChar"

    iget-object v7, p0, Lcom/gemini/play/MyVodFind3;->_this:Landroid/content/Context;

    const v8, 0x7f0b002d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v6, "ItemEvent"

    const-string v7, "BACK"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    invoke-virtual {v6}, Lcom/gemini/play/MySimpleAdapterInputView;->notifyDataSetChanged()V

    .line 247
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/gemini/play/ListViewInterface;)Landroid/app/AlertDialog;
    .locals 11
    .param p1, "th"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    const v10, 0x7f070098

    const/high16 v9, 0x40e00000    # 7.0f

    .line 50
    iput-object p1, p0, Lcom/gemini/play/MyVodFind3;->_this:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/gemini/play/MyVodFind3;->iface:Lcom/gemini/play/ListViewInterface;

    .line 53
    iget-object v7, p0, Lcom/gemini/play/MyVodFind3;->_this:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 54
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v7, 0x7f090076

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/gemini/play/MyVodFind3;->vodFindActivity:Landroid/view/View;

    .line 56
    iget-object v7, p0, Lcom/gemini/play/MyVodFind3;->_this:Landroid/content/Context;

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 57
    .local v6, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v4

    .line 59
    .local v4, "rate":F
    iget-object v7, p0, Lcom/gemini/play/MyVodFind3;->vodFindActivity:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 60
    .local v2, "e1":Landroid/widget/EditText;
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    const/high16 v7, 0x41100000    # 9.0f

    mul-float/2addr v7, v4

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 62
    new-instance v7, Lcom/gemini/play/MyVodFind3$1;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyVodFind3$1;-><init>(Lcom/gemini/play/MyVodFind3;)V

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 73
    iget-object v7, p0, Lcom/gemini/play/MyVodFind3;->vodFindActivity:Landroid/view/View;

    const v8, 0x7f070070

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 74
    .local v0, "b0":Landroid/widget/Button;
    iget-object v7, p0, Lcom/gemini/play/MyVodFind3;->vodFindActivity:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 75
    .local v5, "t":Landroid/widget/EditText;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    mul-float v7, v4, v9

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 77
    new-instance v7, Lcom/gemini/play/MyVodFind3$2;

    invoke-direct {v7, p0, v5}, Lcom/gemini/play/MyVodFind3$2;-><init>(Lcom/gemini/play/MyVodFind3;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v7, Lcom/gemini/play/MyVodFind3$3;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyVodFind3$3;-><init>(Lcom/gemini/play/MyVodFind3;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 106
    iget-object v7, p0, Lcom/gemini/play/MyVodFind3;->vodFindActivity:Landroid/view/View;

    const v8, 0x7f07006e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 107
    .local v1, "b3":Landroid/widget/Button;
    mul-float v7, v4, v9

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 108
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    new-instance v7, Lcom/gemini/play/MyVodFind3$4;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyVodFind3$4;-><init>(Lcom/gemini/play/MyVodFind3;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v7, Lcom/gemini/play/MyVodFind3$5;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyVodFind3$5;-><init>(Lcom/gemini/play/MyVodFind3;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 126
    iget-object v7, p0, Lcom/gemini/play/MyVodFind3;->vodFindActivity:Landroid/view/View;

    const v8, 0x7f0700bb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/GridView;

    iput-object v7, p0, Lcom/gemini/play/MyVodFind3;->inputgrid:Landroid/widget/GridView;

    .line 127
    iget-object v7, p0, Lcom/gemini/play/MyVodFind3;->inputgrid:Landroid/widget/GridView;

    new-instance v8, Lcom/gemini/play/MyVodFind3$6;

    invoke-direct {v8, p0, v2, v5}, Lcom/gemini/play/MyVodFind3$6;-><init>(Lcom/gemini/play/MyVodFind3;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v7, v8}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    iget-object v7, p0, Lcom/gemini/play/MyVodFind3;->inputgrid:Landroid/widget/GridView;

    new-instance v8, Lcom/gemini/play/MyVodFind3$7;

    invoke-direct {v8, p0}, Lcom/gemini/play/MyVodFind3$7;-><init>(Lcom/gemini/play/MyVodFind3;)V

    invoke-virtual {v7, v8}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 187
    iget-object v7, p0, Lcom/gemini/play/MyVodFind3;->inputgrid:Landroid/widget/GridView;

    const v8, 0x106000d

    invoke-virtual {v7, v8}, Landroid/widget/GridView;->setSelector(I)V

    .line 188
    invoke-direct {p0}, Lcom/gemini/play/MyVodFind3;->init_input()V

    .line 189
    invoke-direct {p0}, Lcom/gemini/play/MyVodFind3;->set_inputlist()V

    .line 191
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/gemini/play/MyVodFind3;->_this:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/gemini/play/MyVodFind3;->vodFindActivity:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/gemini/play/MyVodFind3;->dialog:Landroid/app/AlertDialog;

    .line 192
    iget-object v7, p0, Lcom/gemini/play/MyVodFind3;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    sget v8, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v8, v8, 0x5

    mul-int/lit8 v8, v8, 0x4

    sget v9, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v9, v9, 0x5

    mul-int/lit8 v9, v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setLayout(II)V

    .line 194
    iget-object v7, p0, Lcom/gemini/play/MyVodFind3;->dialog:Landroid/app/AlertDialog;

    return-object v7
.end method
