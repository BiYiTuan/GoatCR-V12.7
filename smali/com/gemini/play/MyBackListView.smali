.class public Lcom/gemini/play/MyBackListView;
.super Landroid/widget/LinearLayout;
.source "MyBackListView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field adapter:Lcom/gemini/play/MySimpleAdapterBackListView;

.field private firstID:Ljava/lang/String;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field list:Ljava/util/ArrayList;
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

.field private listtext:Landroid/widget/TextView;

.field private listview:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->_this:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    .line 31
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyBackListView;->list:Ljava/util/ArrayList;

    .line 34
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->adapter:Lcom/gemini/play/MySimpleAdapterBackListView;

    .line 35
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->firstID:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->listtext:Landroid/widget/TextView;

    .line 52
    iput-object p1, p0, Lcom/gemini/play/MyBackListView;->_this:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090025

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    invoke-direct {p0}, Lcom/gemini/play/MyBackListView;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->_this:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    .line 31
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyBackListView;->list:Ljava/util/ArrayList;

    .line 34
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->adapter:Lcom/gemini/play/MySimpleAdapterBackListView;

    .line 35
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->firstID:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->listtext:Landroid/widget/TextView;

    .line 46
    iput-object p1, p0, Lcom/gemini/play/MyBackListView;->_this:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090025

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    invoke-direct {p0}, Lcom/gemini/play/MyBackListView;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->_this:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    .line 31
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyBackListView;->list:Ljava/util/ArrayList;

    .line 34
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->adapter:Lcom/gemini/play/MySimpleAdapterBackListView;

    .line 35
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->firstID:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/gemini/play/MyBackListView;->listtext:Landroid/widget/TextView;

    .line 40
    iput-object p1, p0, Lcom/gemini/play/MyBackListView;->_this:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090025

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    invoke-direct {p0}, Lcom/gemini/play/MyBackListView;->init()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyBackListView;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackListView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/gemini/play/MyBackListView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyBackListView;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackListView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyBackListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackListView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/gemini/play/MyBackListView;->_this:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const v6, 0x7f0700d7

    .line 59
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->_this:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/Roboto-Bold.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 60
    .local v3, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v2

    .line 62
    .local v2, "rate":F
    const v4, 0x7f0700db

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyBackListView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    .line 63
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->_this:Landroid/content/Context;

    const v5, 0x7f060061

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 64
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0, v6}, Lcom/gemini/play/MyBackListView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/gemini/play/MyBackListView;->listtext:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0, v6}, Lcom/gemini/play/MyBackListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    .local v1, "listtext":Landroid/widget/TextView;
    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    new-instance v4, Lcom/gemini/play/MyBackListView$1;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyBackListView$1;-><init>(Lcom/gemini/play/MyBackListView;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyBackListView$2;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyBackListView$2;-><init>(Lcom/gemini/play/MyBackListView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyBackListView$3;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyBackListView$3;-><init>(Lcom/gemini/play/MyBackListView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 116
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyBackListView$4;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyBackListView$4;-><init>(Lcom/gemini/play/MyBackListView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/gemini/play/MyBackListView;->init_list()V

    .line 138
    invoke-virtual {p0}, Lcom/gemini/play/MyBackListView;->set_list()V

    .line 139
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 286
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 354
    :cond_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 300
    :sswitch_1
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->iface:Lcom/gemini/play/ListViewInterface;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 305
    :sswitch_2
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    .line 306
    .local v2, "pos":I
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 307
    .local v0, "end":I
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 308
    .local v1, "first":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backlist down "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 309
    if-lt v2, v1, :cond_1

    if-ge v2, v0, :cond_1

    .line 311
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 312
    invoke-virtual {p0}, Lcom/gemini/play/MyBackListView;->listFocus()V

    goto :goto_0

    .line 316
    :cond_1
    if-le v2, v0, :cond_2

    .line 317
    const/4 v2, 0x0

    .line 321
    :goto_1
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 322
    invoke-virtual {p0}, Lcom/gemini/play/MyBackListView;->listFocus()V

    goto :goto_0

    .line 319
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 329
    .end local v0    # "end":I
    .end local v1    # "first":I
    .end local v2    # "pos":I
    :sswitch_3
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    .line 330
    .restart local v2    # "pos":I
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 331
    .restart local v0    # "end":I
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 332
    .restart local v1    # "first":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backlist up "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 333
    if-le v2, v1, :cond_3

    if-gt v2, v0, :cond_3

    .line 335
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 336
    invoke-virtual {p0}, Lcom/gemini/play/MyBackListView;->listFocus()V

    goto/16 :goto_0

    .line 340
    :cond_3
    if-gez v2, :cond_4

    .line 341
    move v2, v0

    .line 345
    :goto_2
    iget-object v4, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 346
    invoke-virtual {p0}, Lcom/gemini/play/MyBackListView;->listFocus()V

    goto/16 :goto_0

    .line 343
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 288
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public init_list()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 258
    new-instance v0, Lcom/gemini/play/MySimpleAdapterBackListView;

    iget-object v1, p0, Lcom/gemini/play/MyBackListView;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyBackListView;->list:Ljava/util/ArrayList;

    const v3, 0x7f090024

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ItemView"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ItemId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "ItemTitle"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "ItemView2"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterBackListView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyBackListView;->adapter:Lcom/gemini/play/MySimpleAdapterBackListView;

    .line 262
    iget-object v0, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/gemini/play/MyBackListView;->adapter:Lcom/gemini/play/MySimpleAdapterBackListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    iget-object v0, p0, Lcom/gemini/play/MyBackListView;->adapter:Lcom/gemini/play/MySimpleAdapterBackListView;

    new-instance v1, Lcom/gemini/play/MyBackListView$5;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyBackListView$5;-><init>(Lcom/gemini/play/MyBackListView;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterBackListView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 277
    return-void

    .line 258
    :array_0
    .array-data 4
        0x7f070022
        0x7f07000b
        0x7f07001a
        0x7f070025
    .end array-data
.end method

.method public listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 390
    iget-object v0, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 391
    iget-object v0, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 392
    iget-object v0, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 393
    iget-object v0, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 394
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 360
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 380
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 360
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/gemini/play/MyBackListView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 282
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/gemini/play/MyBackListView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 386
    return-void
.end method

.method public set_list()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 222
    iget-object v5, p0, Lcom/gemini/play/MyBackListView;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 223
    invoke-static {}, Lcom/gemini/play/BACKplayer;->playbackSize()I

    move-result v4

    .line 224
    .local v4, "size":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backplayer size all"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_5

    .line 228
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackIdGet(I)I

    move-result v1

    .line 230
    .local v1, "id":I
    sget-boolean v5, Lcom/gemini/play/BACKplayer;->typePasswordOK:Z

    if-eq v5, v10, :cond_0

    invoke-static {v1}, Lcom/gemini/play/BACKplayer;->playbackIsVideoTypePs(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 232
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 233
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/gemini/play/MyBackListView;->_this:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/icon/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackImageGet(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "imagePath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imagePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 235
    invoke-static {v2}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 236
    const-string v5, "ItemView"

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :goto_1
    const-string v5, "ItemTitle"

    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackNameGet(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v5, "ItemId"

    const-string v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackIdGet(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackSourceGet(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 242
    const-string v5, "ItemView2"

    const v6, 0x7f0a001b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :goto_2
    iget-object v5, p0, Lcom/gemini/play/MyBackListView;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v2    # "imagePath":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 238
    .restart local v2    # "imagePath":Ljava/lang/String;
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v5, "ItemView"

    const v6, 0x7f0a004e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 243
    :cond_3
    invoke-static {v0}, Lcom/gemini/play/BACKplayer;->playbackSourceGet(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "p"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 244
    const-string v5, "ItemView2"

    const v6, 0x7f0a0039

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 246
    :cond_4
    const-string v5, "ItemView2"

    const v6, 0x7f0a0043

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 252
    .end local v1    # "id":I
    .end local v2    # "imagePath":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    iget-object v5, p0, Lcom/gemini/play/MyBackListView;->adapter:Lcom/gemini/play/MySimpleAdapterBackListView;

    invoke-virtual {v5}, Lcom/gemini/play/MySimpleAdapterBackListView;->notifyDataSetChanged()V

    .line 253
    return-void
.end method

.method public set_list(Ljava/lang/String;)V
    .locals 12
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 175
    invoke-static {p1}, Lcom/gemini/play/BACKplayer;->playbackTypeNameGetFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "tname":Ljava/lang/String;
    iget-object v7, p0, Lcom/gemini/play/MyBackListView;->listtext:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v7, p0, Lcom/gemini/play/MyBackListView;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 180
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/gemini/play/MyBackListView;->firstID:Ljava/lang/String;

    .line 182
    invoke-static {}, Lcom/gemini/play/BACKplayer;->playbackSize()I

    move-result v5

    .line 183
    .local v5, "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backplayer size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_6

    .line 187
    invoke-static {v1}, Lcom/gemini/play/BACKplayer;->playbackIdGet(I)I

    move-result v2

    .line 188
    .local v2, "id":I
    invoke-static {v1}, Lcom/gemini/play/BACKplayer;->playbackTypeGet(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    .line 190
    sget-boolean v7, Lcom/gemini/play/BACKplayer;->typePasswordOK:Z

    if-eq v7, v11, :cond_0

    invoke-static {v2}, Lcom/gemini/play/BACKplayer;->playbackIsVideoTypePs(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 192
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/gemini/play/MyBackListView;->_this:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/icon/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/gemini/play/BACKplayer;->playbackImageGet(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "imagePath":Ljava/lang/String;
    invoke-static {v3}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 196
    const-string v7, "ItemView"

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :goto_1
    const-string v7, "ItemTitle"

    invoke-static {v1}, Lcom/gemini/play/BACKplayer;->playbackNameGet(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ItemTitle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/gemini/play/BACKplayer;->playbackGetVideoName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 202
    const-string v7, "%03d"

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Lcom/gemini/play/BACKplayer;->playbackIdGet(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "ItemId":Ljava/lang/String;
    iget-object v7, p0, Lcom/gemini/play/MyBackListView;->firstID:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 204
    iput-object v0, p0, Lcom/gemini/play/MyBackListView;->firstID:Ljava/lang/String;

    .line 205
    :cond_1
    const-string v7, "ItemId"

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {v1}, Lcom/gemini/play/BACKplayer;->playbackSourceGet(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "hd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 207
    const-string v7, "ItemView2"

    const v8, 0x7f0a001b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :goto_2
    iget-object v7, p0, Lcom/gemini/play/MyBackListView;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v0    # "ItemId":Ljava/lang/String;
    .end local v3    # "imagePath":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 198
    .restart local v3    # "imagePath":Ljava/lang/String;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    const-string v7, "ItemView"

    const v8, 0x7f0a004e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 208
    .restart local v0    # "ItemId":Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Lcom/gemini/play/BACKplayer;->playbackSourceGet(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "p"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 209
    const-string v7, "ItemView2"

    const v8, 0x7f0a0039

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 211
    :cond_5
    const-string v7, "ItemView2"

    const v8, 0x7f0a0043

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 217
    .end local v0    # "ItemId":Ljava/lang/String;
    .end local v2    # "id":I
    .end local v3    # "imagePath":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    iget-object v7, p0, Lcom/gemini/play/MyBackListView;->adapter:Lcom/gemini/play/MySimpleAdapterBackListView;

    invoke-virtual {v7}, Lcom/gemini/play/MySimpleAdapterBackListView;->notifyDataSetChanged()V

    .line 218
    return-void
.end method

.method public showListView(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 160
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0, p1}, Lcom/gemini/play/MyBackListView;->set_list(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/gemini/play/MyBackListView;->iface:Lcom/gemini/play/ListViewInterface;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/gemini/play/MyBackListView;->firstID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyBackListView;->set_list()V

    goto :goto_0
.end method
