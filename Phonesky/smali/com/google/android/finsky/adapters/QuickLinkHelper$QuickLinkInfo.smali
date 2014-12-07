.class public Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;
.super Ljava/lang/Object;
.source "QuickLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/QuickLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickLinkInfo"
.end annotation


# instance fields
.field private final mBackendId:I

.field private final mQuickLink:Lcom/google/android/finsky/protos/Browse$QuickLink;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/protos/Browse$QuickLink;I)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/protos/Browse$QuickLink;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->mQuickLink:Lcom/google/android/finsky/protos/Browse$QuickLink;

    iput p2, p0, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->mBackendId:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;)Lcom/google/android/finsky/protos/Browse$QuickLink;
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->mQuickLink:Lcom/google/android/finsky/protos/Browse$QuickLink;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iget v0, p0, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->mBackendId:I

    return v0
.end method
