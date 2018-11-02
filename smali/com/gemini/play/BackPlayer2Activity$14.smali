.class Lcom/gemini/play/BackPlayer2Activity$14;
.super Ljava/lang/Object;
.source "BackPlayer2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/BackPlayer2Activity;->setListviewSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/BackPlayer2Activity;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/gemini/play/BackPlayer2Activity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/BackPlayer2Activity;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/gemini/play/BackPlayer2Activity$14;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    iput p2, p0, Lcom/gemini/play/BackPlayer2Activity$14;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$14;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v0}, Lcom/gemini/play/BackPlayer2Activity;->access$300(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/MyBackListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyBackListView;->requestFocusFromTouch()Z

    .line 709
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity$14;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v0}, Lcom/gemini/play/BackPlayer2Activity;->access$300(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/MyBackListView;

    move-result-object v0

    iget v1, p0, Lcom/gemini/play/BackPlayer2Activity$14;->val$i:I

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyBackListView;->setSelection(I)V

    .line 710
    return-void
.end method
