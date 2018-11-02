.class public Lorg/cybergarage/http/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/k;->a:Ljava/lang/String;

    iput v1, p0, Lorg/cybergarage/http/k;->b:I

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/k;->c:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/k;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/cybergarage/http/k;->b(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/k;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/k;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/http/k;->b:I

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/k;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/cybergarage/http/k;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "Continue"

    goto :goto_0

    :sswitch_1
    const-string v0, "OK"

    goto :goto_0

    :sswitch_2
    const-string v0, "Partial Content"

    goto :goto_0

    :sswitch_3
    const-string v0, "Bad Request"

    goto :goto_0

    :sswitch_4
    const-string v0, "Not Found"

    goto :goto_0

    :sswitch_5
    const-string v0, "Precondition Failed"

    goto :goto_0

    :sswitch_6
    const-string v0, "Invalid Range"

    goto :goto_0

    :sswitch_7
    const-string v0, "Internal Server Error"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xce -> :sswitch_2
        0x190 -> :sswitch_3
        0x194 -> :sswitch_4
        0x19c -> :sswitch_5
        0x1a0 -> :sswitch_6
        0x1f4 -> :sswitch_7
    .end sparse-switch
.end method

.method public static final c(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-gt v0, p0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/cybergarage/http/k;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/http/k;->a:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lorg/cybergarage/http/k;->b:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/http/k;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    const/16 v1, 0x1f4

    if-nez p1, :cond_1

    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/k;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/cybergarage/http/k;->b(I)V

    invoke-static {v1}, Lorg/cybergarage/http/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/k;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v0, " "

    invoke-direct {v1, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/k;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/k;->b(I)V

    const-string v0, ""

    :goto_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/k;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method
