.class Lcom/gemini/play/Launcher2Activity$7;
.super Ljava/lang/Object;
.source "Launcher2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/Launcher2Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/Launcher2Activity;


# direct methods
.method constructor <init>(Lcom/gemini/play/Launcher2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/Launcher2Activity;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/gemini/play/Launcher2Activity$7;->this$0:Lcom/gemini/play/Launcher2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity$7;->this$0:Lcom/gemini/play/Launcher2Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gemini/play/Launcher2Activity;->access$202(Lcom/gemini/play/Launcher2Activity;Z)Z

    .line 394
    return-void
.end method
