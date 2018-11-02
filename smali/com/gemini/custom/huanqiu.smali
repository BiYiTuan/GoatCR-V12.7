.class public Lcom/gemini/custom/huanqiu;
.super Ljava/lang/Object;
.source "huanqiu.java"


# static fields
.field private static ss:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gemini/custom/huanqiu;->ss:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 5
    invoke-static {p0, p1}, Lcom/gemini/custom/huanqiu;->rp(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 5
    sget-boolean v0, Lcom/gemini/custom/huanqiu;->ss:Z

    return v0
.end method

.method public static init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huanqiu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 11
    sput v2, Lcom/gemini/play/MGplayer;->start_tvbus:I

    .line 13
    :cond_0
    return-void
.end method

.method private static rp(Ljava/lang/String;I)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "prime"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 72
    shl-int/lit8 v2, v0, 0x4

    shr-int/lit8 v3, v0, 0x1c

    xor-int/2addr v2, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int v0, v2, v3

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    rem-int v2, v0, p1

    return v2
.end method

.method public static s1()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/gemini/custom/huanqiu$1;

    invoke-direct {v0}, Lcom/gemini/custom/huanqiu$1;-><init>()V

    .line 38
    invoke-virtual {v0}, Lcom/gemini/custom/huanqiu$1;->start()V

    .line 39
    return-void
.end method

.method public static s2()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/gemini/play/MGplayer;->fu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->get_ip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    sget-object v1, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v1}, Lcom/gemini/play/MGplayer;->GetMacXml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gemini/play/MGplayer;->fe(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x1

    sput-boolean v1, Lcom/gemini/custom/huanqiu;->ss:Z

    .line 66
    :cond_0
    return-void
.end method

.method public static ss()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/gemini/custom/huanqiu$2;

    invoke-direct {v0}, Lcom/gemini/custom/huanqiu$2;-><init>()V

    .line 55
    invoke-virtual {v0}, Lcom/gemini/custom/huanqiu$2;->start()V

    .line 56
    return-void
.end method
