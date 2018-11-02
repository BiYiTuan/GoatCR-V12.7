.class public Lorg/cybergarage/xml/d;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/cybergarage/xml/d;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    new-array v6, v5, [C

    invoke-virtual {p0, v0, v5, v6, v0}, Ljava/lang/String;->getChars(II[CI)V

    move v3, v0

    move v2, v0

    move-object v0, v1

    :goto_1
    if-ge v3, v5, :cond_4

    aget-char v7, v6, v3

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    sub-int v7, v3, v2

    invoke-virtual {v4, v6, v2, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x1

    move v2, v0

    move-object v0, v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "&amp;"

    goto :goto_2

    :sswitch_1
    const-string v0, "&lt;"

    goto :goto_2

    :sswitch_2
    const-string v0, "&gt;"

    goto :goto_2

    :sswitch_3
    if-eqz p1, :cond_3

    const-string v0, "&apos;"

    goto :goto_2

    :cond_3
    :sswitch_4
    if-eqz p1, :cond_1

    const-string v0, "&quot;"

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    move-object v1, p0

    goto :goto_0

    :cond_5
    sub-int v0, v5, v2

    invoke-virtual {v4, v6, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_0
        0x27 -> :sswitch_3
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method
