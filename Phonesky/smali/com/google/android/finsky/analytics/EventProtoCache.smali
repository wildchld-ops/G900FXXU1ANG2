.class public Lcom/google/android/finsky/analytics/EventProtoCache;
.super Ljava/lang/Object;
.source "EventProtoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/google/android/finsky/analytics/EventProtoCache;


# instance fields
.field private final mCachePlayStoreBackgroundAction:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache",
            "<",
            "Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachePlayStoreClick:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache",
            "<",
            "Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachePlayStoreImpression:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache",
            "<",
            "Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachePlayStoreLogEvent:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache",
            "<",
            "Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachePlayStoreSearch:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache",
            "<",
            "Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachePlayStoreUIElement:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache",
            "<",
            "Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/analytics/EventProtoCache;->INSTANCE:Lcom/google/android/finsky/analytics/EventProtoCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v3, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    const-class v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreLogEvent:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    new-instance v0, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    const-class v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreImpression:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    new-instance v0, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    const-class v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreClick:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    new-instance v0, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    const-class v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreBackgroundAction:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    new-instance v0, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    const-class v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreSearch:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    new-instance v0, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    const-class v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreUIElement:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/google/android/finsky/analytics/EventProtoCache;
    .locals 2

    const-class v1, Lcom/google/android/finsky/analytics/EventProtoCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/analytics/EventProtoCache;->INSTANCE:Lcom/google/android/finsky/analytics/EventProtoCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-direct {v0}, Lcom/google/android/finsky/analytics/EventProtoCache;-><init>()V

    sput-object v0, Lcom/google/android/finsky/analytics/EventProtoCache;->INSTANCE:Lcom/google/android/finsky/analytics/EventProtoCache;

    :cond_0
    sget-object v0, Lcom/google/android/finsky/analytics/EventProtoCache;->INSTANCE:Lcom/google/android/finsky/analytics/EventProtoCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreBackgroundAction:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    invoke-virtual {v0}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    return-object v0
.end method

.method public obtainPlayStoreClickEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreClick:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    invoke-virtual {v0}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    return-object v0
.end method

.method public obtainPlayStoreImpressionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreImpression:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    invoke-virtual {v0}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    return-object v0
.end method

.method public obtainPlayStoreLogEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreLogEvent:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    invoke-virtual {v0}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;

    return-object v0
.end method

.method public obtainPlayStoreSearchEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreSearch:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    invoke-virtual {v0}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    return-object v0
.end method

.method public obtainPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreUIElement:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    invoke-virtual {v0}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    iget-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreBackgroundAction:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;)V
    .locals 5

    iget-object v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;->elementPath:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;->clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    iget-object v4, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreClick:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;)V
    .locals 5

    iget-object v4, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;->tree:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;->tree:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/analytics/EventProtoCache;->recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)V

    :cond_0
    iget-object v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;->referrerPath:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;->clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    iget-object v4, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreImpression:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->impression:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->impression:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/analytics/EventProtoCache;->recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;)V

    :cond_0
    iget-object v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->click:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->click:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/analytics/EventProtoCache;->recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;)V

    :cond_1
    iget-object v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->backgroundAction:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->backgroundAction:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/analytics/EventProtoCache;->recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    :cond_2
    iget-object v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->search:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->search:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/analytics/EventProtoCache;->recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;

    iget-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreLogEvent:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;->clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    iget-object v0, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreSearch:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)V
    .locals 5

    iget-object v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v4, p0, Lcom/google/android/finsky/analytics/EventProtoCache;->mCachePlayStoreUIElement:Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/analytics/EventProtoCache$ElementCache;->recycle(Ljava/lang/Object;)V

    return-void
.end method
