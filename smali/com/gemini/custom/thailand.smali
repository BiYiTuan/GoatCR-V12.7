.class public Lcom/gemini/custom/thailand;
.super Ljava/lang/Object;
.source "thailand.java"


# static fields
.field public static epgList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://deng506.jthgffgweb.com:18006/gemini-iptv/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://hezidenglu.vipiwj21q9b3.com:18006/gemini-iptv/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://utjgf.jthgffgweb.com:81/gemini-iptv/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://jtrdfv5.vipiwj21q9b3.com:81/gemini-iptv/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/gemini/custom/thailand;->epgList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
