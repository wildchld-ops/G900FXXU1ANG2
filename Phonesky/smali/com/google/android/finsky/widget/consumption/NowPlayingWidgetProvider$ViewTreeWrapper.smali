.class Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
.super Ljava/lang/Object;
.source "NowPlayingWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewTreeWrapper"
.end annotation


# instance fields
.field private heightRemaining:I

.field private mLoadedSuccessfully:Z

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private mUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            ">;"
        }
    .end annotation
.end field

.field private showBackground:Z

.field private showEmptyBackground:Z

.field final synthetic this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mLoadedSuccessfully:Z

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mUris:Ljava/util/List;

    iput-boolean v1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Landroid/widget/RemoteViews;ZLjava/util/List;)V
    .locals 2
    .param p2    # Landroid/widget/RemoteViews;
    .param p3    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mLoadedSuccessfully:Z

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mUris:Ljava/util/List;

    iput-boolean v1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z

    iput-object p2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mRemoteViews:Landroid/widget/RemoteViews;

    iput-boolean p3, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mLoadedSuccessfully:Z

    iput-object p4, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mUris:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    .param p1    # Landroid/widget/RemoteViews;

    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    iget-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mLoadedSuccessfully:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Z)Z
    .locals 0
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mLoadedSuccessfully:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mUris:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    iget-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Z)Z
    .locals 0
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z

    return p1
.end method

.method static synthetic access$376(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;I)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    .param p1    # I

    iget-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    iget-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Z)Z
    .locals 0
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z

    return p1
.end method

.method static synthetic access$472(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;I)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    .param p1    # I

    iget-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z

    and-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    iget v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->heightRemaining:I

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;I)I
    .locals 0
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->heightRemaining:I

    return p1
.end method
