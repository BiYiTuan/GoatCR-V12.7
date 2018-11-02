.class Lcom/gemini/play/MyVodFindView$15;
.super Ljava/lang/Object;
.source "MyVodFindView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodFindView;->initTypeSpinner(Lcom/gemini/play/VodTypeStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodFindView;

.field final synthetic val$rate:F


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFindView;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/gemini/play/MyVodFindView$15;->this$0:Lcom/gemini/play/MyVodFindView;

    iput p2, p0, Lcom/gemini/play/MyVodFindView$15;->val$rate:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spinner_year:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/gemini/play/MyVodFindView$15;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-static {v1, p3}, Lcom/gemini/play/MyVodFindView;->access$402(Lcom/gemini/play/MyVodFindView;I)I

    move-object v0, p2

    .line 441
    check-cast v0, Landroid/widget/TextView;

    .line 442
    .local v0, "tv":Landroid/widget/TextView;
    iget v1, p0, Lcom/gemini/play/MyVodFindView$15;->val$rate:F

    float-to-double v2, v1

    const-wide v4, 0x401b333333333333L    # 6.8

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 443
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
