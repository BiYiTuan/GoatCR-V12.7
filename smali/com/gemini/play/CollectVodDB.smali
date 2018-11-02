.class public Lcom/gemini/play/CollectVodDB;
.super Ljava/lang/Object;
.source "CollectVodDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/play/CollectVodDB$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DB_CREATE:Ljava/lang/String; = "create table collectvod(_id integer primary key autoincrement, image BLOB, url text, name text, area text, year text, type text, intro1 text, intro2 text, intro3 text, intro4 text, vodid integer, clickrate integer, recommend integer, chage real, updatetime int, infotype int)"

.field private static final DB_NAME:Ljava/lang/String; = "collectvod.db"

.field private static final DB_TABLE:Ljava/lang/String; = "collectvod"

.field private static final DB_VERSION:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/gemini/play/CollectVodDB$DatabaseHelper;

.field private mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/gemini/play/CollectVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    iput-object v0, p0, Lcom/gemini/play/CollectVodDB;->mDatabaseHelper:Lcom/gemini/play/CollectVodDB$DatabaseHelper;

    .line 30
    iput-object v0, p0, Lcom/gemini/play/CollectVodDB;->mContext:Landroid/content/Context;

    .line 57
    iput-object p1, p0, Lcom/gemini/play/CollectVodDB;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/gemini/play/CollectVodDB;->mDatabaseHelper:Lcom/gemini/play/CollectVodDB$DatabaseHelper;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/gemini/play/CollectVodDB;->mDatabaseHelper:Lcom/gemini/play/CollectVodDB$DatabaseHelper;

    invoke-virtual {v0}, Lcom/gemini/play/CollectVodDB$DatabaseHelper;->close()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gemini/play/CollectVodDB;->mDatabaseHelper:Lcom/gemini/play/CollectVodDB$DatabaseHelper;

    .line 76
    :cond_0
    return-void
.end method

.method public deleteData(I)Z
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/gemini/play/CollectVodDB;->open()V

    .line 128
    iget-object v2, p0, Lcom/gemini/play/CollectVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "collectvod"

    const-string v4, "vodid=?"

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 129
    .local v0, "value":Z
    :goto_0
    invoke-virtual {p0}, Lcom/gemini/play/CollectVodDB;->close()V

    .line 131
    return v0

    .end local v0    # "value":Z
    :cond_0
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public fetchAllData()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lcom/gemini/play/CollectVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "collectvod"

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "image"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "url"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "area"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "year"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "intro1"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "intro2"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string v5, "intro3"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string v5, "intro4"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string v5, "vodid"

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string v5, "clickrate"

    aput-object v5, v2, v4

    const/16 v4, 0xd

    const-string v5, "recommend"

    aput-object v5, v2, v4

    const/16 v4, 0xe

    const-string v5, "chage"

    aput-object v5, v2, v4

    const/16 v4, 0xf

    const-string v5, "updatetime"

    aput-object v5, v2, v4

    const/16 v4, 0x10

    const-string v5, "infotype"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchData(II)Landroid/database/Cursor;
    .locals 12
    .param p1, "id"    # I
    .param p2, "infotype"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 143
    iget-object v0, p0, Lcom/gemini/play/CollectVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "collectvod"

    const/16 v3, 0x11

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v8

    const-string v4, "image"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "area"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "year"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "intro1"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "intro2"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "intro3"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "intro4"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "vodid"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "clickrate"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "recommend"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "chage"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "updatetime"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "infotype"

    aput-object v5, v3, v4

    const-string v4, "vodid=?"

    new-array v5, v1, [Ljava/lang/String;

    .line 146
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    .line 143
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 147
    .local v10, "mCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 150
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    const-string v0, "infotype"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 153
    .local v11, "v":I
    if-ne v11, p2, :cond_0

    .line 158
    .end local v10    # "mCursor":Landroid/database/Cursor;
    .end local v11    # "v":I
    :goto_1
    return-object v10

    .line 150
    .restart local v10    # "mCursor":Landroid/database/Cursor;
    .restart local v11    # "v":I
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .end local v11    # "v":I
    :cond_1
    move-object v10, v6

    .line 158
    goto :goto_1
.end method

.method public get(II)Lcom/gemini/play/VodListStatus;
    .locals 5
    .param p1, "id"    # I
    .param p2, "infotype"    # I

    .prologue
    .line 201
    new-instance v2, Lcom/gemini/play/VodListStatus;

    invoke-direct {v2}, Lcom/gemini/play/VodListStatus;-><init>()V

    .line 202
    .local v2, "s":Lcom/gemini/play/VodListStatus;
    invoke-virtual {p0}, Lcom/gemini/play/CollectVodDB;->open()V

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/gemini/play/CollectVodDB;->fetchData(II)Landroid/database/Cursor;

    move-result-object v0

    .line 204
    .local v0, "cur":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/gemini/play/CollectVodDB;->close()V

    .line 207
    const/4 v2, 0x0

    .line 231
    .end local v2    # "s":Lcom/gemini/play/VodListStatus;
    :goto_0
    return-object v2

    .line 209
    .restart local v2    # "s":Lcom/gemini/play/VodListStatus;
    :cond_0
    const-string v3, "url"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    .line 210
    const-string v3, "image"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 211
    .local v1, "in":[B
    if-eqz v1, :cond_1

    .line 212
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    .line 214
    :cond_1
    const-string v3, "name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    .line 215
    const-string v3, "area"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->area:Ljava/lang/String;

    .line 216
    const-string v3, "year"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->year:Ljava/lang/String;

    .line 217
    const-string v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->type:Ljava/lang/String;

    .line 218
    const-string v3, "intro1"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->intro1:Ljava/lang/String;

    .line 219
    const-string v3, "intro2"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->intro2:Ljava/lang/String;

    .line 220
    const-string v3, "intro3"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->intro3:Ljava/lang/String;

    .line 221
    const-string v3, "intro4"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->intro4:Ljava/lang/String;

    .line 222
    const-string v3, "vodid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/gemini/play/VodListStatus;->id:I

    .line 223
    const-string v3, "clickrate"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/gemini/play/VodListStatus;->clickrate:I

    .line 224
    const-string v3, "recommend"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/gemini/play/VodListStatus;->recommend:I

    .line 225
    const-string v3, "chage"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    iput v3, v2, Lcom/gemini/play/VodListStatus;->chage:F

    .line 226
    const-string v3, "updatetime"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/gemini/play/VodListStatus;->updatetime:I

    .line 227
    const-string v3, "infotype"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/gemini/play/VodListStatus;->infotype:I

    .line 229
    invoke-virtual {p0}, Lcom/gemini/play/CollectVodDB;->close()V

    goto/16 :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/gemini/play/VodListStatus;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "infotype"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/CollectVodDB;->get(II)Lcom/gemini/play/VodListStatus;

    move-result-object v0

    return-object v0
.end method

.method public inserDataNoreRepeat(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFII)J
    .locals 6
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "area"    # Ljava/lang/String;
    .param p5, "year"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "intro1"    # Ljava/lang/String;
    .param p8, "intro2"    # Ljava/lang/String;
    .param p9, "intro3"    # Ljava/lang/String;
    .param p10, "intro4"    # Ljava/lang/String;
    .param p11, "id"    # I
    .param p12, "clickrate"    # I
    .param p13, "recommend"    # I
    .param p14, "chage"    # F
    .param p15, "updatetime"    # I
    .param p16, "infotype"    # I

    .prologue
    .line 112
    move/from16 v0, p11

    move/from16 v1, p16

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/CollectVodDB;->fetchData(II)Landroid/database/Cursor;

    move-result-object v2

    .line 113
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 116
    :cond_0
    invoke-virtual/range {p0 .. p16}, Lcom/gemini/play/CollectVodDB;->insertData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFII)J

    move-result-wide v4

    .line 122
    :goto_0
    return-wide v4

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public insert(Lcom/gemini/play/VodListStatus;Landroid/graphics/Bitmap;I)J
    .locals 22
    .param p1, "s"    # Lcom/gemini/play/VodListStatus;
    .param p2, "bit"    # Landroid/graphics/Bitmap;
    .param p3, "t"    # I

    .prologue
    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/CollectVodDB;->open()V

    .line 240
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    .line 241
    .local v5, "name":Ljava/lang/String;
    move-object/from16 v3, p2

    .line 242
    .local v3, "image":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    .line 243
    .local v4, "url":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/gemini/play/VodListStatus;->area:Ljava/lang/String;

    .line 244
    .local v6, "area":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/gemini/play/VodListStatus;->year:Ljava/lang/String;

    .line 245
    .local v7, "year":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/gemini/play/VodListStatus;->type:Ljava/lang/String;

    .line 246
    .local v8, "type":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/gemini/play/VodListStatus;->intro1:Ljava/lang/String;

    .line 247
    .local v9, "intro1":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/gemini/play/VodListStatus;->intro2:Ljava/lang/String;

    .line 248
    .local v10, "intro2":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/gemini/play/VodListStatus;->intro3:Ljava/lang/String;

    .line 249
    .local v11, "intro3":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/gemini/play/VodListStatus;->intro4:Ljava/lang/String;

    .line 250
    .local v12, "intro4":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/gemini/play/VodListStatus;->id:I

    .line 251
    .local v13, "id":I
    move-object/from16 v0, p1

    iget v14, v0, Lcom/gemini/play/VodListStatus;->clickrate:I

    .line 252
    .local v14, "clickrate":I
    move-object/from16 v0, p1

    iget v15, v0, Lcom/gemini/play/VodListStatus;->recommend:I

    .line 253
    .local v15, "recommend":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/gemini/play/VodListStatus;->chage:F

    move/from16 v16, v0

    .line 254
    .local v16, "chage":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/gemini/play/VodListStatus;->updatetime:I

    move/from16 v17, v0

    .line 255
    .local v17, "updatetime":I
    move/from16 v18, p3

    .local v18, "infotype":I
    move-object/from16 v2, p0

    .line 257
    invoke-virtual/range {v2 .. v18}, Lcom/gemini/play/CollectVodDB;->inserDataNoreRepeat(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFII)J

    move-result-wide v20

    .line 260
    .local v20, "ret":J
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/CollectVodDB;->close()V

    .line 262
    return-wide v20
.end method

.method public insertData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFII)J
    .locals 5
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "area"    # Ljava/lang/String;
    .param p5, "year"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "intro1"    # Ljava/lang/String;
    .param p8, "intro2"    # Ljava/lang/String;
    .param p9, "intro3"    # Ljava/lang/String;
    .param p10, "intro4"    # Ljava/lang/String;
    .param p11, "id"    # I
    .param p12, "clickrate"    # I
    .param p13, "recommend"    # I
    .param p14, "chage"    # F
    .param p15, "updatetime"    # I
    .param p16, "info_type"    # I

    .prologue
    .line 82
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v0, "initialValues":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 85
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 87
    const-string v2, "image"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 90
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const-string v2, "url"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "name"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "area"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "year"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "type"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "intro1"

    invoke-virtual {v0, v2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "intro2"

    invoke-virtual {v0, v2, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "intro3"

    invoke-virtual {v0, v2, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "intro4"

    invoke-virtual {v0, v2, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "vodid"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v2, "clickrate"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v2, "recommend"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v2, "chage"

    invoke-static/range {p14 .. p14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 103
    const-string v2, "updatetime"

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v2, "infotype"

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    iget-object v2, p0, Lcom/gemini/play/CollectVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "collectvod"

    const-string v4, "_id"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public open()V
    .locals 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/gemini/play/CollectVodDB;->mDatabaseHelper:Lcom/gemini/play/CollectVodDB$DatabaseHelper;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/gemini/play/CollectVodDB$DatabaseHelper;

    iget-object v1, p0, Lcom/gemini/play/CollectVodDB;->mContext:Landroid/content/Context;

    const-string v2, "collectvod.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gemini/play/CollectVodDB$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/gemini/play/CollectVodDB;->mDatabaseHelper:Lcom/gemini/play/CollectVodDB$DatabaseHelper;

    .line 65
    iget-object v0, p0, Lcom/gemini/play/CollectVodDB;->mDatabaseHelper:Lcom/gemini/play/CollectVodDB$DatabaseHelper;

    invoke-virtual {v0}, Lcom/gemini/play/CollectVodDB$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/CollectVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    :cond_0
    return-void
.end method

.method public parseAll()Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/VodListStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/CollectVodDB;->open()V

    .line 268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v2, "VodCollectArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/CollectVodDB;->fetchAllData()Landroid/database/Cursor;

    move-result-object v6

    .line 270
    .local v6, "cur":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/CollectVodDB;->close()V

    .line 273
    const/4 v2, 0x0

    .line 321
    .end local v2    # "VodCollectArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    :goto_0
    return-object v2

    .line 276
    .restart local v2    # "VodCollectArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v22

    if-nez v22, :cond_2

    .line 278
    const-string v22, "url"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 279
    .local v20, "url":Ljava/lang/String;
    const-string v22, "image"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 280
    .local v9, "in":[B
    const/4 v8, 0x0

    .line 281
    .local v8, "image":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_1

    .line 282
    const/16 v22, 0x0

    array-length v0, v9

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v9, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 283
    :cond_1
    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 284
    .local v15, "name":Ljava/lang/String;
    const-string v22, "area"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "area":Ljava/lang/String;
    const-string v22, "year"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 286
    .local v21, "year":Ljava/lang/String;
    const-string v22, "type"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 287
    .local v18, "type":Ljava/lang/String;
    const-string v22, "intro1"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 288
    .local v11, "intro1":Ljava/lang/String;
    const-string v22, "intro2"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 289
    .local v12, "intro2":Ljava/lang/String;
    const-string v22, "intro3"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 290
    .local v13, "intro3":Ljava/lang/String;
    const-string v22, "intro4"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 291
    .local v14, "intro4":Ljava/lang/String;
    const-string v22, "vodid"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 292
    .local v7, "id":I
    const-string v22, "clickrate"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 293
    .local v5, "clickrate":I
    const-string v22, "recommend"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 294
    .local v16, "recommend":I
    const-string v22, "chage"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    .line 295
    .local v4, "chage":F
    const-string v22, "updatetime"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 296
    .local v19, "updatetime":I
    const-string v22, "infotype"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 298
    .local v10, "infotype":I
    new-instance v17, Lcom/gemini/play/VodListStatus;

    invoke-direct/range {v17 .. v17}, Lcom/gemini/play/VodListStatus;-><init>()V

    .line 299
    .local v17, "s":Lcom/gemini/play/VodListStatus;
    move-object/from16 v0, v17

    iput-object v15, v0, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    .line 300
    move-object/from16 v0, v17

    iput-object v8, v0, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    .line 301
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    .line 302
    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/gemini/play/VodListStatus;->area:Ljava/lang/String;

    .line 303
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->year:Ljava/lang/String;

    .line 304
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->type:Ljava/lang/String;

    .line 305
    move-object/from16 v0, v17

    iput-object v11, v0, Lcom/gemini/play/VodListStatus;->intro1:Ljava/lang/String;

    .line 306
    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/gemini/play/VodListStatus;->intro2:Ljava/lang/String;

    .line 307
    move-object/from16 v0, v17

    iput-object v13, v0, Lcom/gemini/play/VodListStatus;->intro3:Ljava/lang/String;

    .line 308
    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/gemini/play/VodListStatus;->intro4:Ljava/lang/String;

    .line 309
    move-object/from16 v0, v17

    iput v7, v0, Lcom/gemini/play/VodListStatus;->id:I

    .line 310
    move-object/from16 v0, v17

    iput v5, v0, Lcom/gemini/play/VodListStatus;->clickrate:I

    .line 311
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Lcom/gemini/play/VodListStatus;->recommend:I

    .line 312
    move-object/from16 v0, v17

    iput v4, v0, Lcom/gemini/play/VodListStatus;->chage:F

    .line 313
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/gemini/play/VodListStatus;->updatetime:I

    .line 314
    move-object/from16 v0, v17

    iput v10, v0, Lcom/gemini/play/VodListStatus;->infotype:I

    .line 316
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 319
    .end local v3    # "area":Ljava/lang/String;
    .end local v4    # "chage":F
    .end local v5    # "clickrate":I
    .end local v7    # "id":I
    .end local v8    # "image":Landroid/graphics/Bitmap;
    .end local v9    # "in":[B
    .end local v10    # "infotype":I
    .end local v11    # "intro1":Ljava/lang/String;
    .end local v12    # "intro2":Ljava/lang/String;
    .end local v13    # "intro3":Ljava/lang/String;
    .end local v14    # "intro4":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "recommend":I
    .end local v17    # "s":Lcom/gemini/play/VodListStatus;
    .end local v18    # "type":Ljava/lang/String;
    .end local v19    # "updatetime":I
    .end local v20    # "url":Ljava/lang/String;
    .end local v21    # "year":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/CollectVodDB;->close()V

    goto/16 :goto_0
.end method

.method public parseSize()I
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/gemini/play/CollectVodDB;->open()V

    .line 328
    invoke-virtual {p0}, Lcom/gemini/play/CollectVodDB;->fetchAllData()Landroid/database/Cursor;

    move-result-object v0

    .line 329
    .local v0, "cur":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/gemini/play/CollectVodDB;->close()V

    .line 332
    const/4 v1, 0x0

    .line 338
    :goto_0
    return v1

    .line 335
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 336
    .local v1, "size":I
    invoke-virtual {p0}, Lcom/gemini/play/CollectVodDB;->close()V

    goto :goto_0
.end method

.method public updateData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFI)Z
    .locals 10
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "area"    # Ljava/lang/String;
    .param p5, "year"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "intro1"    # Ljava/lang/String;
    .param p8, "intro2"    # Ljava/lang/String;
    .param p9, "intro3"    # Ljava/lang/String;
    .param p10, "intro4"    # Ljava/lang/String;
    .param p11, "id"    # I
    .param p12, "clickrate"    # I
    .param p13, "recommend"    # I
    .param p14, "chage"    # F
    .param p15, "updatetime"    # I

    .prologue
    .line 166
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v1, "initialValues":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 169
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 170
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 171
    const-string v4, "image"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 174
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const-string v4, "url"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v4, "name"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v4, "area"

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v4, "year"

    invoke-virtual {v1, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v4, "type"

    move-object/from16 v0, p6

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v4, "intro1"

    move-object/from16 v0, p7

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v4, "intro2"

    move-object/from16 v0, p8

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v4, "intro3"

    move-object/from16 v0, p9

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v4, "intro4"

    move-object/from16 v0, p10

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v4, "vodid"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    const-string v4, "clickrate"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v4, "recommend"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v4, "chage"

    invoke-static/range {p14 .. p14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 187
    const-string v4, "updatetime"

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    iget-object v4, p0, Lcom/gemini/play/CollectVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "collectvod"

    const-string v6, "vodid=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p11 .. p11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v3, 0x1

    .line 191
    .local v3, "ret":Z
    :goto_0
    return v3

    .line 189
    .end local v3    # "ret":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
