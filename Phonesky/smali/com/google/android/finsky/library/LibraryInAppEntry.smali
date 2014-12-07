.class public Lcom/google/android/finsky/library/LibraryInAppEntry;
.super Lcom/google/android/finsky/library/LibraryEntry;
.source "LibraryInAppEntry.java"


# instance fields
.field public final signature:Ljava/lang/String;

.field public final signedPurchaseData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 12

    const/4 v4, 0x3

    const/16 v6, 0xb

    const-wide v10, 0x7fffffffffffffffL

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move/from16 v7, p4

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v11}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJ)V

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryInAppEntry;->signedPurchaseData:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryInAppEntry;->signature:Ljava/lang/String;

    return-void
.end method
