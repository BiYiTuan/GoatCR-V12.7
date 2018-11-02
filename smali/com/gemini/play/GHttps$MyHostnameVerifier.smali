.class Lcom/gemini/play/GHttps$MyHostnameVerifier;
.super Ljava/lang/Object;
.source "GHttps.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/GHttps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHostnameVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/GHttps;


# direct methods
.method private constructor <init>(Lcom/gemini/play/GHttps;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/gemini/play/GHttps$MyHostnameVerifier;->this$0:Lcom/gemini/play/GHttps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method
