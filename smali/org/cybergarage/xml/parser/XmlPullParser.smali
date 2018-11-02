.class public Lorg/cybergarage/xml/parser/XmlPullParser;
.super Lorg/cybergarage/xml/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/xml/c;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/b;
    .locals 2

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/xml/parser/XmlPullParser;->parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;)Lorg/cybergarage/xml/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/cybergarage/xml/ParserException;

    invoke-direct {v1, v0}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;)Lorg/cybergarage/xml/b;
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move-object v3, v1

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    packed-switch v1, :pswitch_data_0

    move-object v1, v3

    move-object v2, v0

    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move-object v3, v1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :pswitch_0
    new-instance v1, Lorg/cybergarage/xml/b;

    invoke-direct {v1}, Lorg/cybergarage/xml/b;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/cybergarage/xml/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    :cond_3
    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    move-object v2, v0

    goto :goto_1

    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    :cond_5
    move-object v1, v3

    move-object v2, v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {v3}, Lorg/cybergarage/xml/b;->a()Lorg/cybergarage/xml/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/cybergarage/xml/ParserException;

    invoke-direct {v1, v0}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
