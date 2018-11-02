.class public Lcom/gemini/play/MyLiveCollectView;
.super Ljava/lang/Object;
.source "MyLiveCollectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/play/MyLiveCollectView$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DB_CREATE:Ljava/lang/String; = "create table collectlive(_id integer primary key autoincrement, urlid text, image BLOB, url text, name text, password text, type text, source text, introid text)"

.field private static final DB_NAME:Ljava/lang/String; = "collectlive.db"

.field private static final DB_TABLE:Ljava/lang/String; = "collectlive"

.field private static final DB_VERSION:I = 0x1

.field private static dialog:Landroid/app/AlertDialog;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

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

.field private mDatabaseHelper:Lcom/gemini/play/MyLiveCollectView$DatabaseHelper;

.field private mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/gemini/play/MyLiveCollectView;->dialog:Landroid/app/AlertDialog;

    .line 53
    sput-object v0, Lcom/gemini/play/MyLiveCollectView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/gemini/play/MyLiveCollectView;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    iput-object v1, p0, Lcom/gemini/play/MyLiveCollectView;->mDatabaseHelper:Lcom/gemini/play/MyLiveCollectView$DatabaseHelper;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyLiveCollectView;->list:Ljava/util/ArrayList;

    .line 56
    iput-object v1, p0, Lcom/gemini/play/MyLiveCollectView;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyLiveCollectView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyLiveCollectView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/gemini/play/MyLiveCollectView;->save_collect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/gemini/play/MyLiveCollectView;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyLiveCollectView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/gemini/play/MyLiveCollectView;->show_list()V

    return-void
.end method

.method static synthetic access$200()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/gemini/play/MyLiveCollectView;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gemini/play/MyLiveCollectView;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyLiveCollectView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/MyLiveCollectView;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method private save_collect(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save collect id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 181
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/gemini/play/LIVEplayer;->getStatus(I)Lcom/gemini/play/UrlStatus;

    move-result-object v2

    .line 184
    .local v2, "s":Lcom/gemini/play/UrlStatus;
    invoke-virtual {p0, v2}, Lcom/gemini/play/MyLiveCollectView;->insert(Lcom/gemini/play/UrlStatus;)J

    move-result-wide v0

    .line 185
    .local v0, "ret":J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 187
    sget-object v3, Lcom/gemini/play/MyLiveCollectView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/gemini/play/MyLiveCollectView;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0034

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 190
    .end local v0    # "ret":J
    .end local v2    # "s":Lcom/gemini/play/UrlStatus;
    :cond_0
    return-void
.end method

.method private show_list()V
    .locals 6

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->parseAll()Ljava/util/ArrayList;

    move-result-object v3

    .line 220
    .local v3, "xlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/UrlStatus;>;"
    if-nez v3, :cond_0

    .line 241
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v4, p0, Lcom/gemini/play/MyLiveCollectView;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 225
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 227
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/UrlStatus;

    .line 228
    .local v2, "s":Lcom/gemini/play/UrlStatus;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, v2, Lcom/gemini/play/UrlStatus;->imagebit:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 230
    const-string v4, "ItemView"

    iget-object v5, v2, Lcom/gemini/play/UrlStatus;->imagebit:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :goto_2
    const-string v4, "ItemTitle"

    iget-object v5, v2, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v4, "ItemId"

    iget v5, v2, Lcom/gemini/play/UrlStatus;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v4, "ItemUrl"

    iget-object v5, v2, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v4, "ItemPassword"

    iget-object v5, v2, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v4, p0, Lcom/gemini/play/MyLiveCollectView;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    :cond_1
    const-string v4, "ItemView"

    const v5, 0x7f0a004e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 240
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "s":Lcom/gemini/play/UrlStatus;
    :cond_2
    iget-object v4, p0, Lcom/gemini/play/MyLiveCollectView;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    invoke-virtual {v4}, Lcom/gemini/play/MySimpleAdapterLiveListView;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/gemini/play/MyLiveCollectView;->mDatabaseHelper:Lcom/gemini/play/MyLiveCollectView$DatabaseHelper;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/gemini/play/MyLiveCollectView;->mDatabaseHelper:Lcom/gemini/play/MyLiveCollectView$DatabaseHelper;

    invoke-virtual {v0}, Lcom/gemini/play/MyLiveCollectView$DatabaseHelper;->close()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gemini/play/MyLiveCollectView;->mDatabaseHelper:Lcom/gemini/play/MyLiveCollectView$DatabaseHelper;

    .line 283
    :cond_0
    return-void
.end method

.method public deleteData(I)Z
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->open()V

    .line 321
    iget-object v2, p0, Lcom/gemini/play/MyLiveCollectView;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "collectlive"

    const-string v4, "urlid=?"

    new-array v5, v0, [Ljava/lang/String;

    const-string v6, "%03d"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 322
    .local v0, "ret":Z
    :goto_0
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->close()V

    .line 323
    return v0

    .end local v0    # "ret":Z
    :cond_0
    move v0, v1

    .line 321
    goto :goto_0
.end method

.method public fetchAllData()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 328
    iget-object v0, p0, Lcom/gemini/play/MyLiveCollectView;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "collectlive"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "urlid"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "image"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "url"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "password"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "source"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "introid"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 333
    iget-object v0, p0, Lcom/gemini/play/MyLiveCollectView;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "collectlive"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v7

    const-string v4, "urlid"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v5, "image"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "password"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "source"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "introid"

    aput-object v5, v3, v4

    const-string v4, "urlid=?"

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v7

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 337
    .local v10, "mCursor":Landroid/database/Cursor;
    return-object v10
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;)Lcom/gemini/play/UrlStatus;
    .locals 7
    .param p1, "_this"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 373
    sput-object p1, Lcom/gemini/play/MyLiveCollectView;->mContext:Landroid/content/Context;

    .line 376
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->open()V

    .line 379
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->fetchAllData()Landroid/database/Cursor;

    move-result-object v0

    .line 380
    .local v0, "cur":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->close()V

    move-object v3, v4

    .line 436
    :goto_0
    return-object v3

    .line 386
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3

    .line 388
    new-instance v3, Lcom/gemini/play/UrlStatus;

    invoke-direct {v3}, Lcom/gemini/play/UrlStatus;-><init>()V

    .line 390
    .local v3, "s":Lcom/gemini/play/UrlStatus;
    const-string v5, "url"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    .line 391
    const-string v5, "image"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 392
    .local v2, "in":[B
    if-eqz v2, :cond_1

    .line 393
    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v3, Lcom/gemini/play/UrlStatus;->imagebit:Landroid/graphics/Bitmap;

    .line 395
    :cond_1
    const-string v5, "urlid"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "getid":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/gemini/play/UrlStatus;->id:I

    .line 397
    const-string v5, "name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    .line 398
    const-string v5, "password"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    .line 399
    const-string v5, "type"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    .line 400
    const-string v5, "source"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gemini/play/UrlStatus;->source:Ljava/lang/String;

    .line 401
    const-string v5, "introid"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gemini/play/UrlStatus;->introid:Ljava/lang/String;

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 406
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->close()V

    goto/16 :goto_0

    .line 409
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "collect get name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/gemini/play/UrlStatus;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 386
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 434
    .end local v1    # "getid":Ljava/lang/String;
    .end local v2    # "in":[B
    .end local v3    # "s":Lcom/gemini/play/UrlStatus;
    :cond_3
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->close()V

    move-object v3, v4

    .line 436
    goto/16 :goto_0
.end method

.method public init_list()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 194
    new-instance v0, Lcom/gemini/play/MySimpleAdapterLiveListView;

    sget-object v1, Lcom/gemini/play/MyLiveCollectView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyLiveCollectView;->list:Ljava/util/ArrayList;

    const v3, 0x7f09003f

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

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterLiveListView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyLiveCollectView;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    .line 199
    iget-object v0, p0, Lcom/gemini/play/MyLiveCollectView;->listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/gemini/play/MyLiveCollectView;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v0, p0, Lcom/gemini/play/MyLiveCollectView;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    new-instance v1, Lcom/gemini/play/MyLiveCollectView$7;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyLiveCollectView$7;-><init>(Lcom/gemini/play/MyLiveCollectView;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterLiveListView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 215
    return-void

    .line 194
    :array_0
    .array-data 4
        0x7f070022
        0x7f07000b
        0x7f07001a
        0x7f070025
    .end array-data
.end method

.method public inserDataNoreRepeat(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "urlid"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/Bitmap;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "source"    # Ljava/lang/String;
    .param p8, "introid"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/gemini/play/MyLiveCollectView;->fetchData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 308
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 311
    :cond_0
    invoke-virtual/range {p0 .. p8}, Lcom/gemini/play/MyLiveCollectView;->insertData(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 315
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public insert(Lcom/gemini/play/UrlStatus;)J
    .locals 14
    .param p1, "s"    # Lcom/gemini/play/UrlStatus;

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->open()V

    .line 445
    const-string v0, "%03d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p1, Lcom/gemini/play/UrlStatus;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "urlid":Ljava/lang/String;
    iget-object v4, p1, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    .line 447
    .local v4, "name":Ljava/lang/String;
    iget-object v2, p1, Lcom/gemini/play/UrlStatus;->imagebit:Landroid/graphics/Bitmap;

    .line 448
    .local v2, "image":Landroid/graphics/Bitmap;
    iget-object v3, p1, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    .line 449
    .local v3, "url":Ljava/lang/String;
    iget-object v5, p1, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    .line 450
    .local v5, "password":Ljava/lang/String;
    iget-object v6, p1, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    .line 451
    .local v6, "type":Ljava/lang/String;
    iget-object v7, p1, Lcom/gemini/play/UrlStatus;->source:Ljava/lang/String;

    .line 452
    .local v7, "source":Ljava/lang/String;
    iget-object v8, p1, Lcom/gemini/play/UrlStatus;->introid:Ljava/lang/String;

    .local v8, "introid":Ljava/lang/String;
    move-object v0, p0

    .line 454
    invoke-virtual/range {v0 .. v8}, Lcom/gemini/play/MyLiveCollectView;->inserDataNoreRepeat(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 456
    .local v10, "ret":J
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->close()V

    .line 458
    return-wide v10
.end method

.method public insertData(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p1, "urlid"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/Bitmap;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "source"    # Ljava/lang/String;
    .param p8, "introid"    # Ljava/lang/String;

    .prologue
    .line 287
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 288
    .local v0, "initialValues":Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    .line 290
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 291
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 292
    const-string v2, "image"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 295
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const-string v2, "urlid"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v2, "url"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v2, "name"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v2, "password"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v2, "type"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v2, "source"

    invoke-virtual {v0, v2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v2, "introid"

    invoke-virtual {v0, v2, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/gemini/play/MyLiveCollectView;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "collectlive"

    const-string v4, "_id"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public open()V
    .locals 5

    .prologue
    .line 271
    new-instance v0, Lcom/gemini/play/MyLiveCollectView$DatabaseHelper;

    sget-object v1, Lcom/gemini/play/MyLiveCollectView;->mContext:Landroid/content/Context;

    const-string v2, "collectlive.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gemini/play/MyLiveCollectView$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/gemini/play/MyLiveCollectView;->mDatabaseHelper:Lcom/gemini/play/MyLiveCollectView$DatabaseHelper;

    .line 272
    iget-object v0, p0, Lcom/gemini/play/MyLiveCollectView;->mDatabaseHelper:Lcom/gemini/play/MyLiveCollectView$DatabaseHelper;

    invoke-virtual {v0}, Lcom/gemini/play/MyLiveCollectView$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MyLiveCollectView;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 274
    return-void
.end method

.method public parseAll()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/UrlStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    sget-object v0, Lcom/gemini/play/MyLiveCollectView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyLiveCollectView;->parseAll(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parseAll(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "_this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/UrlStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    sput-object p1, Lcom/gemini/play/MyLiveCollectView;->mContext:Landroid/content/Context;

    .line 470
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->open()V

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v0, "collectArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/UrlStatus;>;"
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->fetchAllData()Landroid/database/Cursor;

    move-result-object v1

    .line 473
    .local v1, "cur":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->close()V

    .line 476
    const/4 v0, 0x0

    .line 500
    .end local v0    # "collectArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/UrlStatus;>;"
    :goto_0
    return-object v0

    .line 479
    .restart local v0    # "collectArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/UrlStatus;>;"
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 481
    new-instance v3, Lcom/gemini/play/UrlStatus;

    invoke-direct {v3}, Lcom/gemini/play/UrlStatus;-><init>()V

    .line 483
    .local v3, "s":Lcom/gemini/play/UrlStatus;
    const-string v4, "url"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    .line 484
    const-string v4, "image"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 485
    .local v2, "in":[B
    if-eqz v2, :cond_1

    .line 486
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/gemini/play/UrlStatus;->imagebit:Landroid/graphics/Bitmap;

    .line 488
    :cond_1
    const-string v4, "urlid"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/gemini/play/UrlStatus;->id:I

    .line 489
    const-string v4, "name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    .line 490
    const-string v4, "password"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    .line 491
    const-string v4, "type"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    .line 492
    const-string v4, "source"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/gemini/play/UrlStatus;->source:Ljava/lang/String;

    .line 493
    const-string v4, "introid"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/gemini/play/UrlStatus;->introid:Ljava/lang/String;

    .line 495
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 498
    .end local v2    # "in":[B
    .end local v3    # "s":Lcom/gemini/play/UrlStatus;
    :cond_2
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->close()V

    goto/16 :goto_0
.end method

.method public showView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "_this"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/high16 v9, 0x40e00000    # 7.0f

    .line 61
    sput-object p1, Lcom/gemini/play/MyLiveCollectView;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 64
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v6, 0x7f090046

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "collectActivity":Landroid/view/View;
    const v6, 0x7f070080

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 67
    .local v3, "okbutton":Landroid/widget/Button;
    const v6, 0x7f07007e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 68
    .local v0, "cancelbutton":Landroid/widget/Button;
    const v6, 0x7f07007f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/gemini/play/MyLiveCollectView;->listview:Landroid/widget/ListView;

    .line 69
    iget-object v6, p0, Lcom/gemini/play/MyLiveCollectView;->listview:Landroid/widget/ListView;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 72
    .local v5, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v4

    .line 73
    .local v4, "rate":F
    mul-float v6, v9, v4

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 74
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    mul-float v6, v9, v4

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 76
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    new-instance v6, Lcom/gemini/play/MyLiveCollectView$1;

    invoke-direct {v6, p0, p2}, Lcom/gemini/play/MyLiveCollectView$1;-><init>(Lcom/gemini/play/MyLiveCollectView;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v6, Lcom/gemini/play/MyLiveCollectView$2;

    invoke-direct {v6, p0}, Lcom/gemini/play/MyLiveCollectView$2;-><init>(Lcom/gemini/play/MyLiveCollectView;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 99
    new-instance v6, Lcom/gemini/play/MyLiveCollectView$3;

    invoke-direct {v6, p0}, Lcom/gemini/play/MyLiveCollectView$3;-><init>(Lcom/gemini/play/MyLiveCollectView;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v6, Lcom/gemini/play/MyLiveCollectView$4;

    invoke-direct {v6, p0}, Lcom/gemini/play/MyLiveCollectView$4;-><init>(Lcom/gemini/play/MyLiveCollectView;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 118
    iget-object v6, p0, Lcom/gemini/play/MyLiveCollectView;->listview:Landroid/widget/ListView;

    new-instance v7, Lcom/gemini/play/MyLiveCollectView$5;

    invoke-direct {v7, p0, p1}, Lcom/gemini/play/MyLiveCollectView$5;-><init>(Lcom/gemini/play/MyLiveCollectView;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 153
    iget-object v6, p0, Lcom/gemini/play/MyLiveCollectView;->listview:Landroid/widget/ListView;

    new-instance v7, Lcom/gemini/play/MyLiveCollectView$6;

    invoke-direct {v7, p0, p1}, Lcom/gemini/play/MyLiveCollectView$6;-><init>(Lcom/gemini/play/MyLiveCollectView;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 169
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    sput-object v6, Lcom/gemini/play/MyLiveCollectView;->dialog:Landroid/app/AlertDialog;

    .line 170
    sget-object v6, Lcom/gemini/play/MyLiveCollectView;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    sget v7, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v7, v7, 0x5

    mul-int/lit8 v7, v7, 0x2

    sget v8, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v8, v8, 0x5

    mul-int/lit8 v8, v8, 0x4

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setLayout(II)V

    .line 171
    sget-object v6, Lcom/gemini/play/MyLiveCollectView;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 173
    invoke-virtual {p0}, Lcom/gemini/play/MyLiveCollectView;->init_list()V

    .line 175
    invoke-direct {p0}, Lcom/gemini/play/MyLiveCollectView;->show_list()V

    .line 176
    return-void
.end method

.method public updateData(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "urlid"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/Bitmap;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "source"    # Ljava/lang/String;
    .param p8, "introid"    # Ljava/lang/String;

    .prologue
    .line 343
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v1, "initialValues":Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    .line 346
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 347
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 348
    const-string v4, "image"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 351
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const-string v4, "urlid"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v4, "url"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v4, "name"

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v4, "password"

    invoke-virtual {v1, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v4, "type"

    invoke-virtual {v1, v4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v4, "source"

    move-object/from16 v0, p7

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v4, "introid"

    move-object/from16 v0, p8

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v4, p0, Lcom/gemini/play/MyLiveCollectView;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "collectlive"

    const-string v6, "urlid=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v3, 0x1

    .line 361
    .local v3, "ret":Z
    :goto_0
    return v3

    .line 359
    .end local v3    # "ret":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
