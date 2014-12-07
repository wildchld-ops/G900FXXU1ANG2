.class public Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;
.super Ljava/lang/Object;
.source "CardListAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/CardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemEntry"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIsLooseItemRow:Z

.field private mTrueEndIndex:I

.field private final mTrueStartIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry$1;

    invoke-direct {v0}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueEndIndex:I

    iput p1, p0, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I

    iput p2, p0, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueEndIndex:I

    iput-boolean p3, p0, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mIsLooseItemRow:Z

    return-void
.end method

.method synthetic constructor <init>(IIZLcom/google/android/finsky/adapters/CardListAdapter$1;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Z
    .param p4    # Lcom/google/android/finsky/adapters/CardListAdapter$1;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;-><init>(IIZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    iget-boolean v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mIsLooseItemRow:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    iget v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueEndIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;I)I
    .locals 0
    .param p0    # Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueEndIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    iget v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueEndIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mIsLooseItemRow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
