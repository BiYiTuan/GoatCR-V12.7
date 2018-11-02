.class Lcom/gemini/play/MyVodTypeView$3;
.super Ljava/lang/Object;
.source "MyVodTypeView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodTypeView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodTypeView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodTypeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodTypeView;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView$3;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 251
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    const-string v0, "setOnFocusChangeListener = false"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_0
.end method
