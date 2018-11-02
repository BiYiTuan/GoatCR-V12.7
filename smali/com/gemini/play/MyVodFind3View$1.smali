.class Lcom/gemini/play/MyVodFind3View$1;
.super Ljava/lang/Object;
.source "MyVodFind3View.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodFind3View;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodFind3View;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFind3View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFind3View;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/gemini/play/MyVodFind3View$1;->this$0:Lcom/gemini/play/MyVodFind3View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 87
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 92
    :cond_0
    return-void
.end method
