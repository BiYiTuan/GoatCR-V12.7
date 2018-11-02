.class public Lorg/cybergarage/http/d;
.super Ljava/lang/Object;


# instance fields
.field protected a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Vector;

.field private e:[B

.field private f:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/cybergarage/http/d;->a:Z

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/d;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/d;->d:Ljava/util/Vector;

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/cybergarage/http/d;->e:[B

    iput-object v2, p0, Lorg/cybergarage/http/d;->f:Ljava/io/InputStream;

    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/cybergarage/http/d;->b(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/cybergarage/http/d;->a:Z

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/d;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/d;->d:Ljava/util/Vector;

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/cybergarage/http/d;->e:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/http/d;->f:Ljava/io/InputStream;

    iput-boolean p1, p0, Lorg/cybergarage/http/d;->a:Z

    return-void
.end method

.method private a(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v2, v0, [B

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-byte v0, v2, v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    aget-byte v0, v2, v0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    const/4 v0, 0x0

    aget-byte v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/http/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v0, p0, Lorg/cybergarage/http/d;->c:Ljava/lang/String;

    const-string v1, " "

    invoke-direct {v3, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    if-gt v1, p1, :cond_0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lorg/cybergarage/http/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/cybergarage/http/d;->m(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/http/d;->f()V

    new-array v0, v1, [B

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/d;->a([BZ)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->b(Ljava/io/InputStream;)V

    return-void
.end method

.method public a(J)V
    .locals 1

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1, p2}, Lorg/cybergarage/http/d;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(JJJ)V
    .locals 5

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v0, v2, p5

    if-gez v0, :cond_0

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Range"

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "*"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/http/d;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/cybergarage/http/c;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/cybergarage/http/d;->d:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/cybergarage/http/d;->a([BZ)V

    return-void
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 2

    new-instance v0, Lorg/cybergarage/http/a;

    invoke-direct {v0, p1}, Lorg/cybergarage/http/a;-><init>(Ljava/util/Calendar;)V

    const-string v1, "Date"

    invoke-virtual {v0}, Lorg/cybergarage/http/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/cybergarage/http/c;)V
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/d;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Lorg/cybergarage/http/d;)V
    .locals 3

    invoke-virtual {p1}, Lorg/cybergarage/http/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/http/d;->m(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/http/d;->f()V

    invoke-virtual {p1}, Lorg/cybergarage/http/d;->e()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/cybergarage/http/d;->b(I)Lorg/cybergarage/http/c;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cybergarage/http/d;->a(Lorg/cybergarage/http/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/d;->h()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->a([B)V

    return-void
.end method

.method public a([B)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/d;->a([BZ)V

    return-void
.end method

.method public a([BZ)V
    .locals 2

    iput-object p1, p0, Lorg/cybergarage/http/d;->e:[B

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/d;->a(J)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/io/InputStream;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/d;->a(Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/io/InputStream;Z)Z
    .locals 16

    :try_start_0
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/cybergarage/http/d;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/cybergarage/http/d;->m(Ljava/lang/String;)V

    new-instance v3, Lorg/cybergarage/http/k;

    invoke-direct {v3, v2}, Lorg/cybergarage/http/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/cybergarage/http/k;->a()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/cybergarage/http/d;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v3, Lorg/cybergarage/http/c;

    invoke-direct {v3, v2}, Lorg/cybergarage/http/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/cybergarage/http/c;->c()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/cybergarage/http/d;->b(Lorg/cybergarage/http/c;)V

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/cybergarage/http/d;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/cybergarage/http/d;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/cybergarage/http/d;->m(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/cybergarage/http/d;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    new-instance v3, Lorg/cybergarage/http/c;

    invoke-direct {v3, v2}, Lorg/cybergarage/http/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/cybergarage/http/c;->c()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/cybergarage/http/d;->b(Lorg/cybergarage/http/c;)V

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/cybergarage/http/d;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_8

    const-string v2, ""

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/http/d;->a(Ljava/lang/String;Z)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/d;->z()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    if-ne v9, v2, :cond_d

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/cybergarage/http/d;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v2

    :goto_3
    move-wide v6, v2

    :goto_4
    :try_start_2
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_5
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v6

    if-gez v2, :cond_12

    invoke-static {}, Lorg/cybergarage/http/b;->a()I

    move-result v11

    int-to-long v2, v11

    cmp-long v2, v6, v2

    if-lez v2, :cond_e

    int-to-long v2, v11

    :goto_6
    long-to-int v2, v2

    new-array v12, v2, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_7
    cmp-long v2, v4, v6

    if-gez v2, :cond_a

    sub-long v2, v6, v4

    int-to-long v14, v11

    cmp-long v13, v14, v2

    if-gez v13, :cond_9

    int-to-long v2, v11

    :cond_9
    const/4 v13, 0x0

    long-to-int v2, v2

    :try_start_3
    invoke-virtual {v8, v12, v13, v2}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-gez v2, :cond_f

    :cond_a
    :goto_8
    const/4 v2, 0x1

    if-ne v9, v2, :cond_11

    const-wide/16 v2, 0x0

    :cond_b
    :try_start_4
    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v2

    invoke-virtual {v8, v4, v5}, Ljava/io/BufferedInputStream;->skip(J)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_10

    :goto_9
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/cybergarage/http/d;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v3, v4, v5, v2}, Ljava/lang/String;-><init>([BII)V

    const/16 v2, 0x10

    invoke-static {v3, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-wide v2

    :goto_a
    move-wide v6, v2

    goto :goto_5

    :cond_c
    const-wide/16 v2, 0x0

    goto :goto_3

    :cond_d
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/d;->o()J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-wide v6

    goto :goto_4

    :cond_e
    move-wide v2, v6

    goto :goto_6

    :cond_f
    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {v10, v12, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    int-to-long v2, v2

    add-long/2addr v2, v4

    move-wide v4, v2

    goto :goto_7

    :catch_0
    move-exception v2

    :try_start_8
    invoke-static {v2}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_8

    :catch_1
    move-exception v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_10
    add-long/2addr v2, v4

    :try_start_9
    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_b

    goto :goto_9

    :catch_2
    move-exception v2

    const-wide/16 v2, 0x0

    goto :goto_a

    :cond_11
    const-wide/16 v2, 0x0

    goto :goto_a

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/cybergarage/http/d;->a:Z

    if-eqz v2, :cond_13

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/StringUtil;->eds([B)[B

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/http/d;->a([BZ)V

    :goto_b
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/http/d;->a([BZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_b

    :catch_3
    move-exception v2

    goto/16 :goto_4
.end method

.method protected a(Lorg/cybergarage/http/j;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/cybergarage/http/j;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->a(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)Lorg/cybergarage/http/c;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/d;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/http/c;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lorg/cybergarage/http/c;
    .locals 5

    invoke-virtual {p0}, Lorg/cybergarage/http/d;->e()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/cybergarage/http/d;->b(I)Lorg/cybergarage/http/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/http/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/http/d;->f:Ljava/io/InputStream;

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;)Lorg/cybergarage/http/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/cybergarage/http/c;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/http/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lorg/cybergarage/http/c;)V
    .locals 2

    invoke-virtual {p1}, Lorg/cybergarage/http/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/http/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/cybergarage/http/j;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/http/d;->a()V

    invoke-virtual {p0, p1}, Lorg/cybergarage/http/d;->a(Lorg/cybergarage/http/j;)Z

    move-result v0

    return v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    const-string v0, "max-age"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Lorg/cybergarage/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "HOST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/cybergarage/http/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;)Lorg/cybergarage/http/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;)Lorg/cybergarage/http/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/http/c;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/d;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/d;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, v0, v1}, Lorg/cybergarage/http/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;)Lorg/cybergarage/http/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/http/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/StringUtil;->toLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/d;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/d;->d:Ljava/util/Vector;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/http/d;->e()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->b(I)Lorg/cybergarage/http/c;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/cybergarage/http/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/cybergarage/http/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/d;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/d;->e:[B

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/http/d;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/cybergarage/http/d;->e:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/cybergarage/http/d;->e:[B

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/cybergarage/http/d;->e:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-Language"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/d;->e:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/d;->f:Ljava/io/InputStream;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Server"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lorg/cybergarage/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "HOST"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/http/d;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x22

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/http/d;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v0, "charset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v2, "charset"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gez v1, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gez v1, :cond_5

    const-string v0, ""

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public o()J
    .locals 2

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public p()Z
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/http/d;->p()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/d;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public s()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/http/d;->p()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/d;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    const-string v0, "Content-Range"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Range"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()[J
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v1, v0, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v6

    aput-wide v2, v1, v5

    aput-wide v2, v1, v4

    invoke-virtual {p0}, Lorg/cybergarage/http/d;->t()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Content-Range"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    const-string v0, "Range"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, " ="

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    const-string v0, " -"

    invoke-virtual {v2, v0}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "-/"

    invoke-virtual {v2, v0}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_0

    :cond_6
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    :try_start_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public v()J
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/http/d;->u()[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public w()J
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/http/d;->u()[J

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public x()Z
    .locals 1

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/http/d;->x()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/d;->y()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "Chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
