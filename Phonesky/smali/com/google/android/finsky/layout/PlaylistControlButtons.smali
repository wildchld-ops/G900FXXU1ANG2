.class public Lcom/google/android/finsky/layout/PlaylistControlButtons;
.super Lcom/google/android/play/layout/PlayActionButton;
.source "PlaylistControlButtons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mConnection:Lcom/google/android/finsky/previews/PreviewController;

.field private mDocs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPlaying:Z

.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/PlaylistControlButtons;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlayActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mDocs:Ljava/util/Collection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mIsPlaying:Z

    new-instance v0, Lcom/google/android/finsky/layout/PlaylistControlButtons$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/PlaylistControlButtons$1;-><init>(Lcom/google/android/finsky/layout/PlaylistControlButtons;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    new-instance v0, Lcom/google/android/finsky/previews/PreviewController;

    iget-object v1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;-><init>(Lcom/google/android/finsky/previews/StatusListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/PlaylistControlButtons;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setIsPlaying(Z)V

    return-void
.end method

.method private setIsPlaying(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mIsPlaying:Z

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mIsPlaying:Z

    if-eqz v1, :cond_0

    const v0, 0x7f09015c

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->configure(IILandroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const v0, 0x7f09015b

    goto :goto_0
.end method


# virtual methods
.method public configure(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mDocs:Ljava/util/Collection;

    const/4 v0, 0x2

    const v1, 0x7f09015b

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->configure(IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/play/layout/PlayActionButton;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->getCurrentQueueSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setIsPlaying(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mIsPlaying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    iget-object v1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mDocs:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;->play(Ljava/util/Collection;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setIsPlaying(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->skip()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->unbind()V

    invoke-super {p0}, Lcom/google/android/play/layout/PlayActionButton;->onDetachedFromWindow()V

    return-void
.end method
