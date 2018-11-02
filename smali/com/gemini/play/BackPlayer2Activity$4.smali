.class Lcom/gemini/play/BackPlayer2Activity$4;
.super Ljava/lang/Object;
.source "BackPlayer2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/BackPlayer2Activity;->init_ui()V
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
    .line 180
    iput-object p1, p0, Lcom/gemini/play/BackPlayer2Activity$4;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$4;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-virtual {v0}, Lcom/gemini/play/BackPlayer2Activity;->exitActivity()V

    .line 185
    return-void
.end method
