.class Lcom/gemini/play/VodPlayerMainActivity$16;
.super Ljava/lang/Object;
.source "VodPlayerMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerMainActivity;->timeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerMainActivity;

.field final synthetic val$timeHander:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerMainActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/gemini/play/VodPlayerMainActivity$16;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    iput-object p2, p0, Lcom/gemini/play/VodPlayerMainActivity$16;->val$timeHander:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time now = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gemini/play/MGplayer;->time_now:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$16;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    const v2, 0x7f070165

    invoke-virtual {v1, v2}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 327
    .local v0, "timetext":Landroid/widget/TextView;
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 328
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$16;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 329
    sget-object v1, Lcom/gemini/play/MGplayer;->time_now:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$16;->val$timeHander:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    return-void
.end method
