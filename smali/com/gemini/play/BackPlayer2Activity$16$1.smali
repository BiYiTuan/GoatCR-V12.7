.class Lcom/gemini/play/BackPlayer2Activity$16$1;
.super Ljava/lang/Object;
.source "BackPlayer2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/BackPlayer2Activity$16;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/BackPlayer2Activity$16;


# direct methods
.method constructor <init>(Lcom/gemini/play/BackPlayer2Activity$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/BackPlayer2Activity$16;

    .prologue
    .line 788
    iput-object p1, p0, Lcom/gemini/play/BackPlayer2Activity$16$1;->this$1:Lcom/gemini/play/BackPlayer2Activity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$16$1;->this$1:Lcom/gemini/play/BackPlayer2Activity$16;

    iget-object v0, v0, Lcom/gemini/play/BackPlayer2Activity$16;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-virtual {v0}, Lcom/gemini/play/BackPlayer2Activity;->finish()V

    .line 791
    return-void
.end method
