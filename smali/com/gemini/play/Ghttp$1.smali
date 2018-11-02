.class final Lcom/gemini/play/Ghttp$1;
.super Ljava/lang/Thread;
.source "Ghttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/Ghttp;->play(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$http_url_playlist:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/gemini/play/Ghttp$1;->val$http_url_playlist:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/Ghttp$1;->val$http_url_playlist:Ljava/lang/String;

    invoke-static {v0}, Lcom/gemini/play/Ghttp;->access$000(Ljava/lang/String;)V

    .line 30
    return-void
.end method
