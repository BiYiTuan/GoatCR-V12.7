.class Lcom/gemini/play/BackPlayer2Activity$12;
.super Ljava/lang/Object;
.source "BackPlayer2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/BackPlayer2Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/BackPlayer2Activity;


# direct methods
.method constructor <init>(Lcom/gemini/play/BackPlayer2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/BackPlayer2Activity;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/gemini/play/BackPlayer2Activity$12;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$12;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gemini/play/BackPlayer2Activity;->access$502(Lcom/gemini/play/BackPlayer2Activity;Z)Z

    .line 509
    return-void
.end method
