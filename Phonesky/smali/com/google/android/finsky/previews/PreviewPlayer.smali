.class public Lcom/google/android/finsky/previews/PreviewPlayer;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"


# instance fields
.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioFocusState:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentTrack:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

.field private mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

.field private final mJsonListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

.field private final mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

.field private final mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/finsky/protos/DocDetails$SongDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private final mStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/previews/StatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnrollErrorListener:Lcom/android/volley/Response$ErrorListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/finsky/previews/PreviewPlayer$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/previews/PreviewPlayer$1;-><init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    new-instance v0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;-><init>(Lcom/google/android/finsky/previews/StatusListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    iput-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iput-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    iput-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusState:I

    new-instance v0, Lcom/google/android/finsky/previews/PreviewPlayer$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/previews/PreviewPlayer$2;-><init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mUnrollErrorListener:Lcom/android/volley/Response$ErrorListener;

    new-instance v0, Lcom/google/android/finsky/previews/PreviewPlayer$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/previews/PreviewPlayer$3;-><init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mJsonListener:Lcom/android/volley/Response$Listener;

    new-instance v0, Lcom/google/android/finsky/previews/PreviewPlayer$4;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/previews/PreviewPlayer$4;-><init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Lcom/google/android/finsky/previews/PreviewPlayer$5;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/previews/PreviewPlayer$5;-><init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/google/android/finsky/previews/PreviewPlayer$6;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/previews/PreviewPlayer$6;-><init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/previews/PreviewPlayer;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/previews/PreviewPlayer;Lcom/android/volley/toolbox/JsonObjectRequest;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/previews/PreviewPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->notifyError()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/previews/PreviewPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->setModeToStreaming(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/previews/PreviewPlayer;)Lcom/google/android/finsky/previews/MediaPlayerWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/previews/PreviewPlayer;)Lcom/google/android/finsky/previews/StatusListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/finsky/previews/PreviewPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusState:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/finsky/previews/PreviewPlayer;)Lcom/google/android/finsky/protos/DocDetails$SongDetails;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/previews/PreviewPlayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->playNextTrack()Z

    move-result v0

    return v0
.end method

.method private isCurrentTrack(Lcom/google/android/finsky/protos/DocDetails$SongDetails;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/google/android/finsky/protos/DocDetails$SongDetails;->previewUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocDetails$SongDetails;->previewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private notifyError()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->error()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->playNextTrack()Z

    return-void
.end method

.method private notifyQueueChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/previews/StatusListener;->queueChanged(I)V

    return-void
.end method

.method private playNextTrack()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->updateAudioFocus()V

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->resetWhileStayingAwake()V

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v3, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->completed()V

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/JsonObjectRequest;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->notifyQueueChanged()V

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    iget-object v2, v0, Lcom/google/android/finsky/protos/DocDetails$SongDetails;->previewUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/previews/PreviewPlayer;->setModeToStreaming(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/google/android/finsky/api/SkyjamJsonObjectRequest;

    iget-object v4, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mJsonListener:Lcom/android/volley/Response$Listener;

    iget-object v5, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mUnrollErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/SkyjamJsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-static {v0}, Lcom/google/android/finsky/FinskyApp;->drain(Lcom/android/volley/RequestQueue;)V

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iget-object v3, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {v0, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->unrolling()V

    goto :goto_0
.end method

.method private setModeToStreaming(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    const-string v6, "mode"

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "mode"

    const-string v8, "streaming"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_2
    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateAudioFocus()V
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusState:I

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iput v4, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusState:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusState:I

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iput v3, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioFocusState:I

    goto :goto_0
.end method


# virtual methods
.method public addStatusListener(Lcom/google/android/finsky/previews/StatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public getCurrentQueueSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentTrack()Lcom/google/android/finsky/protos/DocDetails$SongDetails;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mRequestQueue:Lcom/android/volley/RequestQueue;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public notifyListener(Lcom/google/android/finsky/previews/StatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->getCurrentState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/finsky/previews/StatusListener;->preparing()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/finsky/previews/StatusListener;->prepared()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/finsky/previews/StatusListener;->playing()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/google/android/finsky/previews/StatusListener;->paused()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/google/android/finsky/previews/StatusListener;->completed()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lcom/google/android/finsky/previews/StatusListener;->error()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public play(Lcom/google/android/finsky/protos/DocDetails$SongDetails;)V
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->notifyQueueChanged()V

    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->playNextTrack()Z

    return-void
.end method

.method public play(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v3, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mQueue:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->notifyQueueChanged()V

    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->playNextTrack()Z

    return-void
.end method

.method public removeStatusListener(Lcom/google/android/finsky/previews/StatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->reset()V

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    return-void
.end method

.method public skip()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->playNextTrack()Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->getCurrentState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->stop()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public togglePlayback(Lcom/google/android/finsky/protos/DocDetails$SongDetails;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->getCurrentState()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->isCurrentTrack(Lcom/google/android/finsky/protos/DocDetails$SongDetails;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->pause()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->start()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/StatusListener;->completed()V

    invoke-virtual {p0}, Lcom/google/android/finsky/previews/PreviewPlayer;->reset()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->play(Lcom/google/android/finsky/protos/DocDetails$SongDetails;)V

    goto :goto_0
.end method
