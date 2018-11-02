.class public Lcom/gemini/play/PositionVodDB;
.super Ljava/lang/Object;
.source "PositionVodDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/play/PositionVodDB$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DB_CREATE:Ljava/lang/String; = "create table positionvod(_id integer primary key autoincrement, type int, vodid int, num int, position int)"

.field private static final DB_NAME:Ljava/lang/String; = "positionvod.db"

.field private static final DB_TABLE:Ljava/lang/String; = "positionvod"

.field private static final DB_VERSION:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/gemini/play/PositionVodDB$DatabaseHelper;

.field private mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/gemini/play/PositionVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    iput-object v0, p0, Lcom/gemini/play/PositionVodDB;->mDatabaseHelper:Lcom/gemini/play/PositionVodDB$DatabaseHelper;

    .line 21
    iput-object v0, p0, Lcom/gemini/play/PositionVodDB;->mContext:Landroid/content/Context;

    .line 49
    iput-object p1, p0, Lcom/gemini/play/PositionVodDB;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public static tabbleIsExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 73
    const/4 v2, 0x0

    .line 74
    .local v2, "result":Z
    if-nez p1, :cond_0

    .line 91
    :goto_0
    return v4

    .line 77
    :cond_0
    const/4 v1, 0x0

    .line 79
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

    .line 80
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 83
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 84
    const/4 v2, 0x1

    .end local v0    # "count":I
    .end local v3    # "sql":Ljava/lang/String;
    :cond_1
    :goto_1
    move v4, v2

    .line 91
    goto :goto_0

    .line 88
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public deleteData(I)Z
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    iget-object v2, p0, Lcom/gemini/play/PositionVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "positionvod"

    const-string v4, "vodid=?"

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public fetchAllData()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v0, p0, Lcom/gemini/play/PositionVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "positionvod"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "vodid"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "num"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "position"

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
    .locals 5
    .param p1, "id"    # I
    .param p2, "infotype"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 149
    const-string v2, "select * from positionvod where vodid=? and type=?"

    .line 150
    .local v2, "sql":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 151
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/PositionVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 152
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(II)Lcom/gemini/play/VodPositionStatus;
    .locals 5
    .param p1, "id"    # I
    .param p2, "infotype"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/gemini/play/PositionVodDB;->open()V

    .line 174
    new-instance v3, Lcom/gemini/play/VodPositionStatus;

    invoke-direct {v3}, Lcom/gemini/play/VodPositionStatus;-><init>()V

    .line 175
    .local v3, "s":Lcom/gemini/play/VodPositionStatus;
    invoke-virtual {p0, p1, p2}, Lcom/gemini/play/PositionVodDB;->fetchData(II)Landroid/database/Cursor;

    move-result-object v0

    .line 176
    .local v0, "cur":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 178
    const/4 v3, 0x0

    .line 187
    .end local v3    # "s":Lcom/gemini/play/VodPositionStatus;
    :goto_0
    return-object v3

    .line 180
    .restart local v3    # "s":Lcom/gemini/play/VodPositionStatus;
    :cond_0
    const-string v4, "position"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 181
    .local v2, "position":I
    const-string v4, "num"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 183
    .local v1, "num":I
    iput v2, v3, Lcom/gemini/play/VodPositionStatus;->position:I

    .line 184
    iput v1, v3, Lcom/gemini/play/VodPositionStatus;->num:I

    .line 186
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public inserDataNoreRepeat(IIII)J
    .locals 4
    .param p1, "type"    # I
    .param p2, "vodid"    # I
    .param p3, "num"    # I
    .param p4, "position"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/gemini/play/PositionVodDB;->open()V

    .line 108
    invoke-virtual {p0, p2, p1}, Lcom/gemini/play/PositionVodDB;->fetchData(II)Landroid/database/Cursor;

    move-result-object v0

    .line 109
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 111
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gemini/play/PositionVodDB;->insertData(IIII)J

    move-result-wide v2

    .line 112
    .local v2, "ret":J
    if-eqz v0, :cond_1

    .line 113
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 119
    .end local v2    # "ret":J
    :cond_1
    :goto_0
    return-wide v2

    .line 117
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gemini/play/PositionVodDB;->updateData(IIII)Z

    .line 118
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 119
    const-wide/16 v2, 0x1

    goto :goto_0
.end method

.method public insertData(IIII)J
    .locals 4
    .param p1, "type"    # I
    .param p2, "vodid"    # I
    .param p3, "num"    # I
    .param p4, "position"    # I

    .prologue
    .line 96
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v1, "vodid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v1, "num"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v1, "position"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    iget-object v1, p0, Lcom/gemini/play/PositionVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "positionvod"

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public open()V
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Lcom/gemini/play/PositionVodDB;->mDatabaseHelper:Lcom/gemini/play/PositionVodDB$DatabaseHelper;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/gemini/play/PositionVodDB$DatabaseHelper;

    iget-object v1, p0, Lcom/gemini/play/PositionVodDB;->mContext:Landroid/content/Context;

    const-string v2, "positionvod.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gemini/play/PositionVodDB$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/gemini/play/PositionVodDB;->mDatabaseHelper:Lcom/gemini/play/PositionVodDB$DatabaseHelper;

    .line 57
    iget-object v0, p0, Lcom/gemini/play/PositionVodDB;->mDatabaseHelper:Lcom/gemini/play/PositionVodDB$DatabaseHelper;

    invoke-virtual {v0}, Lcom/gemini/play/PositionVodDB$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/PositionVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    :cond_0
    return-void
.end method

.method public updateData(IIII)Z
    .locals 8
    .param p1, "type"    # I
    .param p2, "vodid"    # I
    .param p3, "num"    # I
    .param p4, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v3, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string v3, "vodid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v3, "num"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string v3, "position"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    iget-object v3, p0, Lcom/gemini/play/PositionVodDB;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "positionvod"

    const-string v5, "vodid=? and type=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 167
    .local v1, "ret":Z
    :goto_0
    return v1

    .end local v1    # "ret":Z
    :cond_0
    move v1, v2

    .line 166
    goto :goto_0
.end method
