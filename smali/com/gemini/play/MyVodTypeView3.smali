.class public Lcom/gemini/play/MyVodTypeView3;
.super Landroid/widget/LinearLayout;
.source "MyVodTypeView3.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private adapter:Lcom/gemini/play/MySimpleAdapterVodType3View;

.field private iface:Lcom/gemini/play/ListViewInterface;

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

.field listview:Landroid/widget/ListView;

.field private rate:F

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    .line 27
    iput-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->iface:Lcom/gemini/play/ListViewInterface;

    .line 31
    iput-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->list:Ljava/util/ArrayList;

    .line 33
    iput-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->adapter:Lcom/gemini/play/MySimpleAdapterVodType3View;

    .line 51
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090084

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    invoke-direct {p0}, Lcom/gemini/play/MyVodTypeView3;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    .line 27
    iput-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->iface:Lcom/gemini/play/ListViewInterface;

    .line 31
    iput-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->list:Ljava/util/ArrayList;

    .line 33
    iput-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->adapter:Lcom/gemini/play/MySimpleAdapterVodType3View;

    .line 44
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090084

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    invoke-direct {p0}, Lcom/gemini/play/MyVodTypeView3;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    .line 27
    iput-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->iface:Lcom/gemini/play/ListViewInterface;

    .line 31
    iput-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->list:Ljava/util/ArrayList;

    .line 33
    iput-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->adapter:Lcom/gemini/play/MySimpleAdapterVodType3View;

    .line 37
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090084

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    invoke-direct {p0}, Lcom/gemini/play/MyVodTypeView3;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyVodTypeView3;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodTypeView3;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyVodTypeView3;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodTypeView3;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 12

    .prologue
    const v2, 0x7f0b0080

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 60
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->typeFace:Landroid/graphics/Typeface;

    .line 61
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MyVodTypeView3;->rate:F

    .line 63
    const-string v8, ""

    .line 64
    .local v8, "timeout":Ljava/lang/String;
    sget v0, Lcom/gemini/play/MGplayer;->isShowLefttime:I

    if-ne v0, v10, :cond_0

    .line 67
    sget-object v0, Lcom/gemini/play/MGplayer;->leftdays:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    const v2, 0x7f0b0082

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 76
    :cond_0
    :goto_0
    const v0, 0x7f0700cf

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodTypeView3;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 77
    .local v7, "leftdaytext":Landroid/widget/TextView;
    iget v0, p0, Lcom/gemini/play/MyVodTypeView3;->rate:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 78
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v0, 0x7f07016e

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodTypeView3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    .line 82
    const/4 v6, 0x0

    .line 83
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    const v1, 0x7f060061

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 84
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    new-instance v1, Lcom/gemini/play/MyVodTypeView3$1;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodTypeView3$1;-><init>(Lcom/gemini/play/MyVodTypeView3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    new-instance v0, Lcom/gemini/play/MyVodTypeView3$2;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodTypeView3$2;-><init>(Lcom/gemini/play/MyVodTypeView3;)V

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodTypeView3;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 117
    new-instance v0, Lcom/gemini/play/MySimpleAdapterVodType3View;

    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyVodTypeView3;->list:Ljava/util/ArrayList;

    const v3, 0x7f090081

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "ItemTitle"

    aput-object v5, v4, v9

    const-string v5, "ItemId"

    aput-object v5, v4, v10

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterVodType3View;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->adapter:Lcom/gemini/play/MySimpleAdapterVodType3View;

    .line 122
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->adapter:Lcom/gemini/play/MySimpleAdapterVodType3View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView3;->adapter:Lcom/gemini/play/MySimpleAdapterVodType3View;

    new-instance v1, Lcom/gemini/play/MyVodTypeView3$3;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodTypeView3$3;-><init>(Lcom/gemini/play/MyVodTypeView3;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterVodType3View;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 138
    return-void

    .line 72
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "leftdaytext":Landroid/widget/TextView;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gemini/play/MGplayer;->leftdays:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    const v2, 0x7f0b0081

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 117
    nop

    :array_0
    .array-data 4
        0x7f07001a
        0x7f07000b
    .end array-data
.end method

.method private selectIndexNoFocus()V
    .locals 3

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    const v2, 0x7f0a0047

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 189
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 192
    packed-switch p1, :pswitch_data_0

    .line 198
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 194
    :pswitch_0
    invoke-direct {p0}, Lcom/gemini/play/MyVodTypeView3;->selectIndexNoFocus()V

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView3;->iface:Lcom/gemini/play/ListViewInterface;

    .line 143
    return-void
.end method

.method public set_init(I)V
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VODplayer.type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 148
    sget-object v3, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v4, "find"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ItemTitle"

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    const v5, 0x7f0b00e6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v3, "ItemId"

    const-string v4, "find"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView3;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView3;->adapter:Lcom/gemini/play/MySimpleAdapterVodType3View;

    invoke-virtual {v3}, Lcom/gemini/play/MySimpleAdapterVodType3View;->notifyDataSetChanged()V

    .line 181
    return-void

    .line 156
    :cond_1
    sget-object v3, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v4, "hot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 159
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ItemTitle"

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    const v5, 0x7f0b00e7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v3, "ItemId"

    const-string v4, "hot"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView3;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    sget-object v3, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v4, "collect"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 166
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ItemTitle"

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView3;->_this:Landroid/content/Context;

    const v5, 0x7f0b00e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v3, "ItemId"

    const-string v4, "collect"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView3;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, p1, -0x1

    if-lt v3, v4, :cond_0

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 171
    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "types":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 174
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ItemTitle"

    aget-object v4, v2, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v3, "ItemId"

    const-string v4, "%03d"

    new-array v5, v8, [Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ItemTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ItemID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%03d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 177
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView3;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
