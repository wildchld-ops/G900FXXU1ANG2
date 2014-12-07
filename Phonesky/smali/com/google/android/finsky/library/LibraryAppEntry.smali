.class public Lcom/google/android/finsky/library/LibraryAppEntry;
.super Lcom/google/android/finsky/library/LibraryEntry;
.source "LibraryAppEntry.java"


# static fields
.field public static final ANY_CERTIFICATE_HASHES:[Ljava/lang/String;


# instance fields
.field public final certificateHashes:[Ljava/lang/String;

.field public final refundPostDeliveryWindowMs:J

.field public final refundPreDeliveryEndtimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/library/LibraryAppEntry;->ANY_CERTIFICATE_HASHES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ[Ljava/lang/String;JJ)V
    .locals 13

    sget-object v4, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    const/4 v5, 0x3

    const/4 v7, 0x1

    const-wide v11, 0x7fffffffffffffffL

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move/from16 v8, p3

    move-wide/from16 v9, p4

    invoke-direct/range {v2 .. v12}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJ)V

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryAppEntry;->certificateHashes:[Ljava/lang/String;

    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPreDeliveryEndtimeMs:J

    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPostDeliveryWindowMs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/google/android/finsky/library/LibraryEntry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    instance-of v7, p1, Lcom/google/android/finsky/library/LibraryAppEntry;

    if-nez v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move-object v4, p1

    check-cast v4, Lcom/google/android/finsky/library/LibraryAppEntry;

    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryAppEntry;->certificateHashes:[Ljava/lang/String;

    array-length v7, v7

    iget-object v8, v4, Lcom/google/android/finsky/library/LibraryAppEntry;->certificateHashes:[Ljava/lang/String;

    array-length v8, v8

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryAppEntry;->certificateHashes:[Ljava/lang/String;

    array-length v0, v7

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryAppEntry;->certificateHashes:[Ljava/lang/String;

    aget-object v7, v7, v1

    iget-object v8, v4, Lcom/google/android/finsky/library/LibraryAppEntry;->certificateHashes:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v5, v6

    goto :goto_0
.end method

.method public hasMatchingCertificateHash([Ljava/lang/String;)Z
    .locals 10

    const/4 v8, 0x1

    sget-object v9, Lcom/google/android/finsky/library/LibraryAppEntry;->ANY_CERTIFICATE_HASHES:[Ljava/lang/String;

    if-ne p1, v9, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    move-object v0, p1

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v7, v0, v3

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryAppEntry;->certificateHashes:[Ljava/lang/String;

    array-length v5, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v6, v1, v2

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "{package=%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/library/LibraryAppEntry;->getDocId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
