.class public Lcom/google/android/finsky/library/LibraryEntry;
.super Ljava/lang/Object;
.source "LibraryEntry.java"


# static fields
.field public static final UNKNOWN_ACCOUNT:Ljava/lang/String;


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private mBackendId:I

.field private mDocId:Ljava/lang/String;

.field private mDocType:I

.field private final mDocumentHash:J

.field private mLibraryId:Ljava/lang/String;

.field private mOfferType:I

.field private final mValidUntilTimestampMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/library/LibraryEntry;->UNKNOWN_ACCOUNT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 11
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # I

    const-wide/high16 v7, -0x8000000000000000L

    const-wide v9, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJ)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # I
    .param p7    # J
    .param p9    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryEntry;->mAccountName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryEntry;->mLibraryId:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/finsky/library/LibraryEntry;->mBackendId:I

    iput-object p4, p0, Lcom/google/android/finsky/library/LibraryEntry;->mDocId:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/finsky/library/LibraryEntry;->mDocType:I

    iput p6, p0, Lcom/google/android/finsky/library/LibraryEntry;->mOfferType:I

    iput-wide p7, p0, Lcom/google/android/finsky/library/LibraryEntry;->mDocumentHash:J

    iput-wide p9, p0, Lcom/google/android/finsky/library/LibraryEntry;->mValidUntilTimestampMs:J

    return-void
.end method

.method public static fromDocId(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/Common$Docid;I)Lcom/google/android/finsky/library/LibraryEntry;
    .locals 7
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/protos/Common$Docid;
    .param p3    # I

    new-instance v0, Lcom/google/android/finsky/library/LibraryEntry;

    iget v3, p2, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    iget-object v4, p2, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    iget v5, p2, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    move-object v1, p0

    move-object v2, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v0
.end method

.method public static fromDocument(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/library/LibraryEntry;
    .locals 7
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # I

    new-instance v0, Lcom/google/android/finsky/library/LibraryEntry;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/google/android/finsky/library/LibraryEntry;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/library/LibraryEntry;

    iget v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->mBackendId:I

    iget v4, v0, Lcom/google/android/finsky/library/LibraryEntry;->mBackendId:I

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->mDocType:I

    iget v4, v0, Lcom/google/android/finsky/library/LibraryEntry;->mDocType:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->mOfferType:I

    iget v4, v0, Lcom/google/android/finsky/library/LibraryEntry;->mOfferType:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->mAccountName:Ljava/lang/String;

    sget-object v4, Lcom/google/android/finsky/library/LibraryEntry;->UNKNOWN_ACCOUNT:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    iget-object v3, v0, Lcom/google/android/finsky/library/LibraryEntry;->mAccountName:Ljava/lang/String;

    sget-object v4, Lcom/google/android/finsky/library/LibraryEntry;->UNKNOWN_ACCOUNT:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->mAccountName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/library/LibraryEntry;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->mDocId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/library/LibraryEntry;->mDocId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->mLibraryId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/library/LibraryEntry;->mLibraryId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryEntry;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getBackendId()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/library/LibraryEntry;->mBackendId:I

    return v0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryEntry;->mDocId:Ljava/lang/String;

    return-object v0
.end method

.method public getDocType()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/library/LibraryEntry;->mDocType:I

    return v0
.end method

.method public getDocumentHash()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/finsky/library/LibraryEntry;->mDocumentHash:J

    return-wide v0
.end method

.method public getLibraryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryEntry;->mLibraryId:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferType()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/library/LibraryEntry;->mOfferType:I

    return v0
.end method

.method public getValidUntilTimestampMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/finsky/library/LibraryEntry;->mValidUntilTimestampMs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryEntry;->mLibraryId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryEntry;->mLibraryId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit8 v0, v1, 0x0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->mDocId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryEntry;->mDocId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/finsky/library/LibraryEntry;->mDocType:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/finsky/library/LibraryEntry;->mOfferType:I

    add-int v0, v1, v2

    return v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/finsky/library/LibraryEntry;->mValidUntilTimestampMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateInPlace(Ljava/lang/String;Lcom/google/android/finsky/protos/Common$Docid;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/protos/Common$Docid;
    .param p3    # I

    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryEntry;->mLibraryId:Ljava/lang/String;

    iget v0, p2, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    iput v0, p0, Lcom/google/android/finsky/library/LibraryEntry;->mBackendId:I

    iget-object v0, p2, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryEntry;->mDocId:Ljava/lang/String;

    iget v0, p2, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    iput v0, p0, Lcom/google/android/finsky/library/LibraryEntry;->mDocType:I

    iput p3, p0, Lcom/google/android/finsky/library/LibraryEntry;->mOfferType:I

    return-void
.end method
