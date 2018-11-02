.class Lcom/gemini/play/MyHomeBar2$6;
.super Ljava/lang/Thread;
.source "MyHomeBar2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyHomeBar2;->showUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyHomeBar2;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyHomeBar2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyHomeBar2;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar2$6;->this$0:Lcom/gemini/play/MyHomeBar2;

    iput-object p2, p0, Lcom/gemini/play/MyHomeBar2$6;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/gemini/play/MyHomeBar2$6;->this$0:Lcom/gemini/play/MyHomeBar2;

    iget-object v2, p0, Lcom/gemini/play/MyHomeBar2$6;->val$url:Ljava/lang/String;

    const-string v3, "a"

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MyHomeBar2;->access$800(Lcom/gemini/play/MyHomeBar2;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
