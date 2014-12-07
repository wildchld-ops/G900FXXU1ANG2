.class final Lcom/google/android/finsky/utils/PlayCardUtils$2;
.super Ljava/lang/Object;
.source "PlayCardUtils.java"

# interfaces
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PlayCardUtils;->initializeCardTrackers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllLibrariesLoaded()V
    .locals 0

    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 0

    # invokes: Lcom/google/android/finsky/utils/PlayCardUtils;->updateTrackedCardPrices()V
    invoke-static {}, Lcom/google/android/finsky/utils/PlayCardUtils;->access$000()V

    return-void
.end method
