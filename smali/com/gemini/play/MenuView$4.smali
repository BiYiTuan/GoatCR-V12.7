.class final Lcom/gemini/play/MenuView$4;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MenuView;->fontActivity(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_this:Landroid/content/Context;

.field final synthetic val$fontSeekBar:Landroid/widget/SeekBar;

.field final synthetic val$fontTextView:Landroid/widget/TextView;

.field final synthetic val$rate:F

.field final synthetic val$sizeTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;Landroid/content/Context;Landroid/widget/TextView;FLandroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/gemini/play/MenuView$4;->val$fontSeekBar:Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/gemini/play/MenuView$4;->val$_this:Landroid/content/Context;

    iput-object p3, p0, Lcom/gemini/play/MenuView$4;->val$fontTextView:Landroid/widget/TextView;

    iput p4, p0, Lcom/gemini/play/MenuView$4;->val$rate:F

    iput-object p5, p0, Lcom/gemini/play/MenuView$4;->val$sizeTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/16 v3, 0x1e

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fontsize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 338
    if-ge p2, v3, :cond_0

    .line 339
    iget-object v1, p0, Lcom/gemini/play/MenuView$4;->val$fontSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/MenuView$4;->val$_this:Landroid/content/Context;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 342
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "fontsize"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 343
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 345
    iget-object v1, p0, Lcom/gemini/play/MenuView$4;->val$fontTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41400000    # 12.0f

    iget v3, p0, Lcom/gemini/play/MenuView$4;->val$rate:F

    mul-float/2addr v2, v3

    int-to-float v3, p2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 346
    iget-object v1, p0, Lcom/gemini/play/MenuView$4;->val$sizeTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 353
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 358
    return-void
.end method
