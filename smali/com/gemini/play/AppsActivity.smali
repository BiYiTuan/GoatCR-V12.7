.class public Lcom/gemini/play/AppsActivity;
.super Landroid/app/Activity;
.source "AppsActivity.java"


# instance fields
.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGrid:Landroid/widget/GridView;

.field private mListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/gemini/play/AppsActivity;->mGrid:Landroid/widget/GridView;

    .line 26
    iput-object v0, p0, Lcom/gemini/play/AppsActivity;->mApps:Ljava/util/List;

    .line 27
    iput-object v0, p0, Lcom/gemini/play/AppsActivity;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/AppsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/AppsActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gemini/play/AppsActivity;->mApps:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f090022

    invoke-virtual {p0, v1}, Lcom/gemini/play/AppsActivity;->setContentView(I)V

    .line 33
    const v1, 0x7f0700a9

    invoke-virtual {p0, v1}, Lcom/gemini/play/AppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    .line 42
    .local v6, "gridview":Landroid/widget/GridView;
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v9, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 43
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0}, Lcom/gemini/play/AppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v9, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/gemini/play/AppsActivity;->mApps:Ljava/util/List;

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v2, "lstImageItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v1, p0, Lcom/gemini/play/AppsActivity;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 48
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/gemini/play/AppsActivity;->mApps:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 50
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    const-string v3, "ItemImage"

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/gemini/play/AppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v10, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "ItemText"

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/gemini/play/AppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 55
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f090021

    new-array v4, v11, [Ljava/lang/String;

    const-string v1, "ItemImage"

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string v5, "ItemText"

    aput-object v5, v4, v1

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 59
    .local v0, "saImageItems":Landroid/widget/SimpleAdapter;
    new-instance v1, Lcom/gemini/play/AppsActivity$1;

    invoke-direct {v1, p0}, Lcom/gemini/play/AppsActivity$1;-><init>(Lcom/gemini/play/AppsActivity;)V

    iput-object v1, p0, Lcom/gemini/play/AppsActivity;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 71
    iget-object v1, p0, Lcom/gemini/play/AppsActivity;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    new-instance v1, Lcom/gemini/play/AppsActivity$2;

    invoke-direct {v1, p0}, Lcom/gemini/play/AppsActivity$2;-><init>(Lcom/gemini/play/AppsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 88
    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    return-void

    .line 55
    nop

    :array_0
    .array-data 4
        0x7f07000c
        0x7f070018
    .end array-data
.end method
