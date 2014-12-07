.class Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;
.super Ljava/lang/Object;
.source "EditorialBucketListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditorialVideoHolder"
.end annotation


# instance fields
.field private mDescription:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mVideoImage:Lcom/google/android/finsky/layout/HeroGraphicView;

.field private mWrapper:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->this$0:Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;
    .param p2    # Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;-><init>(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mWrapper:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0    # Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;
    .param p1    # Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mWrapper:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mDescription:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;)Lcom/google/android/finsky/layout/HeroGraphicView;
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mVideoImage:Lcom/google/android/finsky/layout/HeroGraphicView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;Lcom/google/android/finsky/layout/HeroGraphicView;)Lcom/google/android/finsky/layout/HeroGraphicView;
    .locals 0
    .param p0    # Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;
    .param p1    # Lcom/google/android/finsky/layout/HeroGraphicView;

    iput-object p1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mVideoImage:Lcom/google/android/finsky/layout/HeroGraphicView;

    return-object p1
.end method
