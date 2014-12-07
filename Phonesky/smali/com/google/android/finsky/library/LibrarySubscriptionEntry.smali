.class public Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
.super Lcom/google/android/finsky/library/LibraryEntry;
.source "LibrarySubscriptionEntry.java"


# instance fields
.field public final initiationTimestampMs:J

.field public final isAutoRenewing:Z

.field public final trialUntilTimestampMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/lang/Long;JJZ)V
    .locals 13
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # J
    .param p8    # Ljava/lang/Long;
    .param p9    # J
    .param p11    # J
    .param p13    # Z

    const/16 v7, 0xf

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v2 .. v12}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJ)V

    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->initiationTimestampMs:J

    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->trialUntilTimestampMs:J

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->isAutoRenewing:Z

    return-void
.end method
