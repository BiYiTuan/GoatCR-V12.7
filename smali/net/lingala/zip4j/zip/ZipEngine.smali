.class public Lnet/lingala/zip4j/zip/ZipEngine;
.super Ljava/lang/Object;
.source "ZipEngine.java"


# instance fields
.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 2
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip model is null in ZipEngine constructor"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 53
    return-void
.end method

.method static access$0(Lnet/lingala/zip4j/zip/ZipEngine;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/zip/ZipEngine;->initAddFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private calculateTotalWork(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)J
    .locals 10
    .param p1, "fileList"    # Ljava/util/ArrayList;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 433
    if-nez p1, :cond_0

    .line 434
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v6, "file list is null, cannot calculate total work"

    invoke-direct {v3, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 437
    :cond_0
    const-wide/16 v4, 0x0

    .line 439
    .local v4, "totalWork":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 463
    return-wide v4

    .line 440
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/io/File;

    if-eqz v3, :cond_2

    .line 441
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 443
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v3

    if-nez v3, :cond_3

    .line 444
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 449
    :goto_1
    iget-object v3, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 450
    iget-object v3, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 451
    iget-object v3, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 453
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v7

    .line 452
    invoke-static {v3, v6, v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "relativeFileName":Ljava/lang/String;
    iget-object v3, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v3, v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    .line 455
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v0, :cond_2

    .line 456
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v6

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 439
    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v2    # "relativeFileName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 446
    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_1
.end method

.method private checkParameters(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 3
    .param p1, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    const/4 v2, -0x1

    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot validate zip parameters"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 289
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "unsupported compression type"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 293
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    .line 294
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid compression level. compression level dor deflate should be in the range of 0-9"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 299
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_3

    .line 301
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "unsupported encryption method"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_6

    .line 305
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input password is empty or null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_5
    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setAesKeyStrength(I)V

    .line 309
    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    .line 312
    :cond_6
    return-void
.end method

.method private createEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 423
    new-instance v0, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;-><init>()V

    .line 424
    .local v0, "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    const-wide/32 v2, 0x6054b50

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setSignature(J)V

    .line 425
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 426
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    .line 427
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V

    .line 428
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 429
    return-object v0
.end method

.method private initAddFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 18
    .param p1, "fileList"    # Ljava/util/ArrayList;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 91
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 92
    :cond_0
    new-instance v13, Lnet/lingala/zip4j/exception/ZipException;

    const-string v14, "one of the input parameters is null when adding files"

    invoke-direct {v13, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 95
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gtz v13, :cond_2

    .line 96
    new-instance v13, Lnet/lingala/zip4j/exception/ZipException;

    const-string v14, "no files to add"

    invoke-direct {v13, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 99
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v13}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v13

    if-nez v13, :cond_3

    .line 100
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct/range {p0 .. p0}, Lnet/lingala/zip4j/zip/ZipEngine;->createEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v14

    invoke-virtual {v13, v14}, Lnet/lingala/zip4j/model/ZipModel;->setEndCentralDirRecord(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V

    .line 103
    :cond_3
    const/4 v8, 0x0

    .line 104
    .local v8, "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    const/4 v5, 0x0

    .line 106
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/zip/ZipEngine;->checkParameters(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 108
    invoke-direct/range {p0 .. p3}, Lnet/lingala/zip4j/zip/ZipEngine;->removeFilesIfExists(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v13}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v7

    .line 112
    .local v7, "isZipFileAlreadExists":Z
    new-instance v12, Lnet/lingala/zip4j/io/SplitOutputStream;

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/ZipModel;->getSplitLength()J

    move-result-wide v14

    invoke-direct {v12, v13, v14, v15}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    .line 113
    .local v12, "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    new-instance v9, Lnet/lingala/zip4j/io/ZipOutputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v9, v12, v13}, Lnet/lingala/zip4j/io/ZipOutputStream;-><init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .local v9, "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    if-eqz v7, :cond_7

    .line 116
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v13}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v13

    if-nez v13, :cond_6

    .line 117
    new-instance v13, Lnet/lingala/zip4j/exception/ZipException;

    const-string v14, "invalid end of central directory record"

    invoke-direct {v13, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    :catch_0
    move-exception v2

    move-object v8, v9

    .line 163
    .end local v7    # "isZipFileAlreadExists":Z
    .end local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .end local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v2, "e":Lnet/lingala/zip4j/exception/ZipException;
    .restart local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :goto_0
    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 164
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    .end local v2    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catchall_0
    move-exception v13

    .line 169
    :goto_1
    if-eqz v5, :cond_4

    .line 171
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 176
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    .line 178
    :try_start_4
    invoke-virtual {v8}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 182
    :cond_5
    :goto_3
    throw v13

    .line 119
    .end local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v7    # "isZipFileAlreadExists":Z
    .restart local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v13}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v13

    invoke-virtual {v13}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 121
    :cond_7
    const/16 v13, 0x1000

    new-array v10, v13, [B
    :try_end_5
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 122
    .local v10, "readBuff":[B
    const/4 v11, -0x1

    .line 123
    .local v11, "readLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v6, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v6, "inputStream":Ljava/io/InputStream;
    :goto_4
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v4, v13, :cond_a

    .line 160
    invoke-virtual {v9}, Lnet/lingala/zip4j/io/ZipOutputStream;->finish()V

    .line 161
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_6
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 169
    if-eqz v6, :cond_8

    .line 171
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 176
    :cond_8
    :goto_5
    if-eqz v9, :cond_9

    .line 178
    :try_start_8
    invoke-virtual {v9}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 183
    :cond_9
    :goto_6
    return-void

    .line 124
    :cond_a
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/ZipParameters;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/ZipParameters;

    .line 126
    .local v3, "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 128
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_c

    .line 129
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v13

    if-nez v13, :cond_b

    .line 130
    const/4 v13, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 131
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-static {v13, v0}, Lnet/lingala/zip4j/util/CRCUtil;->computeFileCRC(Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)J

    move-result-wide v14

    long-to-int v13, v14

    invoke-virtual {v3, v13}, Lnet/lingala/zip4j/model/ZipParameters;->setSourceFileCRC(I)V

    .line 132
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 135
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-static {v13}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_c

    .line 136
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    .line 140
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v9, v13, v3}, Lnet/lingala/zip4j/io/ZipOutputStream;->putNextEntry(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 141
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 142
    invoke-virtual {v9}, Lnet/lingala/zip4j/io/ZipOutputStream;->closeEntry()V

    move-object v5, v6

    .line 123
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_d
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 146
    :cond_e
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-direct {v5, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 148
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :goto_8
    :try_start_a
    invoke-virtual {v5, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v13, -0x1

    if-ne v11, v13, :cond_f

    .line 153
    invoke-virtual {v9}, Lnet/lingala/zip4j/io/ZipOutputStream;->closeEntry()V

    .line 155
    if-eqz v5, :cond_d

    .line 156
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_7

    .line 165
    .end local v3    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .end local v4    # "i":I
    .end local v10    # "readBuff":[B
    .end local v11    # "readLen":I
    :catch_1
    move-exception v2

    move-object v8, v9

    .line 166
    .end local v7    # "isZipFileAlreadExists":Z
    .end local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .end local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :goto_9
    :try_start_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 167
    new-instance v13, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v13, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 149
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v3    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .restart local v4    # "i":I
    .restart local v7    # "isZipFileAlreadExists":Z
    .restart local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v10    # "readBuff":[B
    .restart local v11    # "readLen":I
    .restart local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :cond_f
    const/4 v13, 0x0

    :try_start_c
    invoke-virtual {v9, v10, v13, v11}, Lnet/lingala/zip4j/io/ZipOutputStream;->write([BII)V

    .line 150
    int-to-long v14, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V
    :try_end_c
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_8

    .line 168
    .end local v3    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .end local v4    # "i":I
    .end local v10    # "readBuff":[B
    .end local v11    # "readLen":I
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto/16 :goto_1

    .line 172
    .end local v7    # "isZipFileAlreadExists":Z
    .end local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_2
    move-exception v14

    goto/16 :goto_2

    .line 179
    :catch_3
    move-exception v14

    goto/16 :goto_3

    .line 172
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v4    # "i":I
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "isZipFileAlreadExists":Z
    .restart local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v10    # "readBuff":[B
    .restart local v11    # "readLen":I
    .restart local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_4
    move-exception v13

    goto/16 :goto_5

    .line 179
    :catch_5
    move-exception v13

    goto/16 :goto_6

    .line 168
    :catchall_2
    move-exception v13

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto/16 :goto_1

    .line 165
    .end local v4    # "i":I
    .end local v7    # "isZipFileAlreadExists":Z
    .end local v10    # "readBuff":[B
    .end local v11    # "readLen":I
    .end local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_6
    move-exception v2

    goto :goto_9

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v4    # "i":I
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "isZipFileAlreadExists":Z
    .restart local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v10    # "readBuff":[B
    .restart local v11    # "readLen":I
    .restart local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto :goto_9

    .line 162
    .end local v4    # "i":I
    .end local v7    # "isZipFileAlreadExists":Z
    .end local v10    # "readBuff":[B
    .end local v11    # "readLen":I
    .end local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_8
    move-exception v2

    goto/16 :goto_0

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v4    # "i":I
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "isZipFileAlreadExists":Z
    .restart local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v10    # "readBuff":[B
    .restart local v11    # "readLen":I
    .restart local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_9
    move-exception v2

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto/16 :goto_0
.end method

.method private prepareFileOutputStream()Ljava/io/RandomAccessFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v3, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "outPath":Ljava/lang/String;
    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 408
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "invalid output path"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 412
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    .local v1, "outFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 414
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 416
    :cond_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 417
    .end local v1    # "outFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v3, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private removeFilesIfExists(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 15
    .param p1, "fileList"    # Ljava/util/ArrayList;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v12, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 328
    iget-object v12, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v12

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 329
    iget-object v12, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v12

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    const/4 v10, 0x0

    .line 336
    .local v10, "outputStream":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-lt v7, v12, :cond_2

    .line 395
    if-eqz v10, :cond_0

    .line 397
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v12

    goto :goto_0

    .line 337
    :cond_2
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 339
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 340
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v14

    .line 339
    invoke-static {v12, v13, v14}, Lnet/lingala/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, "fileName":Ljava/lang/String;
    iget-object v12, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v12, v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v5

    .line 343
    .local v5, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v5, :cond_5

    .line 345
    if-eqz v10, :cond_3

    .line 346
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 347
    const/4 v10, 0x0

    .line 350
    :cond_3
    new-instance v2, Lnet/lingala/zip4j/util/ArchiveMaintainer;

    invoke-direct {v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;-><init>()V

    .line 351
    .local v2, "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    const/4 v12, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 352
    iget-object v12, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v0, p3

    invoke-virtual {v2, v12, v5, v0}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initRemoveZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;

    move-result-object v11

    .line 355
    .local v11, "retMap":Ljava/util/HashMap;
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 356
    const/4 v12, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 357
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    if-eqz v10, :cond_0

    .line 397
    :try_start_3
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 398
    :catch_1
    move-exception v12

    goto :goto_0

    .line 362
    :cond_4
    const/4 v12, 0x0

    :try_start_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 364
    if-nez v10, :cond_5

    .line 365
    invoke-direct {p0}, Lnet/lingala/zip4j/zip/ZipEngine;->prepareFileOutputStream()Ljava/io/RandomAccessFile;

    move-result-object v10

    .line 367
    if-eqz v11, :cond_5

    .line 368
    const-string v12, "offsetCentralDir"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v12

    if-eqz v12, :cond_5

    .line 369
    const-wide/16 v8, -0x1

    .line 373
    .local v8, "offsetCentralDir":J
    :try_start_5
    const-string v12, "offsetCentralDir"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 372
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v8

    .line 384
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-ltz v12, :cond_5

    .line 385
    :try_start_6
    invoke-virtual {v10, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 336
    .end local v2    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .end local v8    # "offsetCentralDir":J
    .end local v11    # "retMap":Ljava/util/HashMap;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 374
    .restart local v2    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .restart local v8    # "offsetCentralDir":J
    .restart local v11    # "retMap":Ljava/util/HashMap;
    :catch_2
    move-exception v3

    .line 375
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    .line 376
    const-string v13, "NumberFormatException while parsing offset central directory. Cannot update already existing file header"

    .line 375
    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 392
    .end local v2    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "offsetCentralDir":J
    .end local v11    # "retMap":Ljava/util/HashMap;
    :catch_3
    move-exception v3

    .line 393
    .local v3, "e":Ljava/io/IOException;
    :try_start_7
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v12, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 394
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 395
    if-eqz v10, :cond_6

    .line 397
    :try_start_8
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 402
    :cond_6
    :goto_2
    throw v12

    .line 378
    .restart local v2    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v8    # "offsetCentralDir":J
    .restart local v11    # "retMap":Ljava/util/HashMap;
    :catch_4
    move-exception v3

    .line 379
    .local v3, "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    .line 380
    const-string v13, "Error while parsing offset central directory. Cannot update already existing file header"

    .line 379
    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 398
    .end local v2    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "offsetCentralDir":J
    .end local v11    # "retMap":Ljava/util/HashMap;
    :catch_5
    move-exception v13

    goto :goto_2
.end method


# virtual methods
.method public addFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 6
    .param p1, "fileList"    # Ljava/util/ArrayList;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "runInThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 58
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 59
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "one of the input parameters is null when adding files"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 63
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "no files to add"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_2
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/zip/ZipEngine;->calculateTotalWork(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 68
    invoke-virtual {p3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 69
    invoke-virtual {p3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 71
    if-eqz p4, :cond_3

    .line 73
    new-instance v0, Lnet/lingala/zip4j/zip/ZipEngine$1;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/zip/ZipEngine$1;-><init>(Lnet/lingala/zip4j/zip/ZipEngine;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 81
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 86
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 84
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/zip/ZipEngine;->initAddFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    goto :goto_0
.end method

.method public addFolderToZip(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "runInThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 239
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 240
    :cond_0
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "one of the input parameters is null, cannot add folder to zip"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "input folder does not exist"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 248
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "input file is not a folder, user addFileToZip method to add files"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileReadAccess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 252
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "cannot read folder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    :cond_4
    const/4 v1, 0x0

    .line 256
    .local v1, "rootFolderPath":Ljava/lang/String;
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 258
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 266
    :goto_0
    invoke-virtual {p2, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setDefaultFolderPath(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFiles()Z

    move-result v2

    invoke-static {p1, v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFilesInDirectoryRec(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 270
    .local v0, "fileList":Ljava/util/ArrayList;
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 271
    if-nez v0, :cond_5

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "fileList":Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .restart local v0    # "fileList":Ljava/util/ArrayList;
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_6
    invoke-virtual {p0, v0, p2, p3, p4}, Lnet/lingala/zip4j/zip/ZipEngine;->addFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    .line 278
    return-void

    .line 258
    .end local v0    # "fileList":Ljava/util/ArrayList;
    :cond_7
    const-string v1, ""

    goto :goto_0

    .line 260
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_1
    goto :goto_0

    :cond_9
    const-string v1, ""

    goto :goto_1

    .line 263
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public addStreamToZip(Ljava/io/InputStream;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 10
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 186
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 187
    :cond_0
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "one of the input parameters is null, cannot add stream to zip"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 190
    :cond_1
    const/4 v2, 0x0

    .line 193
    .local v2, "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :try_start_0
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/zip/ZipEngine;->checkParameters(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 195
    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v1

    .line 197
    .local v1, "isZipFileAlreadExists":Z
    new-instance v6, Lnet/lingala/zip4j/io/SplitOutputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getSplitLength()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    .line 198
    .local v6, "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    new-instance v3, Lnet/lingala/zip4j/io/ZipOutputStream;

    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v3, v6, v7}, Lnet/lingala/zip4j/io/ZipOutputStream;-><init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .local v3, "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    if-eqz v1, :cond_4

    .line 201
    :try_start_1
    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v7

    if-nez v7, :cond_3

    .line 202
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "invalid end of central directory record"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 223
    .end local v1    # "isZipFileAlreadExists":Z
    .end local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .end local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    .restart local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :goto_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    .end local v0    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catchall_0
    move-exception v7

    .line 227
    :goto_1
    if-eqz v2, :cond_2

    .line 229
    :try_start_3
    invoke-virtual {v2}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 234
    :cond_2
    :goto_2
    throw v7

    .line 204
    .end local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v1    # "isZipFileAlreadExists":Z
    .restart local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :cond_3
    :try_start_4
    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 207
    :cond_4
    const/16 v7, 0x1000

    new-array v4, v7, [B

    .line 208
    .local v4, "readBuff":[B
    const/4 v5, -0x1

    .line 210
    .local v5, "readLen":I
    const/4 v7, 0x0

    invoke-virtual {v3, v7, p2}, Lnet/lingala/zip4j/io/ZipOutputStream;->putNextEntry(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 212
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 213
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 214
    :goto_3
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_7

    .line 219
    :cond_5
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/ZipOutputStream;->closeEntry()V

    .line 220
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/ZipOutputStream;->finish()V
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 227
    if-eqz v3, :cond_6

    .line 229
    :try_start_5
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 235
    :cond_6
    :goto_4
    return-void

    .line 215
    :cond_7
    const/4 v7, 0x0

    :try_start_6
    invoke-virtual {v3, v4, v7, v5}, Lnet/lingala/zip4j/io/ZipOutputStream;->write([BII)V
    :try_end_6
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 224
    .end local v4    # "readBuff":[B
    .end local v5    # "readLen":I
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 225
    .end local v1    # "isZipFileAlreadExists":Z
    .end local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .end local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :goto_5
    :try_start_7
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v7, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    goto :goto_2

    .end local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v1    # "isZipFileAlreadExists":Z
    .restart local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v4    # "readBuff":[B
    .restart local v5    # "readLen":I
    .restart local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 226
    .end local v4    # "readBuff":[B
    .end local v5    # "readLen":I
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto :goto_1

    .line 224
    .end local v1    # "isZipFileAlreadExists":Z
    .end local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_4
    move-exception v0

    goto :goto_5

    .line 222
    :catch_5
    move-exception v0

    goto :goto_0
.end method
