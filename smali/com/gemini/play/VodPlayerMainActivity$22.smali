.class Lcom/gemini/play/VodPlayerMainActivity$22;
.super Ljava/lang/Object;
.source "VodPlayerMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerMainActivity;->exitActivity2()V
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
    .line 754
    iput-object p1, p0, Lcom/gemini/play/VodPlayerMainActivity$22;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity$22;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$1202(Lcom/gemini/play/VodPlayerMainActivity;Z)Z

    .line 757
    return-void
.end method
