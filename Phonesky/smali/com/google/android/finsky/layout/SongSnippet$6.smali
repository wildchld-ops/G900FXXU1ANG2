.class Lcom/google/android/finsky/layout/SongSnippet$6;
.super Lcom/google/android/finsky/previews/SongSnippetStatusListener;
.source "SongSnippet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/SongSnippet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/SongSnippet;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/SongSnippet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/SongSnippet$6;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    invoke-direct {p0}, Lcom/google/android/finsky/previews/SongSnippetStatusListener;-><init>()V

    return-void
.end method

.method private isSameAsSnippetSong()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/SongSnippet$6;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    # getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;
    invoke-static {v3}, Lcom/google/android/finsky/layout/SongSnippet;->access$100(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/layout/SongSnippet$6;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    # getter for: Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;
    invoke-static {v3}, Lcom/google/android/finsky/layout/SongSnippet;->access$200(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/previews/PreviewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/previews/PreviewController;->getCurrentTrack()Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/layout/SongSnippet$6;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    # getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;
    invoke-static {v3}, Lcom/google/android/finsky/layout/SongSnippet;->access$100(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    move-result-object v3

    iget-object v0, v3, Lcom/google/android/finsky/protos/DocDetails$SongDetails;->previewUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, v1, Lcom/google/android/finsky/protos/DocDetails$SongDetails;->previewUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected update(IZ)V
    .locals 2
    .param p1    # I
    .param p2    # Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet$6;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    const/4 v1, 0x1

    # setter for: Lcom/google/android/finsky/layout/SongSnippet;->mInitialized:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->access$502(Lcom/google/android/finsky/layout/SongSnippet;Z)Z

    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet$6;->isSameAsSnippetSong()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet$6;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    # invokes: Lcom/google/android/finsky/layout/SongSnippet;->resetUI()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/SongSnippet;->access$600(Lcom/google/android/finsky/layout/SongSnippet;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet$6;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    # getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;
    invoke-static {v0}, Lcom/google/android/finsky/layout/SongSnippet;->access$700(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/layout/SongIndex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet$6;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    # invokes: Lcom/google/android/finsky/layout/SongSnippet;->setHighlighted(Z)V
    invoke-static {v0, p2}, Lcom/google/android/finsky/layout/SongSnippet;->access$800(Lcom/google/android/finsky/layout/SongSnippet;Z)V

    goto :goto_0
.end method
