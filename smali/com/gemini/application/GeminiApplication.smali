.class public Lcom/gemini/application/GeminiApplication;
.super Landroid/app/Application;
.source "GeminiApplication.java"


# static fields
.field public static memoryCacheSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemoryCacheSize()I
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-int v0, v2

    .line 31
    .local v0, "maxMemory":I
    div-int/lit8 v1, v0, 0x4

    return v1
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 19
    invoke-virtual {p0}, Lcom/gemini/application/GeminiApplication;->getMemoryCacheSize()I

    move-result v0

    sput v0, Lcom/gemini/application/GeminiApplication;->memoryCacheSize:I

    .line 24
    return-void
.end method
