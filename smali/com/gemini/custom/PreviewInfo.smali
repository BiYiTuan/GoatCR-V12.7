.class Lcom/gemini/custom/PreviewInfo;
.super Ljava/lang/Object;
.source "quanxing.java"


# instance fields
.field private date:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private week:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput-object v0, p0, Lcom/gemini/custom/PreviewInfo;->id:Ljava/lang/String;

    .line 608
    iput-object v0, p0, Lcom/gemini/custom/PreviewInfo;->week:Ljava/lang/String;

    .line 609
    iput-object v0, p0, Lcom/gemini/custom/PreviewInfo;->time:Ljava/lang/String;

    .line 610
    iput-object v0, p0, Lcom/gemini/custom/PreviewInfo;->name:Ljava/lang/String;

    .line 611
    iput-object v0, p0, Lcom/gemini/custom/PreviewInfo;->date:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/gemini/custom/PreviewInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/gemini/custom/PreviewInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/gemini/custom/PreviewInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/gemini/custom/PreviewInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/gemini/custom/PreviewInfo;->week:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/gemini/custom/PreviewInfo;->date:Ljava/lang/String;

    .line 652
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/gemini/custom/PreviewInfo;->id:Ljava/lang/String;

    .line 619
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/gemini/custom/PreviewInfo;->name:Ljava/lang/String;

    .line 643
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/gemini/custom/PreviewInfo;->time:Ljava/lang/String;

    .line 635
    return-void
.end method

.method public setWeek(Ljava/lang/String;)V
    .locals 0
    .param p1, "week"    # Ljava/lang/String;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/gemini/custom/PreviewInfo;->week:Ljava/lang/String;

    .line 627
    return-void
.end method
