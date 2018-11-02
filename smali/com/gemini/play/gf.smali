.class Lcom/gemini/play/gf;
.super Ljava/lang/Object;
.source "MGplayer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const-string v0, "tcp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native end(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native start(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public native url()Ljava/lang/String;
.end method
