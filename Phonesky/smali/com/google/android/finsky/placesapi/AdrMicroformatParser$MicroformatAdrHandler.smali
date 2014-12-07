.class Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AdrMicroformatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/placesapi/AdrMicroformatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MicroformatAdrHandler"
.end annotation


# instance fields
.field private mAggregatedText:Ljava/lang/StringBuilder;

.field private mCurrentType:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

.field parts:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->parts:Ljava/util/LinkedList;

    sget-object v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->SEPARATOR:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    iput-object v0, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->mCurrentType:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->mAggregatedText:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/placesapi/AdrMicroformatParser$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/placesapi/AdrMicroformatParser$1;

    invoke-direct {p0}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;-><init>()V

    return-void
.end method

.method private finishPart()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->mAggregatedText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->parts:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;

    iget-object v2, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->mAggregatedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->mCurrentType:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;-><init>(Ljava/lang/String;Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->mAggregatedText:Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1    # [C
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->mAggregatedText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endDocument()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->finishPart()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->mCurrentType:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    sget-object v1, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->SEPARATOR:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->finishPart()V

    sget-object v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->SEPARATOR:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    iput-object v0, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->mCurrentType:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->mCurrentType:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    sget-object v3, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->SEPARATOR:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    if-eq v2, v3, :cond_0

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid nested element."

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string v2, "class"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    # getter for: Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->ADR_TYPE_MAP:Ljava/util/HashMap;
    invoke-static {}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->access$100()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->UNKNOWN:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->finishPart()V

    iput-object v1, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->mCurrentType:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    :cond_2
    return-void
.end method
