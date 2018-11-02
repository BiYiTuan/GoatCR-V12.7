.class public Lcom/gemini/play/MyTypeView;
.super Landroid/widget/LinearLayout;
.source "MyTypeView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private edittext:Landroid/widget/EditText;

.field private find_button:Landroid/widget/Button;

.field private forcebutton:Z

.field private forcelist:I

.field private gridindex:I

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

.field private inputgrid:Landroid/widget/GridView;

.field private inputlayout:Landroid/widget/LinearLayout;

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

.field private listview:Landroid/widget/ListView;

.field private passwordOK:Z

.field public rHandler:Landroid/os/Handler;

.field t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    .line 38
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 39
    iput-boolean v2, p0, Lcom/gemini/play/MyTypeView;->passwordOK:Z

    .line 40
    iput-boolean v2, p0, Lcom/gemini/play/MyTypeView;->isShow:Z

    .line 42
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyTypeView;->inputlist:Ljava/util/ArrayList;

    .line 44
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    .line 45
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->inputlayout:Landroid/widget/LinearLayout;

    .line 46
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->edittext:Landroid/widget/EditText;

    .line 47
    iput v2, p0, Lcom/gemini/play/MyTypeView;->forcelist:I

    .line 48
    iput v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    .line 49
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->find_button:Landroid/widget/Button;

    .line 50
    iput-boolean v2, p0, Lcom/gemini/play/MyTypeView;->forcebutton:Z

    .line 52
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    iput-object v0, p0, Lcom/gemini/play/MyTypeView;->t:Ljava/lang/String;

    .line 497
    new-instance v0, Lcom/gemini/play/MyTypeView$10;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyTypeView$10;-><init>(Lcom/gemini/play/MyTypeView;)V

    iput-object v0, p0, Lcom/gemini/play/MyTypeView;->rHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09006f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 72
    invoke-direct {p0}, Lcom/gemini/play/MyTypeView;->init()V

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

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    .line 38
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 39
    iput-boolean v2, p0, Lcom/gemini/play/MyTypeView;->passwordOK:Z

    .line 40
    iput-boolean v2, p0, Lcom/gemini/play/MyTypeView;->isShow:Z

    .line 42
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyTypeView;->inputlist:Ljava/util/ArrayList;

    .line 44
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    .line 45
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->inputlayout:Landroid/widget/LinearLayout;

    .line 46
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->edittext:Landroid/widget/EditText;

    .line 47
    iput v2, p0, Lcom/gemini/play/MyTypeView;->forcelist:I

    .line 48
    iput v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    .line 49
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->find_button:Landroid/widget/Button;

    .line 50
    iput-boolean v2, p0, Lcom/gemini/play/MyTypeView;->forcebutton:Z

    .line 52
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    iput-object v0, p0, Lcom/gemini/play/MyTypeView;->t:Ljava/lang/String;

    .line 497
    new-instance v0, Lcom/gemini/play/MyTypeView$10;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyTypeView$10;-><init>(Lcom/gemini/play/MyTypeView;)V

    iput-object v0, p0, Lcom/gemini/play/MyTypeView;->rHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09006f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    invoke-direct {p0}, Lcom/gemini/play/MyTypeView;->init()V

    .line 67
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

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    .line 38
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 39
    iput-boolean v2, p0, Lcom/gemini/play/MyTypeView;->passwordOK:Z

    .line 40
    iput-boolean v2, p0, Lcom/gemini/play/MyTypeView;->isShow:Z

    .line 42
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyTypeView;->inputlist:Ljava/util/ArrayList;

    .line 44
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    .line 45
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->inputlayout:Landroid/widget/LinearLayout;

    .line 46
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->edittext:Landroid/widget/EditText;

    .line 47
    iput v2, p0, Lcom/gemini/play/MyTypeView;->forcelist:I

    .line 48
    iput v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    .line 49
    iput-object v1, p0, Lcom/gemini/play/MyTypeView;->find_button:Landroid/widget/Button;

    .line 50
    iput-boolean v2, p0, Lcom/gemini/play/MyTypeView;->forcebutton:Z

    .line 52
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    iput-object v0, p0, Lcom/gemini/play/MyTypeView;->t:Ljava/lang/String;

    .line 497
    new-instance v0, Lcom/gemini/play/MyTypeView$10;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyTypeView$10;-><init>(Lcom/gemini/play/MyTypeView;)V

    iput-object v0, p0, Lcom/gemini/play/MyTypeView;->rHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09006f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    invoke-direct {p0}, Lcom/gemini/play/MyTypeView;->init()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyTypeView;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyTypeView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyTypeView;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyTypeView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyTypeView;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyTypeView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/gemini/play/MyTypeView;->sendMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/gemini/play/MyTypeView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyTypeView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->edittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gemini/play/MyTypeView;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyTypeView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/gemini/play/MyTypeView;)Lcom/gemini/play/MySimpleAdapterInputView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyTypeView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/gemini/play/MyTypeView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyTypeView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/gemini/play/MyTypeView;->inputPasswordView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/gemini/play/MyTypeView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyTypeView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const/high16 v6, 0x41000000    # 8.0f

    .line 79
    iget-object v4, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 80
    .local v3, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v2

    .line 82
    .local v2, "rate":F
    const v4, 0x7f0700db

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyTypeView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    .line 84
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 87
    const v4, 0x7f07009f

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyTypeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 88
    .local v1, "listtiew":Landroid/widget/TextView;
    mul-float v4, v6, v2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 89
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    const v4, 0x7f07009e

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyTypeView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/gemini/play/MyTypeView;->edittext:Landroid/widget/EditText;

    .line 92
    iget-object v4, p0, Lcom/gemini/play/MyTypeView;->edittext:Landroid/widget/EditText;

    mul-float v5, v6, v2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 93
    iget-object v4, p0, Lcom/gemini/play/MyTypeView;->edittext:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    iget-object v4, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyTypeView$1;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyTypeView$1;-><init>(Lcom/gemini/play/MyTypeView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 111
    iget-object v4, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyTypeView$2;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyTypeView$2;-><init>(Lcom/gemini/play/MyTypeView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    iget-object v4, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyTypeView$3;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyTypeView$3;-><init>(Lcom/gemini/play/MyTypeView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 149
    const v4, 0x7f0700df

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyTypeView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    .line 150
    const v4, 0x7f0700e0

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyTypeView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/gemini/play/MyTypeView;->inputlayout:Landroid/widget/LinearLayout;

    .line 151
    const v4, 0x7f07009d

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyTypeView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/gemini/play/MyTypeView;->find_button:Landroid/widget/Button;

    .line 152
    iget-object v4, p0, Lcom/gemini/play/MyTypeView;->find_button:Landroid/widget/Button;

    mul-float v5, v6, v2

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 153
    iget-object v4, p0, Lcom/gemini/play/MyTypeView;->find_button:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 168
    iget-object v4, p0, Lcom/gemini/play/MyTypeView;->find_button:Landroid/widget/Button;

    new-instance v5, Lcom/gemini/play/MyTypeView$4;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyTypeView$4;-><init>(Lcom/gemini/play/MyTypeView;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v4, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    new-instance v5, Lcom/gemini/play/MyTypeView$5;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyTypeView$5;-><init>(Lcom/gemini/play/MyTypeView;)V

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    iget-object v4, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    new-instance v5, Lcom/gemini/play/MyTypeView$6;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyTypeView$6;-><init>(Lcom/gemini/play/MyTypeView;)V

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 203
    iget-object v4, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setSelector(I)V

    .line 204
    invoke-direct {p0}, Lcom/gemini/play/MyTypeView;->init_input()V

    .line 205
    invoke-direct {p0}, Lcom/gemini/play/MyTypeView;->set_inputlist()V

    .line 209
    return-void
.end method

.method private init_input()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 273
    new-instance v0, Lcom/gemini/play/MySimpleAdapterInputView;

    iget-object v1, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyTypeView;->inputlist:Ljava/util/ArrayList;

    const v3, 0x7f090039

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ItemChar"

    aput-object v5, v4, v7

    new-array v5, v6, [I

    const v6, 0x7f070007

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterInputView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyTypeView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 275
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/gemini/play/MyTypeView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 277
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    new-instance v1, Lcom/gemini/play/MyTypeView$8;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyTypeView$8;-><init>(Lcom/gemini/play/MyTypeView;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterInputView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 291
    return-void
.end method

.method private inputPasswordView(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 754
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 755
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 756
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f09003a

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 757
    .local v2, "textEntryView":Landroid/view/View;
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 758
    iget-object v3, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f0b00a5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 759
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 760
    iget-object v3, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f0b0083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gemini/play/MyTypeView$11;

    invoke-direct {v4, p0, v2, p1}, Lcom/gemini/play/MyTypeView$11;-><init>(Lcom/gemini/play/MyTypeView;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 781
    iget-object v3, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f0b0032

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 782
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 783
    return-void
.end method

.method private sendMessage(ILjava/lang/String;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "d"    # Ljava/lang/String;

    .prologue
    .line 489
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 490
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 491
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 493
    iput p1, v1, Landroid/os/Message;->what:I

    .line 494
    iget-object v2, p0, Lcom/gemini/play/MyTypeView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 495
    return-void
.end method

.method private set_inputlist()V
    .locals 5

    .prologue
    .line 295
    iget-object v3, p0, Lcom/gemini/play/MyTypeView;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 297
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    iget-object v3, p0, Lcom/gemini/play/MyTypeView;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 299
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ItemChar"

    iget-object v4, p0, Lcom/gemini/play/MyTypeView;->t:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v3, p0, Lcom/gemini/play/MyTypeView;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 315
    .local v2, "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ItemChar"

    const-string v4, "CE"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v3, p0, Lcom/gemini/play/MyTypeView;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v3, p0, Lcom/gemini/play/MyTypeView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    invoke-virtual {v3}, Lcom/gemini/play/MySimpleAdapterInputView;->notifyDataSetChanged()V

    .line 319
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0x24

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 625
    const-string v2, "typelist dispatchKeyEvent"

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->showViewTimeout()V

    .line 627
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 629
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 748
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 636
    :sswitch_1
    iget-boolean v2, p0, Lcom/gemini/play/MyTypeView;->forcebutton:Z

    if-ne v2, v1, :cond_2

    .line 638
    iget-object v2, p0, Lcom/gemini/play/MyTypeView;->edittext:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "t":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/MyTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 640
    iput v4, p0, Lcom/gemini/play/MyTypeView;->forcelist:I

    .line 641
    iput-boolean v4, p0, Lcom/gemini/play/MyTypeView;->forcebutton:Z

    goto :goto_1

    .line 644
    .end local v0    # "t":Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/gemini/play/MyTypeView;->forcelist:I

    if-ne v2, v1, :cond_0

    .line 646
    iget v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    if-ne v2, v3, :cond_3

    .line 648
    const-string v2, "CE"

    iget v3, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    invoke-virtual {p0, v2, v3}, Lcom/gemini/play/MyTypeView;->grid_enter(Ljava/lang/String;I)V

    goto :goto_1

    .line 650
    :cond_3
    iget v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    if-ltz v2, :cond_1

    .line 651
    iget-object v2, p0, Lcom/gemini/play/MyTypeView;->t:Ljava/lang/String;

    iget v3, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    invoke-virtual {p0, v2, v3}, Lcom/gemini/play/MyTypeView;->grid_enter(Ljava/lang/String;I)V

    goto :goto_1

    .line 657
    :sswitch_2
    iget v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    rem-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_4

    iget v2, p0, Lcom/gemini/play/MyTypeView;->forcelist:I

    if-ne v2, v1, :cond_4

    .line 659
    const/4 v2, -0x1

    iput v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    .line 660
    iput v4, p0, Lcom/gemini/play/MyTypeView;->forcelist:I

    .line 661
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->listFocus()V

    .line 662
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyTypeView;->gridinput_show(Z)V

    goto :goto_1

    .line 665
    :cond_4
    iget v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    if-lez v2, :cond_0

    .line 667
    iget v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    .line 668
    iget-object v2, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    iget v3, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_1

    .line 673
    :sswitch_3
    sget-boolean v2, Lcom/gemini/play/LIVEplayer;->show_type_find:Z

    if-ne v2, v1, :cond_5

    .line 674
    iget v2, p0, Lcom/gemini/play/MyTypeView;->forcelist:I

    if-ne v2, v1, :cond_0

    .line 675
    iget v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    .line 676
    iget-object v2, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    iget v3, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelection(I)V

    goto/16 :goto_1

    .line 680
    :cond_5
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->hideTypeList()V

    goto/16 :goto_0

    .line 686
    :sswitch_4
    iget v2, p0, Lcom/gemini/play/MyTypeView;->forcelist:I

    if-ne v2, v1, :cond_0

    .line 688
    iget-boolean v2, p0, Lcom/gemini/play/MyTypeView;->forcebutton:Z

    if-ne v2, v1, :cond_6

    .line 690
    iput-boolean v4, p0, Lcom/gemini/play/MyTypeView;->forcebutton:Z

    .line 691
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->gridFocus()V

    .line 692
    iput v4, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    .line 693
    iget-object v1, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    iget v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelection(I)V

    .line 694
    iget-object v1, p0, Lcom/gemini/play/MyTypeView;->find_button:Landroid/widget/Button;

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 697
    :cond_6
    iget v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    add-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    .line 698
    iget v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    if-le v2, v3, :cond_7

    .line 699
    iput v3, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    .line 700
    :cond_7
    iget-object v2, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    iget v3, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelection(I)V

    goto/16 :goto_1

    .line 707
    :sswitch_5
    iget v2, p0, Lcom/gemini/play/MyTypeView;->forcelist:I

    if-ne v2, v1, :cond_0

    .line 709
    iget v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_8

    .line 711
    iput-boolean v1, p0, Lcom/gemini/play/MyTypeView;->forcebutton:Z

    .line 712
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->find_button_force()V

    .line 713
    iget-object v2, p0, Lcom/gemini/play/MyTypeView;->find_button:Landroid/widget/Button;

    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 716
    :cond_8
    iget v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    add-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    .line 717
    iget v2, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    if-gez v2, :cond_9

    .line 718
    iput v4, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    .line 719
    :cond_9
    iget-object v2, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    iget v3, p0, Lcom/gemini/play/MyTypeView;->gridindex:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelection(I)V

    goto/16 :goto_1

    .line 629
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_5
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public find_button_force()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 575
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->find_button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 576
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->find_button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 577
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->find_button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 578
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->find_button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    .line 579
    return-void
.end method

.method public gridFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 449
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 450
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 451
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocus()Z

    .line 452
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocusFromTouch()Z

    .line 453
    return-void
.end method

.method public gridNoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 458
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->inputgrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 459
    return-void
.end method

.method public grid_enter(Ljava/lang/String;I)V
    .locals 3
    .param p1, "t0"    # Ljava/lang/String;
    .param p2, "arg2"    # I

    .prologue
    .line 606
    const-string v1, "CE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/gemini/play/MyTypeView;->edittext:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/gemini/play/MyTypeView;->edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "t":Ljava/lang/String;
    iget-object v1, p0, Lcom/gemini/play/MyTypeView;->edittext:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v1, p0, Lcom/gemini/play/MyTypeView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/gemini/play/MyTypeView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    invoke-virtual {v1, p2}, Lcom/gemini/play/MySimpleAdapterInputView;->setSeclection(I)V

    .line 619
    iget-object v1, p0, Lcom/gemini/play/MyTypeView;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    invoke-virtual {v1}, Lcom/gemini/play/MySimpleAdapterInputView;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public gridinput_show(Z)V
    .locals 10
    .param p1, "show"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 583
    const v3, 0x7f0700e0

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyTypeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 584
    .local v0, "inputlayout":Landroid/widget/LinearLayout;
    const v3, 0x7f0700c1

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyTypeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 586
    .local v1, "layout":Landroid/widget/LinearLayout;
    if-ne p1, v9, :cond_0

    .line 587
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 588
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 589
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/gemini/play/MGplayer;->screenWidth:I

    int-to-double v4, v3

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 590
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    iput v9, p0, Lcom/gemini/play/MyTypeView;->forcelist:I

    .line 601
    :goto_0
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->showViewTimeout()V

    .line 602
    return-void

    .line 594
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 595
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 596
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/gemini/play/MGplayer;->screenWidth:I

    int-to-double v4, v3

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 597
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    iput v8, p0, Lcom/gemini/play/MyTypeView;->forcelist:I

    goto :goto_0
.end method

.method public hideTypeList()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 376
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->listNoFocus()V

    .line 381
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    :goto_0
    return-void

    .line 386
    :cond_1
    iput-boolean v1, p0, Lcom/gemini/play/MyTypeView;->isShow:Z

    .line 417
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyTypeView;->setFocusable(Z)V

    .line 419
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/MyTypeView$9;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyTypeView$9;-><init>(Lcom/gemini/play/MyTypeView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public hideViewTimeout()V
    .locals 4

    .prologue
    .line 468
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 469
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 470
    iget-object v1, p0, Lcom/gemini/play/MyTypeView;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 471
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/gemini/play/MyTypeView;->isShow:Z

    return v0
.end method

.method public listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 435
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 436
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 437
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 438
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 439
    return-void
.end method

.method public listNoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 444
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 445
    return-void
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/gemini/play/MyTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 464
    return-void
.end method

.method public set_list()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x2

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v10, "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ItemID"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "ItemIcon"

    const v3, 0x7f0a0016

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "ItemName"

    iget-object v3, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f0b00a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v8, "map0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ItemID"

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v1, "ItemIcon"

    const v3, 0x7f0a004e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v1, "ItemName"

    iget-object v3, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f0b00a4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v9, "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ItemID"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "ItemIcon"

    const v3, 0x7f0a0031

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, "ItemName"

    iget-object v3, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f0b00a7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v11, "map3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ItemID"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v1, "ItemIcon"

    const v3, 0x7f0a0051

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v1, "ItemName"

    iget-object v3, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f0b00a9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->typeSize()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 242
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 243
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ItemID"

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v1, "ItemName"

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->typeNameGet(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 249
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Lcom/gemini/play/MySimpleAdapterTypeListView;

    iget-object v1, p0, Lcom/gemini/play/MyTypeView;->_this:Landroid/content/Context;

    const v3, 0x7f09006e

    new-array v4, v13, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v12, "ItemIcon"

    aput-object v12, v4, v5

    const-string v5, "ItemName"

    aput-object v5, v4, v14

    new-array v5, v13, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterTypeListView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 253
    .local v0, "adapter":Lcom/gemini/play/MySimpleAdapterTypeListView;
    iget-object v1, p0, Lcom/gemini/play/MyTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    new-instance v1, Lcom/gemini/play/MyTypeView$7;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyTypeView$7;-><init>(Lcom/gemini/play/MyTypeView;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterTypeListView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 269
    return-void

    .line 249
    nop

    :array_0
    .array-data 4
        0x7f07000a
        0x7f070016
    .end array-data
.end method

.method public showTypeList()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->showViewTimeout()V

    .line 326
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->listFocus()V

    .line 328
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-virtual {p0, v1}, Lcom/gemini/play/MyTypeView;->gridinput_show(Z)V

    .line 333
    iput-boolean v2, p0, Lcom/gemini/play/MyTypeView;->isShow:Z

    .line 335
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->set_list()V

    .line 337
    invoke-virtual {p0, v1}, Lcom/gemini/play/MyTypeView;->setVisibility(I)V

    .line 367
    invoke-virtual {p0, v2}, Lcom/gemini/play/MyTypeView;->setFocusable(Z)V

    .line 368
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->listFocus()V

    goto :goto_0
.end method

.method public showViewNoTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 483
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    :cond_0
    return-void
.end method

.method public showViewTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 475
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/gemini/play/MyTypeView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView;->hideViewTimeout()V

    .line 479
    return-void
.end method
