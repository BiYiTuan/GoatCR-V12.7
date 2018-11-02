.class Lcom/gemini/custom/XmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "quanxing.java"


# instance fields
.field private date:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gemini/custom/PreviewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private week:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 538
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 539
    iput-object v0, p0, Lcom/gemini/custom/XmlHandler;->infos:Ljava/util/List;

    .line 540
    iput-object v0, p0, Lcom/gemini/custom/XmlHandler;->week:Ljava/lang/String;

    .line 541
    iput-object v0, p0, Lcom/gemini/custom/XmlHandler;->id:Ljava/lang/String;

    .line 542
    iput-object v0, p0, Lcom/gemini/custom/XmlHandler;->date:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 552
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 556
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 557
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 562
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public getInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gemini/custom/PreviewInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/gemini/custom/XmlHandler;->infos:Ljava/util/List;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/custom/XmlHandler;->infos:Ljava/util/List;

    .line 570
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 575
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 577
    const-string v1, "Epg"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    const-string v1, "ID"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gemini/custom/XmlHandler;->id:Ljava/lang/String;

    .line 580
    :cond_0
    const-string v1, "Week1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Week2"

    .line 581
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Week3"

    .line 582
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Week4"

    .line 583
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Week5"

    .line 584
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Week6"

    .line 585
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Week7"

    .line 586
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 587
    :cond_1
    iput-object p2, p0, Lcom/gemini/custom/XmlHandler;->week:Ljava/lang/String;

    .line 590
    :cond_2
    const-string v1, "date"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 591
    const-string v1, "day"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gemini/custom/XmlHandler;->date:Ljava/lang/String;

    .line 594
    :cond_3
    const-string v1, "Item"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 595
    new-instance v0, Lcom/gemini/custom/PreviewInfo;

    invoke-direct {v0}, Lcom/gemini/custom/PreviewInfo;-><init>()V

    .line 596
    .local v0, "info":Lcom/gemini/custom/PreviewInfo;
    iget-object v1, p0, Lcom/gemini/custom/XmlHandler;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gemini/custom/PreviewInfo;->setId(Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/gemini/custom/XmlHandler;->week:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gemini/custom/PreviewInfo;->setWeek(Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Lcom/gemini/custom/XmlHandler;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gemini/custom/PreviewInfo;->setDate(Ljava/lang/String;)V

    .line 599
    const-string v1, "Time"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/custom/PreviewInfo;->setTime(Ljava/lang/String;)V

    .line 600
    const-string v1, "Name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/custom/PreviewInfo;->setName(Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/gemini/custom/XmlHandler;->infos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    .end local v0    # "info":Lcom/gemini/custom/PreviewInfo;
    :cond_4
    return-void
.end method
