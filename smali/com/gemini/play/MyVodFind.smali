.class public Lcom/gemini/play/MyVodFind;
.super Ljava/lang/Object;
.source "MyVodFind.java"


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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/gemini/play/MyVodFind;->iface:Lcom/gemini/play/ListViewInterface;

    .line 40
    iput v0, p0, Lcom/gemini/play/MyVodFind;->spinner_sort_value:I

    .line 41
    iput v0, p0, Lcom/gemini/play/MyVodFind;->spinner_area_value:I

    .line 42
    iput v0, p0, Lcom/gemini/play/MyVodFind;->spinner_year_value:I

    .line 43
    iput v0, p0, Lcom/gemini/play/MyVodFind;->spinner_type_value:I

    .line 44
    iput-object v1, p0, Lcom/gemini/play/MyVodFind;->spinner_find_value:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind;->years_array:Ljava/util/ArrayList;

    .line 47
    iput-object v1, p0, Lcom/gemini/play/MyVodFind;->inputgrid:Landroid/widget/GridView;

    .line 48
    iput-object v1, p0, Lcom/gemini/play/MyVodFind;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind;->inputlist:Ljava/util/ArrayList;

    .line 51
    iput-object v1, p0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyVodFind;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyVodFind;->spinner_find_value:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/gemini/play/MyVodFind;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/gemini/play/MyVodFind;->spinner_find_value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/gemini/play/MyVodFind;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/gemini/play/MyVodFind;)Lcom/gemini/play/MySimpleAdapterInputView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyVodFind;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyVodFind;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyVodFind;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gemini/play/MyVodFind;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyVodFind;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gemini/play/MyVodFind;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 34
    iget v0, p0, Lcom/gemini/play/MyVodFind;->spinner_sort_value:I

    return v0
.end method

.method static synthetic access$402(Lcom/gemini/play/MyVodFind;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/gemini/play/MyVodFind;->spinner_sort_value:I

    return p1
.end method

.method static synthetic access$500(Lcom/gemini/play/MyVodFind;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 34
    iget v0, p0, Lcom/gemini/play/MyVodFind;->spinner_year_value:I

    return v0
.end method

.method static synthetic access$502(Lcom/gemini/play/MyVodFind;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/gemini/play/MyVodFind;->spinner_year_value:I

    return p1
.end method

.method static synthetic access$600(Lcom/gemini/play/MyVodFind;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyVodFind;->years_array:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/gemini/play/MyVodFind;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 34
    iget v0, p0, Lcom/gemini/play/MyVodFind;->spinner_type_value:I

    return v0
.end method

.method static synthetic access$702(Lcom/gemini/play/MyVodFind;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/gemini/play/MyVodFind;->spinner_type_value:I

    return p1
.end method

.method static synthetic access$800(Lcom/gemini/play/MyVodFind;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 34
    iget v0, p0, Lcom/gemini/play/MyVodFind;->spinner_area_value:I

    return v0
.end method

.method static synthetic access$802(Lcom/gemini/play/MyVodFind;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/gemini/play/MyVodFind;->spinner_area_value:I

    return p1
.end method

.method static synthetic access$900(Lcom/gemini/play/MyVodFind;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/MyVodFind;->inputgrid:Landroid/widget/GridView;

    return-object v0
.end method

.method private getVodTypeStatus(Ljava/lang/String;)Lcom/gemini/play/VodTypeStatus;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 338
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/gemini/play/VODplayer;->typeGet(I)Lcom/gemini/play/VodTypeStatus;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initTypeSpinner(Lcom/gemini/play/VodTypeStatus;)V
    .locals 13
    .param p1, "s"    # Lcom/gemini/play/VodTypeStatus;

    .prologue
    const v12, 0x7f0b00d1

    const v11, 0x1090009

    .line 349
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v5

    .line 351
    .local v5, "rate":F
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->areas:[Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 353
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v3, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    const/4 v4, 0x0

    .local v4, "ii":I
    :goto_0
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->areas:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_0

    .line 357
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->areas:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 359
    :cond_0
    new-instance v0, Lcom/gemini/play/MyArrayAdapterFindView;

    iget-object v9, p0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    invoke-direct {v0, v9, v3}, Lcom/gemini/play/MyArrayAdapterFindView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 360
    .local v0, "adapter_area":Lcom/gemini/play/MyArrayAdapterFindView;
    invoke-virtual {v0, v11}, Lcom/gemini/play/MyArrayAdapterFindView;->setDropDownViewResource(I)V

    .line 361
    iget-object v9, p0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    const v10, 0x7f07013a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 362
    .local v6, "spinner_area":Landroid/widget/Spinner;
    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 363
    new-instance v9, Lcom/gemini/play/MyVodFind$14;

    invoke-direct {v9, p0, v5}, Lcom/gemini/play/MyVodFind$14;-><init>(Lcom/gemini/play/MyVodFind;F)V

    invoke-virtual {v6, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 379
    .end local v0    # "adapter_area":Lcom/gemini/play/MyArrayAdapterFindView;
    .end local v3    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "ii":I
    .end local v6    # "spinner_area":Landroid/widget/Spinner;
    :cond_1
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->years:[Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 382
    iget-object v9, p0, Lcom/gemini/play/MyVodFind;->years_array:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 383
    iget-object v9, p0, Lcom/gemini/play/MyVodFind;->years_array:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    const/4 v4, 0x0

    .restart local v4    # "ii":I
    :goto_1
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->years:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_2

    .line 386
    iget-object v9, p0, Lcom/gemini/play/MyVodFind;->years_array:Ljava/util/ArrayList;

    iget-object v10, p1, Lcom/gemini/play/VodTypeStatus;->years:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 388
    :cond_2
    new-instance v2, Lcom/gemini/play/MyArrayAdapterFindView;

    iget-object v9, p0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    iget-object v10, p0, Lcom/gemini/play/MyVodFind;->years_array:Ljava/util/ArrayList;

    invoke-direct {v2, v9, v10}, Lcom/gemini/play/MyArrayAdapterFindView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 389
    .local v2, "adapter_year":Lcom/gemini/play/MyArrayAdapterFindView;
    invoke-virtual {v2, v11}, Lcom/gemini/play/MyArrayAdapterFindView;->setDropDownViewResource(I)V

    .line 390
    iget-object v9, p0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    const v10, 0x7f07013d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 391
    .local v8, "spinner_year":Landroid/widget/Spinner;
    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 392
    new-instance v9, Lcom/gemini/play/MyVodFind$15;

    invoke-direct {v9, p0, v5}, Lcom/gemini/play/MyVodFind$15;-><init>(Lcom/gemini/play/MyVodFind;F)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 408
    .end local v2    # "adapter_year":Lcom/gemini/play/MyArrayAdapterFindView;
    .end local v4    # "ii":I
    .end local v8    # "spinner_year":Landroid/widget/Spinner;
    :cond_3
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->types:[Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 410
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .restart local v3    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    const/4 v4, 0x0

    .restart local v4    # "ii":I
    :goto_2
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->types:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_4

    .line 414
    iget-object v9, p1, Lcom/gemini/play/VodTypeStatus;->types:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 416
    :cond_4
    new-instance v1, Lcom/gemini/play/MyArrayAdapterFindView;

    iget-object v9, p0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    invoke-direct {v1, v9, v3}, Lcom/gemini/play/MyArrayAdapterFindView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 417
    .local v1, "adapter_type":Lcom/gemini/play/MyArrayAdapterFindView;
    invoke-virtual {v1, v11}, Lcom/gemini/play/MyArrayAdapterFindView;->setDropDownViewResource(I)V

    .line 418
    iget-object v9, p0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    const v10, 0x7f07013c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 419
    .local v7, "spinner_type":Landroid/widget/Spinner;
    invoke-virtual {v7, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 420
    new-instance v9, Lcom/gemini/play/MyVodFind$16;

    invoke-direct {v9, p0, v5}, Lcom/gemini/play/MyVodFind$16;-><init>(Lcom/gemini/play/MyVodFind;F)V

    invoke-virtual {v7, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 435
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

    .line 296
    new-instance v0, Lcom/gemini/play/MySimpleAdapterInputView;

    iget-object v1, p0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyVodFind;->inputlist:Ljava/util/ArrayList;

    const v3, 0x7f090039

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ItemChar"

    aput-object v5, v4, v7

    new-array v5, v6, [I

    const v6, 0x7f070007

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterInputView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyVodFind;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 298
    iget-object v0, p0, Lcom/gemini/play/MyVodFind;->inputgrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/gemini/play/MyVodFind;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    iget-object v0, p0, Lcom/gemini/play/MyVodFind;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    new-instance v1, Lcom/gemini/play/MyVodFind$13;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodFind$13;-><init>(Lcom/gemini/play/MyVodFind;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterInputView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 314
    return-void
.end method

.method private set_inputlist()V
    .locals 6

    .prologue
    .line 318
    iget-object v4, p0, Lcom/gemini/play/MyVodFind;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 319
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    .line 320
    .local v3, "t":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 322
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 323
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ItemChar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v4, p0, Lcom/gemini/play/MyVodFind;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 328
    .local v2, "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ItemChar"

    const-string v5, "CE"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v4, p0, Lcom/gemini/play/MyVodFind;->inputlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v4, p0, Lcom/gemini/play/MyVodFind;->inputadapter:Lcom/gemini/play/MySimpleAdapterInputView;

    invoke-virtual {v4}, Lcom/gemini/play/MySimpleAdapterInputView;->notifyDataSetChanged()V

    .line 332
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/gemini/play/ListViewInterface;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 25
    .param p1, "th"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/gemini/play/ListViewInterface;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 55
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    .line 56
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gemini/play/MyVodFind;->iface:Lcom/gemini/play/ListViewInterface;

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 59
    .local v10, "layoutInflater":Landroid/view/LayoutInflater;
    const v22, 0x7f090075

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v21

    .line 63
    .local v21, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v11

    .line 65
    .local v11, "rate":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f07015c

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 66
    .local v18, "t3":Landroid/widget/TextView;
    const/high16 v22, 0x40e00000    # 7.0f

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f07015e

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 70
    .local v19, "t4":Landroid/widget/TextView;
    const/high16 v22, 0x40e00000    # 7.0f

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 71
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f07015d

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 74
    .local v20, "t5":Landroid/widget/TextView;
    const/high16 v22, 0x40e00000    # 7.0f

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 75
    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f070098

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 78
    .local v9, "e1":Landroid/widget/EditText;
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    const/high16 v22, 0x41200000    # 10.0f

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 80
    new-instance v22, Lcom/gemini/play/MyVodFind$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFind$1;-><init>(Lcom/gemini/play/MyVodFind;)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f070070

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 92
    .local v4, "b0":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f070098

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    .line 93
    .local v17, "t":Landroid/widget/EditText;
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    const/high16 v22, 0x40e00000    # 7.0f

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 95
    new-instance v22, Lcom/gemini/play/MyVodFind$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/gemini/play/MyVodFind$2;-><init>(Lcom/gemini/play/MyVodFind;Landroid/widget/EditText;)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v22, Lcom/gemini/play/MyVodFind$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFind$3;-><init>(Lcom/gemini/play/MyVodFind;)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f070071

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 127
    .local v5, "b1":Landroid/widget/Button;
    const/high16 v22, 0x40e00000    # 7.0f

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 128
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    new-instance v22, Lcom/gemini/play/MyVodFind$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFind$4;-><init>(Lcom/gemini/play/MyVodFind;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v22, Lcom/gemini/play/MyVodFind$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFind$5;-><init>(Lcom/gemini/play/MyVodFind;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f07006f

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 155
    .local v6, "b2":Landroid/widget/Button;
    const/high16 v22, 0x40e00000    # 7.0f

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 156
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 157
    new-instance v22, Lcom/gemini/play/MyVodFind$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFind$6;-><init>(Lcom/gemini/play/MyVodFind;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v22, Lcom/gemini/play/MyVodFind$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFind$7;-><init>(Lcom/gemini/play/MyVodFind;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f07006e

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 189
    .local v7, "b3":Landroid/widget/Button;
    const/high16 v22, 0x40e00000    # 7.0f

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 190
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 191
    new-instance v22, Lcom/gemini/play/MyVodFind$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFind$8;-><init>(Lcom/gemini/play/MyVodFind;)V

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    new-instance v22, Lcom/gemini/play/MyVodFind$9;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFind$9;-><init>(Lcom/gemini/play/MyVodFind;)V

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 208
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v8, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0b00d3

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v8, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0b00d2

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v8, v22

    .line 209
    .local v8, "cities":[Ljava/lang/String;
    new-instance v3, Lcom/gemini/play/MyArrayAdapterFindView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v3, v0, v8}, Lcom/gemini/play/MyArrayAdapterFindView;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 210
    .local v3, "adapter":Lcom/gemini/play/MyArrayAdapterFindView;
    const v22, 0x1090008

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/gemini/play/MyArrayAdapterFindView;->setDropDownViewResource(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f07013b

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    .line 212
    .local v14, "spinner_sort":Landroid/widget/Spinner;
    invoke-virtual {v14, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0b00cc

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 214
    new-instance v22, Lcom/gemini/play/MyVodFind$10;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/gemini/play/MyVodFind$10;-><init>(Lcom/gemini/play/MyVodFind;F)V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f07013a

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    .line 229
    .local v13, "spinner_area":Landroid/widget/Spinner;
    invoke-virtual {v13, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f07013d

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Spinner;

    .line 231
    .local v16, "spinner_year":Landroid/widget/Spinner;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f07013c

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Spinner;

    .line 233
    .local v15, "spinner_type":Landroid/widget/Spinner;
    invoke-virtual {v15, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0700bb

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/GridView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gemini/play/MyVodFind;->inputgrid:Landroid/widget/GridView;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->inputgrid:Landroid/widget/GridView;

    move-object/from16 v22, v0

    new-instance v23, Lcom/gemini/play/MyVodFind$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/gemini/play/MyVodFind$11;-><init>(Lcom/gemini/play/MyVodFind;Landroid/widget/EditText;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->inputgrid:Landroid/widget/GridView;

    move-object/from16 v22, v0

    new-instance v23, Lcom/gemini/play/MyVodFind$12;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFind$12;-><init>(Lcom/gemini/play/MyVodFind;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->inputgrid:Landroid/widget/GridView;

    move-object/from16 v22, v0

    const v23, 0x106000d

    invoke-virtual/range {v22 .. v23}, Landroid/widget/GridView;->setSelector(I)V

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/gemini/play/MyVodFind;->init_input()V

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/gemini/play/MyVodFind;->set_inputlist()V

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/gemini/play/MyVodFind;->getVodTypeStatus(Ljava/lang/String;)Lcom/gemini/play/VodTypeStatus;

    move-result-object v12

    .line 280
    .local v12, "s":Lcom/gemini/play/VodTypeStatus;
    if-eqz v12, :cond_0

    .line 281
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/gemini/play/MyVodFind;->initTypeSpinner(Lcom/gemini/play/VodTypeStatus;)V

    .line 283
    :cond_0
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->_this:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->vodFindActivity:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gemini/play/MyVodFind;->dialog:Landroid/app/AlertDialog;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->dialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    sget v23, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v23, v23, 0x5

    mul-int/lit8 v23, v23, 0x4

    sget v24, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v24, v24, 0x5

    mul-int/lit8 v24, v24, 0x4

    invoke-virtual/range {v22 .. v24}, Landroid/view/Window;->setLayout(II)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyVodFind;->dialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    return-object v22
.end method
