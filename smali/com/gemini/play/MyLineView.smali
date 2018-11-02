.class public Lcom/gemini/play/MyLineView;
.super Ljava/lang/Object;
.source "MyLineView.java"


# instance fields
.field private adapter:Lcom/gemini/play/MySimpleAdapterLiveLineView;

.field private dialog:Landroid/app/AlertDialog;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private lineActivity:Landroid/view/View;

.field private list:Ljava/util/ArrayList;
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

.field private listview:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/gemini/play/MyLineView;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyLineView;->list:Ljava/util/ArrayList;

    .line 31
    iput-object v1, p0, Lcom/gemini/play/MyLineView;->adapter:Lcom/gemini/play/MySimpleAdapterLiveLineView;

    .line 33
    iput-object v1, p0, Lcom/gemini/play/MyLineView;->dialog:Landroid/app/AlertDialog;

    .line 34
    iput-object v1, p0, Lcom/gemini/play/MyLineView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 35
    iput-object v1, p0, Lcom/gemini/play/MyLineView;->lineActivity:Landroid/view/View;

    .line 36
    iput-object v1, p0, Lcom/gemini/play/MyLineView;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyLineView;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyLineView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/gemini/play/MyLineView;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyLineView;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyLineView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/gemini/play/MyLineView;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyLineView;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyLineView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/gemini/play/MyLineView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method private show_list(Ljava/lang/String;I)V
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "line"    # I

    .prologue
    const v9, 0x7f0b004c

    .line 140
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 187
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v6, p0, Lcom/gemini/play/MyLineView;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "high_count":I
    const/4 v2, 0x0

    .line 148
    .local v2, "low_count":I
    sget-object v6, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 150
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "quanxing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 152
    const/4 v0, 0x1

    .line 153
    const/4 v2, 0x0

    .line 164
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 166
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/gemini/play/MyLineView;->mContext:Landroid/content/Context;

    const v8, 0x7f0b004d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/MyLineView;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "t":Ljava/lang/String;
    const-string v6, "ItemTitle"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v6, "ItemLine"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v6, p0, Lcom/gemini/play/MyLineView;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 156
    .end local v1    # "ii":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "t":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/gemini/play/LIVEplayer;->getVideoUrl(I)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "urlss":Ljava/lang/String;
    invoke-static {v5}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-static {v5}, Lcom/gemini/play/LIVEplayer;->getVideoUrlHighCount(Ljava/lang/String;)I

    move-result v0

    .line 160
    invoke-static {v5}, Lcom/gemini/play/LIVEplayer;->getVideoUrlLowCount(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 174
    .end local v5    # "urlss":Ljava/lang/String;
    .restart local v1    # "ii":I
    :cond_3
    move v1, v0

    :goto_3
    add-int v6, v0, v2

    if-ge v1, v6, :cond_4

    .line 176
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 177
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/gemini/play/MyLineView;->mContext:Landroid/content/Context;

    const v8, 0x7f0b004e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/MyLineView;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    .restart local v4    # "t":Ljava/lang/String;
    const-string v6, "ItemTitle"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v6, "ItemLine"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v6, p0, Lcom/gemini/play/MyLineView;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 184
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "t":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/gemini/play/MyLineView;->adapter:Lcom/gemini/play/MySimpleAdapterLiveLineView;

    invoke-virtual {v6}, Lcom/gemini/play/MySimpleAdapterLiveLineView;->notifyDataSetChanged()V

    .line 186
    iget-object v6, p0, Lcom/gemini/play/MyLineView;->listview:Landroid/widget/ListView;

    invoke-virtual {v6, p2}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/gemini/play/MyLineView;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/gemini/play/MyLineView;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 136
    :cond_0
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 6
    .param p1, "_this"    # Landroid/content/Context;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/gemini/play/MyLineView;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/gemini/play/MyLineView;->layoutInflater:Landroid/view/LayoutInflater;

    .line 45
    iget-object v3, p0, Lcom/gemini/play/MyLineView;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f090047

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/gemini/play/MyLineView;->lineActivity:Landroid/view/View;

    .line 46
    iget-object v3, p0, Lcom/gemini/play/MyLineView;->lineActivity:Landroid/view/View;

    const v4, 0x7f0700d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/gemini/play/MyLineView;->listview:Landroid/widget/ListView;

    .line 47
    iget-object v3, p0, Lcom/gemini/play/MyLineView;->listview:Landroid/widget/ListView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v3, p0, Lcom/gemini/play/MyLineView;->lineActivity:Landroid/view/View;

    const v4, 0x7f0700d3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 50
    .local v0, "cancelbutton":Landroid/widget/Button;
    new-instance v3, Lcom/gemini/play/MyLineView$1;

    invoke-direct {v3, p0}, Lcom/gemini/play/MyLineView$1;-><init>(Lcom/gemini/play/MyLineView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v3, Lcom/gemini/play/MyLineView$2;

    invoke-direct {v3, p0}, Lcom/gemini/play/MyLineView$2;-><init>(Lcom/gemini/play/MyLineView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 67
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 68
    .local v2, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v1

    .line 69
    .local v1, "rate":F
    const/high16 v3, 0x40e00000    # 7.0f

    mul-float/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    iget-object v3, p0, Lcom/gemini/play/MyLineView;->listview:Landroid/widget/ListView;

    new-instance v4, Lcom/gemini/play/MyLineView$3;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyLineView$3;-><init>(Lcom/gemini/play/MyLineView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    iget-object v3, p0, Lcom/gemini/play/MyLineView;->listview:Landroid/widget/ListView;

    new-instance v4, Lcom/gemini/play/MyLineView$4;

    invoke-direct {v4, p0, p1}, Lcom/gemini/play/MyLineView$4;-><init>(Lcom/gemini/play/MyLineView;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 95
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/gemini/play/MyLineView;->lineActivity:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/gemini/play/MyLineView;->dialog:Landroid/app/AlertDialog;

    .line 96
    iget-object v3, p0, Lcom/gemini/play/MyLineView;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget v4, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v4, v4, 0x5

    mul-int/lit8 v4, v4, 0x2

    sget v5, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v5, v5, 0x5

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 98
    invoke-virtual {p0}, Lcom/gemini/play/MyLineView;->init_list()V

    .line 99
    return-void
.end method

.method public init_list()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 109
    new-instance v0, Lcom/gemini/play/MySimpleAdapterLiveLineView;

    iget-object v1, p0, Lcom/gemini/play/MyLineView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyLineView;->list:Ljava/util/ArrayList;

    const v3, 0x7f09003e

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ItemTitle"

    aput-object v5, v4, v7

    new-array v5, v6, [I

    const v6, 0x7f07001a

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterLiveLineView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyLineView;->adapter:Lcom/gemini/play/MySimpleAdapterLiveLineView;

    .line 114
    iget-object v0, p0, Lcom/gemini/play/MyLineView;->listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/gemini/play/MyLineView;->adapter:Lcom/gemini/play/MySimpleAdapterLiveLineView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v0, p0, Lcom/gemini/play/MyLineView;->adapter:Lcom/gemini/play/MySimpleAdapterLiveLineView;

    new-instance v1, Lcom/gemini/play/MyLineView$5;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyLineView$5;-><init>(Lcom/gemini/play/MyLineView;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterLiveLineView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 130
    return-void
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/gemini/play/MyLineView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 193
    return-void
.end method

.method public showView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "_this"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/gemini/play/MyLineView;->showView(Landroid/content/Context;Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public showView(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "_this"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "line"    # I

    .prologue
    .line 103
    invoke-direct {p0, p2, p3}, Lcom/gemini/play/MyLineView;->show_list(Ljava/lang/String;I)V

    .line 104
    iget-object v0, p0, Lcom/gemini/play/MyLineView;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 105
    return-void
.end method
