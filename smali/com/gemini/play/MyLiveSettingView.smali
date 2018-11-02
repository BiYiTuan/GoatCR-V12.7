.class public Lcom/gemini/play/MyLiveSettingView;
.super Ljava/lang/Object;
.source "MyLiveSettingView.java"


# static fields
.field private static current_id:Ljava/lang/String;

.field private static dialog:Landroid/app/AlertDialog;

.field private static iface:Lcom/gemini/play/ListViewInterface;

.field private static menuDialog:Landroid/app/AlertDialog;

.field private static menuGrid:Landroid/widget/GridView;

.field private static menuView:Landroid/view/View;

.field public static menu_image_array:[I

.field public static menu_name_array:[I

.field public static onLinePressed:Lcom/gemini/play/ListViewInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/gemini/play/MyLiveSettingView;->current_id:Ljava/lang/String;

    .line 27
    sput-object v0, Lcom/gemini/play/MyLiveSettingView;->dialog:Landroid/app/AlertDialog;

    .line 28
    sput-object v0, Lcom/gemini/play/MyLiveSettingView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gemini/play/MyLiveSettingView;->menu_image_array:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/gemini/play/MyLiveSettingView;->menu_name_array:[I

    .line 123
    new-instance v0, Lcom/gemini/play/MyLiveSettingView$3;

    invoke-direct {v0}, Lcom/gemini/play/MyLiveSettingView$3;-><init>()V

    sput-object v0, Lcom/gemini/play/MyLiveSettingView;->onLinePressed:Lcom/gemini/play/ListViewInterface;

    return-void

    .line 30
    :array_0
    .array-data 4
        0x7f0a0030
        0x7f0a004b
        0x7f0a0003
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x7f0b005f
        0x7f0b0060
        0x7f0b002e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/gemini/play/MyLiveSettingView;->collectActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/gemini/play/MyLiveSettingView;->lineActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/gemini/play/MyLiveSettingView;->menuDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300()Lcom/gemini/play/ListViewInterface;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/gemini/play/MyLiveSettingView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method private static collectActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 104
    sget-object v1, Lcom/gemini/play/MyLiveSettingView;->current_id:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Lcom/gemini/play/MyLiveCollectView;

    invoke-direct {v0}, Lcom/gemini/play/MyLiveCollectView;-><init>()V

    .line 109
    .local v0, "collecter":Lcom/gemini/play/MyLiveCollectView;
    sget-object v1, Lcom/gemini/play/MyLiveSettingView;->current_id:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/gemini/play/MyLiveCollectView;->showView(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getMenuAdapter(Landroid/content/Context;[I[I)Landroid/widget/SimpleAdapter;
    .locals 9
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "menuNameArray"    # [I
    .param p2, "imageResourceArray"    # [I

    .prologue
    const/4 v8, 0x2

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v1, p1

    if-ge v6, v1, :cond_0

    .line 74
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "itemImage"

    aget v3, p2, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "itemText"

    aget v3, p1, v6

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 80
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f09004d

    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "itemImage"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "itemText"

    aput-object v5, v4, v1

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 84
    .local v0, "simperAdapter":Landroid/widget/SimpleAdapter;
    return-object v0

    .line 80
    :array_0
    .array-data 4
        0x7f0700bf
        0x7f0700c0
    .end array-data
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 36
    const v0, 0x7f09004e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/MyLiveSettingView;->menuView:Landroid/view/View;

    .line 38
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/MyLiveSettingView;->menuDialog:Landroid/app/AlertDialog;

    .line 39
    sget-object v0, Lcom/gemini/play/MyLiveSettingView;->menuDialog:Landroid/app/AlertDialog;

    sget-object v1, Lcom/gemini/play/MyLiveSettingView;->menuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 40
    sget-object v0, Lcom/gemini/play/MyLiveSettingView;->menuDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/gemini/play/MyLiveSettingView$1;

    invoke-direct {v1}, Lcom/gemini/play/MyLiveSettingView$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 49
    sget-object v0, Lcom/gemini/play/MyLiveSettingView;->menuView:Landroid/view/View;

    const v1, 0x7f0700a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    sput-object v0, Lcom/gemini/play/MyLiveSettingView;->menuGrid:Landroid/widget/GridView;

    .line 50
    sget-object v0, Lcom/gemini/play/MyLiveSettingView;->menuGrid:Landroid/widget/GridView;

    sget-object v1, Lcom/gemini/play/MyLiveSettingView;->menu_name_array:[I

    sget-object v2, Lcom/gemini/play/MyLiveSettingView;->menu_image_array:[I

    invoke-static {p0, v1, v2}, Lcom/gemini/play/MyLiveSettingView;->getMenuAdapter(Landroid/content/Context;[I[I)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    sget-object v0, Lcom/gemini/play/MyLiveSettingView;->menuGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/gemini/play/MyLiveSettingView$2;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyLiveSettingView$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    return-void
.end method

.method private static lineActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 114
    sget-object v1, Lcom/gemini/play/MyLiveSettingView;->current_id:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v0, Lcom/gemini/play/MyLineView;

    invoke-direct {v0}, Lcom/gemini/play/MyLineView;-><init>()V

    .line 118
    .local v0, "liner":Lcom/gemini/play/MyLineView;
    invoke-virtual {v0, p0}, Lcom/gemini/play/MyLineView;->initView(Landroid/content/Context;)V

    .line 119
    sget-object v1, Lcom/gemini/play/MyLiveSettingView;->onLinePressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyLineView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 120
    sget-object v1, Lcom/gemini/play/MyLiveSettingView;->current_id:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/gemini/play/MyLineView;->showView(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p0, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 137
    sput-object p0, Lcom/gemini/play/MyLiveSettingView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 138
    return-void
.end method

.method public static showAlertDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0}, Lcom/gemini/play/MyLiveSettingView;->init(Landroid/content/Context;)V

    .line 90
    sput-object p1, Lcom/gemini/play/MyLiveSettingView;->current_id:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyLiveSettingView current id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gemini/play/MyLiveSettingView;->current_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/gemini/play/MyLiveSettingView;->menuDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/gemini/play/MyLiveSettingView;->menuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/MyLiveSettingView;->menuDialog:Landroid/app/AlertDialog;

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/gemini/play/MyLiveSettingView;->menuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
