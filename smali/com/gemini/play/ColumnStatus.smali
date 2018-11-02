.class Lcom/gemini/play/ColumnStatus;
.super Ljava/lang/Object;
.source "VODplayer.java"


# instance fields
.field id:I

.field name:Ljava/lang/String;

.field needps:I

.field password:Ljava/lang/String;

.field type_area:Ljava/lang/String;

.field type_type:Ljava/lang/String;

.field type_year:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v1, p0, Lcom/gemini/play/ColumnStatus;->id:I

    .line 90
    iput-object v0, p0, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/gemini/play/ColumnStatus;->needps:I

    .line 92
    iput-object v0, p0, Lcom/gemini/play/ColumnStatus;->password:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/gemini/play/ColumnStatus;->type_year:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/gemini/play/ColumnStatus;->type_area:Ljava/lang/String;

    return-void
.end method
