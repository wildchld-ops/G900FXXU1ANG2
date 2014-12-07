.class public Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;
.super Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
.source "LibraryInAppSubscriptionEntry.java"


# instance fields
.field public final signature:Ljava/lang/String;

.field public final signedPurchaseData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJJJZLjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # J
    .param p8    # J
    .param p10    # J
    .param p12    # J
    .param p14    # Z
    .param p15    # Ljava/lang/String;
    .param p16    # Ljava/lang/String;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move/from16 v14, p14

    invoke-direct/range {v1 .. v14}, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/lang/Long;JJZ)V

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->signedPurchaseData:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->signature:Ljava/lang/String;

    return-void
.end method
