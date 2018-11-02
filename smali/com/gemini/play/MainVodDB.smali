.class public Lcom/gemini/play/MainVodDB;
.super Ljava/lang/Object;
.source "MainVodDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/play/MainVodDB$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DB_CREATE:Ljava/lang/String; = "create table mainvod(_id integer primary key autoincrement, image BLOB, url text, name text, area text, year text, type text, intro1 text, intro2 text, intro3 text, intro4 text, vodid integer, clickrate integer, recommend integer, chage real, updatetime int, infotype int)"

.field private static final DB_NAME:Ljava/lang/String; = "mainvod.db"

.field private static final DB_TABLE:Ljava/lang/String; = "mainvod"

.field private static final DB_VERSION:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/gemini/play/MainVodDB$DatabaseHelper;

.field private mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/gemini/play/MainVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    iput-object v0, p0, Lcom/gemini/play/MainVodDB;->mDatabaseHelper:Lcom/gemini/play/MainVodDB$DatabaseHelper;

    .line 32
    iput-object v0, p0, Lcom/gemini/play/MainVodDB;->mContext:Landroid/content/Context;

    .line 60
    iput-object p1, p0, Lcom/gemini/play/MainVodDB;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public static tabbleIsExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, "result":Z
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return v4

    .line 140
    :cond_0
    const/4 v1, 0x0

    .line 142
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select count(*) as c from Sqlite_master  where type =\'table\' and name =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 146
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 147
    const/4 v2, 0x1

    .end local v0    # "count":I
    .end local v3    # "sql":Ljava/lang/String;
    :cond_1
    :goto_1
    move v4, v2

    .line 154
    goto :goto_0

    .line 151
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/gemini/play/MainVodDB;->mDatabaseHelper:Lcom/gemini/play/MainVodDB$DatabaseHelper;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/gemini/play/MainVodDB;->mDatabaseHelper:Lcom/gemini/play/MainVodDB$DatabaseHelper;

    invoke-virtual {v0}, Lcom/gemini/play/MainVodDB$DatabaseHelper;->close()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gemini/play/MainVodDB;->mDatabaseHelper:Lcom/gemini/play/MainVodDB$DatabaseHelper;

    .line 79
    :cond_0
    return-void
.end method

.method public deleteData(I)Z
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/gemini/play/MainVodDB;->open()V

    .line 160
    iget-object v2, p0, Lcom/gemini/play/MainVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "mainvod"

    const-string v4, "vodid=?"

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 161
    .local v0, "value":Z
    :goto_0
    invoke-virtual {p0}, Lcom/gemini/play/MainVodDB;->close()V

    .line 163
    return v0

    .end local v0    # "value":Z
    :cond_0
    move v0, v1

    .line 160
    goto :goto_0
.end method

.method public fetchAllData()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-object v0, p0, Lcom/gemini/play/MainVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mainvod"

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

    .line 175
    iget-object v0, p0, Lcom/gemini/play/MainVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "mainvod"

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

    .line 178
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    .line 175
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 179
    .local v10, "mCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 182
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    const-string v0, "infotype"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 185
    .local v11, "v":I
    if-ne v11, p2, :cond_0

    .line 190
    .end local v10    # "mCursor":Landroid/database/Cursor;
    .end local v11    # "v":I
    :goto_1
    return-object v10

    .line 182
    .restart local v10    # "mCursor":Landroid/database/Cursor;
    .restart local v11    # "v":I
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .end local v11    # "v":I
    :cond_1
    move-object v10, v6

    .line 190
    goto :goto_1
.end method

.method public get(II)Lcom/gemini/play/VodListStatus;
    .locals 5
    .param p1, "id"    # I
    .param p2, "infotype"    # I

    .prologue
    .line 234
    new-instance v2, Lcom/gemini/play/VodListStatus;

    invoke-direct {v2}, Lcom/gemini/play/VodListStatus;-><init>()V

    .line 235
    .local v2, "s":Lcom/gemini/play/VodListStatus;
    invoke-virtual {p0}, Lcom/gemini/play/MainVodDB;->open()V

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/gemini/play/MainVodDB;->fetchData(II)Landroid/database/Cursor;

    move-result-object v0

    .line 237
    .local v0, "cur":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/gemini/play/MainVodDB;->close()V

    .line 240
    const/4 v2, 0x0

    .line 264
    .end local v2    # "s":Lcom/gemini/play/VodListStatus;
    :goto_0
    return-object v2

    .line 242
    .restart local v2    # "s":Lcom/gemini/play/VodListStatus;
    :cond_0
    const-string v3, "url"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    .line 243
    const-string v3, "image"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 244
    .local v1, "in":[B
    if-eqz v1, :cond_1

    .line 245
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    .line 247
    :cond_1
    const-string v3, "name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    .line 248
    const-string v3, "area"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->area:Ljava/lang/String;

    .line 249
    const-string v3, "year"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->year:Ljava/lang/String;

    .line 250
    const-string v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->type:Ljava/lang/String;

    .line 251
    const-string v3, "intro1"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->intro1:Ljava/lang/String;

    .line 252
    const-string v3, "intro2"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->intro2:Ljava/lang/String;

    .line 253
    const-string v3, "intro3"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->intro3:Ljava/lang/String;

    .line 254
    const-string v3, "intro4"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gemini/play/VodListStatus;->intro4:Ljava/lang/String;

    .line 255
    const-string v3, "vodid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/gemini/play/VodListStatus;->id:I

    .line 256
    const-string v3, "clickrate"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/gemini/play/VodListStatus;->clickrate:I

    .line 257
    const-string v3, "recommend"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/gemini/play/VodListStatus;->recommend:I

    .line 258
    const-string v3, "chage"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    iput v3, v2, Lcom/gemini/play/VodListStatus;->chage:F

    .line 259
    const-string v3, "updatetime"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/gemini/play/VodListStatus;->updatetime:I

    .line 260
    const-string v3, "infotype"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/gemini/play/VodListStatus;->infotype:I

    .line 262
    invoke-virtual {p0}, Lcom/gemini/play/MainVodDB;->close()V

    goto/16 :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/gemini/play/VodListStatus;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "infotype"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/MainVodDB;->get(II)Lcom/gemini/play/VodListStatus;

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
    .line 115
    move/from16 v0, p11

    move/from16 v1, p16

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/MainVodDB;->fetchData(II)Landroid/database/Cursor;

    move-result-object v2

    .line 116
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 119
    :cond_0
    invoke-virtual/range {p0 .. p16}, Lcom/gemini/play/MainVodDB;->insertData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFII)J

    move-result-wide v4

    .line 131
    :goto_0
    return-wide v4

    .line 127
    :cond_1
    invoke-virtual/range {p0 .. p16}, Lcom/gemini/play/MainVodDB;->updateData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFII)Z

    move-result v4

    .line 128
    .local v4, "ret":Z
    const/4 v3, 0x1

    if-ne v4, v3, :cond_2

    .line 129
    const-wide/16 v4, 0x1

    goto :goto_0

    .line 131
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public insert(Lcom/gemini/play/VodListStatus;Landroid/graphics/Bitmap;I)J
    .locals 22
    .param p1, "s"    # Lcom/gemini/play/VodListStatus;
    .param p2, "bit"    # Landroid/graphics/Bitmap;
    .param p3, "t"    # I

    .prologue
    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MainVodDB;->open()V

    .line 273
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    .line 274
    .local v5, "name":Ljava/lang/String;
    move-object/from16 v3, p2

    .line 275
    .local v3, "image":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    .line 276
    .local v4, "url":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/gemini/play/VodListStatus;->area:Ljava/lang/String;

    .line 277
    .local v6, "area":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/gemini/play/VodListStatus;->year:Ljava/lang/String;

    .line 278
    .local v7, "year":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/gemini/play/VodListStatus;->type:Ljava/lang/String;

    .line 279
    .local v8, "type":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/gemini/play/VodListStatus;->intro1:Ljava/lang/String;

    .line 280
    .local v9, "intro1":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/gemini/play/VodListStatus;->intro2:Ljava/lang/String;

    .line 281
    .local v10, "intro2":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/gemini/play/VodListStatus;->intro3:Ljava/lang/String;

    .line 282
    .local v11, "intro3":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/gemini/play/VodListStatus;->intro4:Ljava/lang/String;

    .line 283
    .local v12, "intro4":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/gemini/play/VodListStatus;->id:I

    .line 284
    .local v13, "id":I
    move-object/from16 v0, p1

    iget v14, v0, Lcom/gemini/play/VodListStatus;->clickrate:I

    .line 285
    .local v14, "clickrate":I
    move-object/from16 v0, p1

    iget v15, v0, Lcom/gemini/play/VodListStatus;->recommend:I

    .line 286
    .local v15, "recommend":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/gemini/play/VodListStatus;->chage:F

    move/from16 v16, v0

    .line 287
    .local v16, "chage":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/gemini/play/VodListStatus;->updatetime:I

    move/from16 v17, v0

    .line 288
    .local v17, "updatetime":I
    move/from16 v18, p3

    .local v18, "infotype":I
    move-object/from16 v2, p0

    .line 290
    invoke-virtual/range {v2 .. v18}, Lcom/gemini/play/MainVodDB;->inserDataNoreRepeat(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFII)J

    move-result-wide v20

    .line 293
    .local v20, "ret":J
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MainVodDB;->close()V

    .line 295
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
    .line 85
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v0, "initialValues":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 88
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 89
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 90
    const-string v2, "image"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 93
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const-string v2, "url"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "name"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "area"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "year"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "type"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "intro1"

    invoke-virtual {v0, v2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "intro2"

    invoke-virtual {v0, v2, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "intro3"

    invoke-virtual {v0, v2, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "intro4"

    invoke-virtual {v0, v2, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "vodid"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v2, "clickrate"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v2, "recommend"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v2, "chage"

    invoke-static/range {p14 .. p14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 106
    const-string v2, "updatetime"

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v2, "infotype"

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    iget-object v2, p0, Lcom/gemini/play/MainVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "mainvod"

    const-string v4, "_id"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public open()V
    .locals 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/gemini/play/MainVodDB;->mDatabaseHelper:Lcom/gemini/play/MainVodDB$DatabaseHelper;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/gemini/play/MainVodDB$DatabaseHelper;

    iget-object v1, p0, Lcom/gemini/play/MainVodDB;->mContext:Landroid/content/Context;

    const-string v2, "mainvod.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gemini/play/MainVodDB$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/gemini/play/MainVodDB;->mDatabaseHelper:Lcom/gemini/play/MainVodDB$DatabaseHelper;

    .line 68
    iget-object v0, p0, Lcom/gemini/play/MainVodDB;->mDatabaseHelper:Lcom/gemini/play/MainVodDB$DatabaseHelper;

    invoke-virtual {v0}, Lcom/gemini/play/MainVodDB$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MainVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 70
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
    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MainVodDB;->open()V

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v2, "VodCollectArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MainVodDB;->fetchAllData()Landroid/database/Cursor;

    move-result-object v6

    .line 303
    .local v6, "cur":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MainVodDB;->close()V

    .line 306
    const/4 v2, 0x0

    .line 354
    .end local v2    # "VodCollectArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    :goto_0
    return-object v2

    .line 309
    .restart local v2    # "VodCollectArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v22

    if-nez v22, :cond_2

    .line 311
    const-string v22, "url"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 312
    .local v20, "url":Ljava/lang/String;
    const-string v22, "image"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 313
    .local v9, "in":[B
    const/4 v8, 0x0

    .line 314
    .local v8, "image":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_1

    .line 315
    const/16 v22, 0x0

    array-length v0, v9

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v9, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 316
    :cond_1
    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 317
    .local v15, "name":Ljava/lang/String;
    const-string v22, "area"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "area":Ljava/lang/String;
    const-string v22, "year"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 319
    .local v21, "year":Ljava/lang/String;
    const-string v22, "type"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 320
    .local v18, "type":Ljava/lang/String;
    const-string v22, "intro1"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 321
    .local v11, "intro1":Ljava/lang/String;
    const-string v22, "intro2"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 322
    .local v12, "intro2":Ljava/lang/String;
    const-string v22, "intro3"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 323
    .local v13, "intro3":Ljava/lang/String;
    const-string v22, "intro4"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 324
    .local v14, "intro4":Ljava/lang/String;
    const-string v22, "vodid"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 325
    .local v7, "id":I
    const-string v22, "clickrate"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 326
    .local v5, "clickrate":I
    const-string v22, "recommend"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 327
    .local v16, "recommend":I
    const-string v22, "chage"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    .line 328
    .local v4, "chage":F
    const-string v22, "updatetime"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 329
    .local v19, "updatetime":I
    const-string v22, "infotype"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 331
    .local v10, "infotype":I
    new-instance v17, Lcom/gemini/play/VodListStatus;

    invoke-direct/range {v17 .. v17}, Lcom/gemini/play/VodListStatus;-><init>()V

    .line 332
    .local v17, "s":Lcom/gemini/play/VodListStatus;
    move-object/from16 v0, v17

    iput-object v15, v0, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    .line 333
    move-object/from16 v0, v17

    iput-object v8, v0, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    .line 334
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    .line 335
    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/gemini/play/VodListStatus;->area:Ljava/lang/String;

    .line 336
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->year:Ljava/lang/String;

    .line 337
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->type:Ljava/lang/String;

    .line 338
    move-object/from16 v0, v17

    iput-object v11, v0, Lcom/gemini/play/VodListStatus;->intro1:Ljava/lang/String;

    .line 339
    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/gemini/play/VodListStatus;->intro2:Ljava/lang/String;

    .line 340
    move-object/from16 v0, v17

    iput-object v13, v0, Lcom/gemini/play/VodListStatus;->intro3:Ljava/lang/String;

    .line 341
    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/gemini/play/VodListStatus;->intro4:Ljava/lang/String;

    .line 342
    move-object/from16 v0, v17

    iput v7, v0, Lcom/gemini/play/VodListStatus;->id:I

    .line 343
    move-object/from16 v0, v17

    iput v5, v0, Lcom/gemini/play/VodListStatus;->clickrate:I

    .line 344
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Lcom/gemini/play/VodListStatus;->recommend:I

    .line 345
    move-object/from16 v0, v17

    iput v4, v0, Lcom/gemini/play/VodListStatus;->chage:F

    .line 346
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/gemini/play/VodListStatus;->updatetime:I

    .line 347
    move-object/from16 v0, v17

    iput v10, v0, Lcom/gemini/play/VodListStatus;->infotype:I

    .line 349
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 352
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
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MainVodDB;->close()V

    goto/16 :goto_0
.end method

.method public parseSize()I
    .locals 2

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/gemini/play/MainVodDB;->open()V

    .line 361
    invoke-virtual {p0}, Lcom/gemini/play/MainVodDB;->fetchAllData()Landroid/database/Cursor;

    move-result-object v0

    .line 362
    .local v0, "cur":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/gemini/play/MainVodDB;->close()V

    .line 365
    const/4 v1, 0x0

    .line 371
    :goto_0
    return v1

    .line 368
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 369
    .local v1, "size":I
    invoke-virtual {p0}, Lcom/gemini/play/MainVodDB;->close()V

    goto :goto_0
.end method

.method public updateData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFII)Z
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
    .param p16, "infotype"    # I

    .prologue
    .line 198
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v1, "initialValues":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 201
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 203
    const-string v4, "image"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 206
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const-string v4, "url"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v4, "name"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v4, "area"

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v4, "year"

    invoke-virtual {v1, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v4, "type"

    move-object/from16 v0, p6

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v4, "intro1"

    move-object/from16 v0, p7

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v4, "intro2"

    move-object/from16 v0, p8

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v4, "intro3"

    move-object/from16 v0, p9

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v4, "intro4"

    move-object/from16 v0, p10

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v4, "vodid"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    const-string v4, "clickrate"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v4, "recommend"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string v4, "chage"

    invoke-static/range {p14 .. p14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 219
    const-string v4, "updatetime"

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string v4, "infotype"

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    iget-object v4, p0, Lcom/gemini/play/MainVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "mainvod"

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

    .line 224
    .local v3, "ret":Z
    :goto_0
    return v3

    .line 222
    .end local v3    # "ret":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
