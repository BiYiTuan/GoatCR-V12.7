.class Lcom/gemini/custom/CookieStatus;
.super Ljava/lang/Object;
.source "lookiptv.java"


# instance fields
.field cookie:Ljava/lang/String;

.field ret:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/gemini/custom/CookieStatus;->ret:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/gemini/custom/CookieStatus;->cookie:Ljava/lang/String;

    return-void
.end method
