.class public Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;
.super Ljava/lang/Object;
.source "OfferResolutionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvailableOffer"
.end annotation


# instance fields
.field public final docid:Lcom/google/android/finsky/protos/Common$Docid;

.field public final docidStr:Ljava/lang/String;

.field public final offer:Lcom/google/android/finsky/protos/Common$Offer;

.field public final serverLogsCookie:[B


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;Lcom/google/android/finsky/protos/Common$Offer;[B)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/protos/Common$Docid;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/finsky/protos/Common$Offer;
    .param p4    # [B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iput-object p2, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->docidStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->offer:Lcom/google/android/finsky/protos/Common$Offer;

    iput-object p4, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->serverLogsCookie:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;Lcom/google/android/finsky/protos/Common$Offer;[BLcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/protos/Common$Docid;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/finsky/protos/Common$Offer;
    .param p4    # [B
    .param p5    # Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$1;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;-><init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;Lcom/google/android/finsky/protos/Common$Offer;[B)V

    return-void
.end method
