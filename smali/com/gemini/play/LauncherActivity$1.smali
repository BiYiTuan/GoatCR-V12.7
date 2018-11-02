.class Lcom/gemini/play/LauncherActivity$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LauncherActivity;->timeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/LauncherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LauncherActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/gemini/play/LauncherActivity$1;->this$0:Lcom/gemini/play/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time now = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gemini/play/MGplayer;->time_now:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 82
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 83
    .local v0, "rate":I
    iget-object v2, p0, Lcom/gemini/play/LauncherActivity$1;->this$0:Lcom/gemini/play/LauncherActivity;

    const v3, 0x7f070165

    invoke-virtual {v2, v3}, Lcom/gemini/play/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 84
    .local v1, "timetext":Landroid/widget/TextView;
    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 85
    sget-object v2, Lcom/gemini/play/MGplayer;->time_now:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, p0, Lcom/gemini/play/LauncherActivity$1;->this$0:Lcom/gemini/play/LauncherActivity;

    invoke-static {v2}, Lcom/gemini/play/LauncherActivity;->access$000(Lcom/gemini/play/LauncherActivity;)Lcom/gemini/play/MyHomeBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gemini/play/MyHomeBar;->flash()V

    .line 88
    return-void
.end method
