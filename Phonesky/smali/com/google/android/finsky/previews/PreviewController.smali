.class public Lcom/google/android/finsky/previews/PreviewController;
.super Ljava/lang/Object;
.source "PreviewController.java"


# static fields
.field private static final mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;


# instance fields
.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-direct {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;-><init>()V

    sput-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/previews/StatusListener;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/previews/StatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->initialize()V

    iput-object p1, p0, Lcom/google/android/finsky/previews/PreviewController;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->addStatusListener(Lcom/google/android/finsky/previews/StatusListener;)V

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/finsky/previews/PreviewPlayer;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    return-object v0
.end method

.method public static reset()V
    .locals 1

    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->reset()V

    return-void
.end method

.method public static setupOnBackStackChangedListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 1
    .param p0    # Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v0, Lcom/google/android/finsky/previews/PreviewController$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/previews/PreviewController$1;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method


# virtual methods
.method public getCurrentQueueSize()I
    .locals 1

    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->getCurrentQueueSize()I

    move-result v0

    return v0
.end method

.method public getCurrentTrack()Lcom/google/android/finsky/protos/DocDetails$SongDetails;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->getCurrentTrack()Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    move-result-object v0

    return-object v0
.end method

.method public getStatusUpdate(Lcom/google/android/finsky/previews/StatusListener;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/previews/StatusListener;

    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->notifyListener(Lcom/google/android/finsky/previews/StatusListener;)V

    return-void
.end method

.method public play(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->play(Ljava/util/Collection;)V

    return-void
.end method

.method public skip()V
    .locals 1

    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->skip()V

    return-void
.end method

.method public togglePlayback(Lcom/google/android/finsky/protos/DocDetails$SongDetails;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->togglePlayback(Lcom/google/android/finsky/protos/DocDetails$SongDetails;)V

    return-void
.end method

.method public unbind()V
    .locals 2

    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewController;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/previews/PreviewPlayer;->removeStatusListener(Lcom/google/android/finsky/previews/StatusListener;)V

    return-void
.end method
