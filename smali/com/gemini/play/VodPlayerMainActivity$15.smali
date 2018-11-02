.class Lcom/gemini/play/VodPlayerMainActivity$15;
.super Ljava/lang/Object;
.source "VodPlayerMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/gemini/play/VodPlayerMainActivity$15;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/gemini/play/VodPlayerMainActivity$15$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerMainActivity$15$1;-><init>(Lcom/gemini/play/VodPlayerMainActivity$15;)V

    .line 303
    invoke-virtual {v0}, Lcom/gemini/play/VodPlayerMainActivity$15$1;->start()V

    .line 304
    return-void
.end method
