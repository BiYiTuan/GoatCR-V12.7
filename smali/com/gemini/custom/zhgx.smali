.class public Lcom/gemini/custom/zhgx;
.super Ljava/lang/Object;
.source "zhgx.java"


# static fields
.field public static epg_dir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string v0, "gemini-iptv/"

    sput-object v0, Lcom/gemini/custom/zhgx;->epg_dir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
