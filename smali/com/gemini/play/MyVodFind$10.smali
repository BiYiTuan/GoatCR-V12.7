.class Lcom/gemini/play/MyVodFind$10;
.super Ljava/lang/Object;
.source "MyVodFind.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodFind;->init(Landroid/content/Context;Lcom/gemini/play/ListViewInterface;Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodFind;

.field final synthetic val$rate:F


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFind;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/gemini/play/MyVodFind$10;->this$0:Lcom/gemini/play/MyVodFind;

    iput p2, p0, Lcom/gemini/play/MyVodFind$10;->val$rate:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 218
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spinner_sort:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    move-object v0, p2

    .line 219
    check-cast v0, Landroid/widget/TextView;

    .line 220
    .local v0, "tv":Landroid/widget/TextView;
    iget v1, p0, Lcom/gemini/play/MyVodFind$10;->val$rate:F

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 221
    iget-object v1, p0, Lcom/gemini/play/MyVodFind$10;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v1, p3}, Lcom/gemini/play/MyVodFind;->access$402(Lcom/gemini/play/MyVodFind;I)I

    .line 222
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
    .line 225
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
