.class public final Lcom/google/android/exoplayer/text/webvtt/WebvttParser;
.super Ljava/lang/Object;
.source "WebvttParser.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/text/webvtt/WebvttParser$1;,
        Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;
    }
.end annotation


# static fields
.field private static final CUE_SETTING:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "WebvttParser"


# instance fields
.field private final cueParser:Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;

.field private final positionHolder:Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;

.field private final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "(\\S+?):(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->CUE_SETTING:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->cueParser:Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;

    .line 52
    new-instance v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;-><init>(Lcom/google/android/exoplayer/text/webvtt/WebvttParser$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->positionHolder:Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->textBuilder:Ljava/lang/StringBuilder;

    .line 54
    return-void
.end method

.method private static alignmentToAnchor(Landroid/text/Layout$Alignment;)I
    .locals 4
    .param p0, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    const/4 v0, 0x0

    .line 224
    if-nez p0, :cond_0

    .line 225
    const/high16 v0, -0x80000000

    .line 236
    :goto_0
    :pswitch_0
    return v0

    .line 227
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 235
    const-string v1, "WebvttParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized alignment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static parseLineAttribute(Ljava/lang/String;Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;)V
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "out"    # Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 149
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, "commaPosition":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 151
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v2

    .line 152
    .local v2, "lineAnchor":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 158
    :goto_0
    const-string v4, "%"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    invoke-static {p0}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    .line 160
    .local v1, "line":F
    const/4 v3, 0x0

    .line 165
    .local v3, "lineType":I
    :goto_1
    iput v1, p1, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;->position:F

    .line 166
    iput v2, p1, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;->positionAnchor:I

    .line 167
    iput v3, p1, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;->lineType:I

    .line 168
    return-void

    .line 154
    .end local v1    # "line":F
    .end local v2    # "lineAnchor":I
    .end local v3    # "lineType":I
    :cond_0
    const/high16 v2, -0x80000000

    .restart local v2    # "lineAnchor":I
    goto :goto_0

    .line 162
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v1, v4

    .line 163
    .restart local v1    # "line":F
    const/4 v3, 0x1

    .restart local v3    # "lineType":I
    goto :goto_1
.end method

.method private static parsePercentage(Ljava/lang/String;)F
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 186
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Percentages must end with %"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 190
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private static parsePositionAnchor(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 194
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 202
    const-string v0, "WebvttParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid anchor value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/high16 v0, -0x80000000

    :goto_1
    :pswitch_0
    return v0

    .line 194
    :sswitch_0
    const-string v4, "start"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string v4, "middle"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "end"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 198
    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 200
    goto :goto_1

    .line 194
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4009266b -> :sswitch_1
        0x188db -> :sswitch_2
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static parsePositionAttribute(Ljava/lang/String;Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "out"    # Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 173
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "commaPosition":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 175
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, "positionAnchor":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 180
    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parsePercentage(Ljava/lang/String;)F

    move-result v2

    iput v2, p1, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;->position:F

    .line 181
    iput v1, p1, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;->positionAnchor:I

    .line 182
    const/high16 v2, -0x80000000

    iput v2, p1, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;->lineType:I

    .line 183
    return-void

    .line 178
    .end local v1    # "positionAnchor":I
    :cond_0
    const/high16 v1, -0x80000000

    .restart local v1    # "positionAnchor":I
    goto :goto_0
.end method

.method private static parseTextAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 218
    const-string v0, "WebvttParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid alignment value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 208
    :sswitch_0
    const-string v1, "start"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "middle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "end"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 211
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 213
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 216
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 208
    :sswitch_data_0
    .sparse-switch
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_4
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final canParse(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "text/vtt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parse(Ljava/io/InputStream;)Lcom/google/android/exoplayer/text/Subtitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parse(Ljava/io/InputStream;)Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/io/InputStream;)Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;
    .locals 28
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v24, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/InputStreamReader;

    const-string v26, "UTF-8"

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct/range {v24 .. v25}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 66
    .local v24, "webvttData":Ljava/io/BufferedReader;
    invoke-static/range {v24 .. v24}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Ljava/io/BufferedReader;)V

    .line 67
    :cond_0
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 70
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v22, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/text/webvtt/WebvttCue;>;"
    :goto_0
    invoke-static/range {v24 .. v24}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->findNextCueHeader(Ljava/io/BufferedReader;)Ljava/util/regex/Matcher;

    move-result-object v4

    .local v4, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    if-eqz v4, :cond_9

    .line 77
    const/16 v25, 0x1

    :try_start_0
    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v6

    .line 78
    .local v6, "cueStartTime":J
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 85
    .local v8, "cueEndTime":J
    const/4 v11, 0x0

    .line 86
    .local v11, "cueTextAlignment":Landroid/text/Layout$Alignment;
    const/4 v12, 0x1

    .line 87
    .local v12, "cueLine":F
    const/high16 v13, -0x80000000

    .line 88
    .local v13, "cueLineType":I
    const/high16 v14, -0x80000000

    .line 89
    .local v14, "cueLineAnchor":I
    const/4 v15, 0x1

    .line 90
    .local v15, "cuePosition":F
    const/high16 v16, -0x80000000

    .line 91
    .local v16, "cuePositionAnchor":I
    const/16 v17, 0x1

    .line 94
    .local v17, "cueWidth":F
    sget-object v25, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->CUE_SETTING:Ljava/util/regex/Pattern;

    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 95
    .local v18, "cueSettingMatcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 96
    const/16 v25, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    .line 97
    .local v21, "name":Ljava/lang/String;
    const/16 v25, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    .line 99
    .local v23, "value":Ljava/lang/String;
    :try_start_1
    const-string v25, "line"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->positionHolder:Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parseLineAttribute(Ljava/lang/String;Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->positionHolder:Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v12, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;->position:F

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->positionHolder:Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v13, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;->lineType:I

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->positionHolder:Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v14, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;->positionAnchor:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 79
    .end local v6    # "cueStartTime":J
    .end local v8    # "cueEndTime":J
    .end local v11    # "cueTextAlignment":Landroid/text/Layout$Alignment;
    .end local v12    # "cueLine":F
    .end local v13    # "cueLineType":I
    .end local v14    # "cueLineAnchor":I
    .end local v15    # "cuePosition":F
    .end local v16    # "cuePositionAnchor":I
    .end local v17    # "cueWidth":F
    .end local v18    # "cueSettingMatcher":Ljava/util/regex/Matcher;
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 80
    .local v19, "e":Ljava/lang/NumberFormatException;
    const-string v25, "WebvttParser"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Skipping cue with bad header: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 104
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "cueStartTime":J
    .restart local v8    # "cueEndTime":J
    .restart local v11    # "cueTextAlignment":Landroid/text/Layout$Alignment;
    .restart local v12    # "cueLine":F
    .restart local v13    # "cueLineType":I
    .restart local v14    # "cueLineAnchor":I
    .restart local v15    # "cuePosition":F
    .restart local v16    # "cuePositionAnchor":I
    .restart local v17    # "cueWidth":F
    .restart local v18    # "cueSettingMatcher":Ljava/util/regex/Matcher;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v23    # "value":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v25, "align"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 105
    invoke-static/range {v23 .. v23}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parseTextAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v11

    goto/16 :goto_1

    .line 106
    :cond_2
    const-string v25, "position"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->positionHolder:Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parsePositionAttribute(Ljava/lang/String;Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->positionHolder:Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v15, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;->position:F

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->positionHolder:Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;->positionAnchor:I

    move/from16 v16, v0

    goto/16 :goto_1

    .line 110
    :cond_3
    const-string v25, "size"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 111
    invoke-static/range {v23 .. v23}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parsePercentage(Ljava/lang/String;)F

    move-result v17

    goto/16 :goto_1

    .line 113
    :cond_4
    const-string v25, "WebvttParser"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unknown cue setting "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 115
    :catch_1
    move-exception v19

    .line 116
    .restart local v19    # "e":Ljava/lang/NumberFormatException;
    const-string v25, "WebvttParser"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Skipping bad cue setting: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 120
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :cond_5
    const/16 v25, 0x1

    cmpl-float v25, v15, v25

    if-eqz v25, :cond_6

    const/high16 v25, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 123
    invoke-static {v11}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->alignmentToAnchor(Landroid/text/Layout$Alignment;)I

    move-result v16

    .line 127
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 129
    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, "line":Ljava/lang/String;
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_8

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_7

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v25, v0

    const-string v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v25, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 136
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->cueParser:Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->parse(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    .line 138
    .local v10, "cueText":Ljava/lang/CharSequence;
    new-instance v5, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;

    invoke-direct/range {v5 .. v17}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    .line 140
    .local v5, "cue":Lcom/google/android/exoplayer/text/webvtt/WebvttCue;
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 143
    .end local v5    # "cue":Lcom/google/android/exoplayer/text/webvtt/WebvttCue;
    .end local v6    # "cueStartTime":J
    .end local v8    # "cueEndTime":J
    .end local v10    # "cueText":Ljava/lang/CharSequence;
    .end local v11    # "cueTextAlignment":Landroid/text/Layout$Alignment;
    .end local v12    # "cueLine":F
    .end local v13    # "cueLineType":I
    .end local v14    # "cueLineAnchor":I
    .end local v15    # "cuePosition":F
    .end local v16    # "cuePositionAnchor":I
    .end local v17    # "cueWidth":F
    .end local v18    # "cueSettingMatcher":Ljava/util/regex/Matcher;
    .end local v20    # "line":Ljava/lang/String;
    :cond_9
    new-instance v25, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object v25
.end method
