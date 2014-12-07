.class Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;
.super Ljava/lang/Object;
.source "AggregatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/AggregatedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexTranslation"
.end annotation


# instance fields
.field private targetAdapter:Landroid/widget/ListAdapter;

.field private translatedIndex:I


# direct methods
.method private constructor <init>(Landroid/widget/ListAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->targetAdapter:Landroid/widget/ListAdapter;

    iput p2, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->translatedIndex:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListAdapter;ILcom/google/android/finsky/adapters/AggregatedAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;-><init>(Landroid/widget/ListAdapter;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->translatedIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->targetAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method
