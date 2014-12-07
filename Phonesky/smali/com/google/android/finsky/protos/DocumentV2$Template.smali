.class public final Lcom/google/android/finsky/protos/DocumentV2$Template;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocumentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocumentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Template"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$Template;


# instance fields
.field public addToCirclesContainer:Lcom/google/android/finsky/protos/DocumentV2$AddToCirclesContainer;

.field public containerWithBanner:Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;

.field public dealOfTheDay:Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;

.field public editorialSeriesContainer:Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

.field public nextBanner:Lcom/google/android/finsky/protos/DocumentV2$NextBanner;

.field public rateAndSuggestContainer:Lcom/google/android/finsky/protos/DocumentV2$RateAndSuggestContainer;

.field public rateContainer:Lcom/google/android/finsky/protos/DocumentV2$RateContainer;

.field public recommendationsContainer:Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

.field public seriesAntenna:Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;

.field public tileDetailsReflectedGraphic2X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

.field public tileFourBlock4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

.field public tileGraphic2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

.field public tileGraphic4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

.field public tileGraphicColoredTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

.field public tileGraphicColoredTitle4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

.field public tileGraphicUpperLeftTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

.field public trustedSourceContainer:Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocumentV2$Template;

    sput-object v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$Template;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocumentV2$Template;->clear()Lcom/google/android/finsky/protos/DocumentV2$Template;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocumentV2$Template;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->seriesAntenna:Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicUpperLeftTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileDetailsReflectedGraphic2X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileFourBlock4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->containerWithBanner:Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->dealOfTheDay:Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->editorialSeriesContainer:Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->recommendationsContainer:Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->nextBanner:Lcom/google/android/finsky/protos/DocumentV2$NextBanner;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateContainer:Lcom/google/android/finsky/protos/DocumentV2$RateContainer;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateAndSuggestContainer:Lcom/google/android/finsky/protos/DocumentV2$RateAndSuggestContainer;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->addToCirclesContainer:Lcom/google/android/finsky/protos/DocumentV2$AddToCirclesContainer;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->trustedSourceContainer:Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->seriesAntenna:Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->seriesAntenna:Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicUpperLeftTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicUpperLeftTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileDetailsReflectedGraphic2X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileDetailsReflectedGraphic2X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileFourBlock4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileFourBlock4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->containerWithBanner:Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->containerWithBanner:Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->dealOfTheDay:Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->dealOfTheDay:Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->editorialSeriesContainer:Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->editorialSeriesContainer:Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->recommendationsContainer:Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->recommendationsContainer:Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->nextBanner:Lcom/google/android/finsky/protos/DocumentV2$NextBanner;

    if-eqz v1, :cond_c

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->nextBanner:Lcom/google/android/finsky/protos/DocumentV2$NextBanner;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateContainer:Lcom/google/android/finsky/protos/DocumentV2$RateContainer;

    if-eqz v1, :cond_d

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateContainer:Lcom/google/android/finsky/protos/DocumentV2$RateContainer;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->addToCirclesContainer:Lcom/google/android/finsky/protos/DocumentV2$AddToCirclesContainer;

    if-eqz v1, :cond_e

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->addToCirclesContainer:Lcom/google/android/finsky/protos/DocumentV2$AddToCirclesContainer;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->trustedSourceContainer:Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;

    if-eqz v1, :cond_f

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->trustedSourceContainer:Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateAndSuggestContainer:Lcom/google/android/finsky/protos/DocumentV2$RateAndSuggestContainer;

    if-eqz v1, :cond_10

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateAndSuggestContainer:Lcom/google/android/finsky/protos/DocumentV2$RateAndSuggestContainer;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$Template;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->seriesAntenna:Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->seriesAntenna:Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->seriesAntenna:Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicUpperLeftTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicUpperLeftTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicUpperLeftTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileDetailsReflectedGraphic2X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileDetailsReflectedGraphic2X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileDetailsReflectedGraphic2X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileFourBlock4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-nez v1, :cond_7

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileFourBlock4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileFourBlock4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->containerWithBanner:Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;

    if-nez v1, :cond_8

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->containerWithBanner:Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->containerWithBanner:Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->dealOfTheDay:Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;

    if-nez v1, :cond_9

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->dealOfTheDay:Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->dealOfTheDay:Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-nez v1, :cond_a

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->editorialSeriesContainer:Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    if-nez v1, :cond_b

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->editorialSeriesContainer:Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    :cond_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->editorialSeriesContainer:Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->recommendationsContainer:Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

    if-nez v1, :cond_c

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->recommendationsContainer:Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

    :cond_c
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->recommendationsContainer:Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->nextBanner:Lcom/google/android/finsky/protos/DocumentV2$NextBanner;

    if-nez v1, :cond_d

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$NextBanner;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$NextBanner;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->nextBanner:Lcom/google/android/finsky/protos/DocumentV2$NextBanner;

    :cond_d
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->nextBanner:Lcom/google/android/finsky/protos/DocumentV2$NextBanner;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateContainer:Lcom/google/android/finsky/protos/DocumentV2$RateContainer;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$RateContainer;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$RateContainer;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateContainer:Lcom/google/android/finsky/protos/DocumentV2$RateContainer;

    :cond_e
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateContainer:Lcom/google/android/finsky/protos/DocumentV2$RateContainer;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->addToCirclesContainer:Lcom/google/android/finsky/protos/DocumentV2$AddToCirclesContainer;

    if-nez v1, :cond_f

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$AddToCirclesContainer;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$AddToCirclesContainer;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->addToCirclesContainer:Lcom/google/android/finsky/protos/DocumentV2$AddToCirclesContainer;

    :cond_f
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->addToCirclesContainer:Lcom/google/android/finsky/protos/DocumentV2$AddToCirclesContainer;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->trustedSourceContainer:Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;

    if-nez v1, :cond_10

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->trustedSourceContainer:Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;

    :cond_10
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->trustedSourceContainer:Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateAndSuggestContainer:Lcom/google/android/finsky/protos/DocumentV2$RateAndSuggestContainer;

    if-nez v1, :cond_11

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$RateAndSuggestContainer;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$RateAndSuggestContainer;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateAndSuggestContainer:Lcom/google/android/finsky/protos/DocumentV2$RateAndSuggestContainer;

    :cond_11
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateAndSuggestContainer:Lcom/google/android/finsky/protos/DocumentV2$RateAndSuggestContainer;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocumentV2$Template;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->seriesAntenna:Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->seriesAntenna:Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphic4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicUpperLeftTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicUpperLeftTitle2X1:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileDetailsReflectedGraphic2X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileDetailsReflectedGraphic2X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileFourBlock4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileFourBlock4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->containerWithBanner:Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->containerWithBanner:Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->dealOfTheDay:Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->dealOfTheDay:Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->tileGraphicColoredTitle4X2:Lcom/google/android/finsky/protos/DocumentV2$TileTemplate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->editorialSeriesContainer:Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->editorialSeriesContainer:Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->recommendationsContainer:Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->recommendationsContainer:Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->nextBanner:Lcom/google/android/finsky/protos/DocumentV2$NextBanner;

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->nextBanner:Lcom/google/android/finsky/protos/DocumentV2$NextBanner;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateContainer:Lcom/google/android/finsky/protos/DocumentV2$RateContainer;

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateContainer:Lcom/google/android/finsky/protos/DocumentV2$RateContainer;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->addToCirclesContainer:Lcom/google/android/finsky/protos/DocumentV2$AddToCirclesContainer;

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->addToCirclesContainer:Lcom/google/android/finsky/protos/DocumentV2$AddToCirclesContainer;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->trustedSourceContainer:Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->trustedSourceContainer:Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateAndSuggestContainer:Lcom/google/android/finsky/protos/DocumentV2$RateAndSuggestContainer;

    if-eqz v0, :cond_10

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateAndSuggestContainer:Lcom/google/android/finsky/protos/DocumentV2$RateAndSuggestContainer;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    return-void
.end method
