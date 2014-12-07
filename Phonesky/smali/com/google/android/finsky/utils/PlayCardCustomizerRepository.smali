.class public Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;
.super Ljava/lang/Object;
.source "PlayCardCustomizerRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/play/layout/PlayCardViewBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/utils/PlayCardCustomizerRepository",
            "<",
            "Lcom/google/android/play/layout/PlayCardViewBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCustomizers:[Lcom/google/android/finsky/utils/PlayCardCustomizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/finsky/utils/PlayCardCustomizer",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final mDefaultCustomizer:Lcom/google/android/finsky/utils/PlayCardCustomizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/utils/PlayCardCustomizer",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;->sInstance:Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/google/android/finsky/utils/PlayCardCustomizer;

    iput-object v0, p0, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;->mCustomizers:[Lcom/google/android/finsky/utils/PlayCardCustomizer;

    new-instance v0, Lcom/google/android/finsky/utils/PlayCardCustomizer;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/PlayCardCustomizer;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;->mDefaultCustomizer:Lcom/google/android/finsky/utils/PlayCardCustomizer;

    return-void
.end method

.method public static getInstance()Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/finsky/utils/PlayCardCustomizerRepository",
            "<",
            "Lcom/google/android/play/layout/PlayCardViewBase;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;->sInstance:Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;

    return-object v0
.end method


# virtual methods
.method public getCardCustomizer(Lcom/google/android/play/layout/PlayCardViewBase;)Lcom/google/android/finsky/utils/PlayCardCustomizer;
    .locals 3
    .param p1    # Lcom/google/android/play/layout/PlayCardViewBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/layout/PlayCardViewBase;",
            ")",
            "Lcom/google/android/finsky/utils/PlayCardCustomizer",
            "<+TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;->mCustomizers:[Lcom/google/android/finsky/utils/PlayCardCustomizer;

    invoke-virtual {p1}, Lcom/google/android/play/layout/PlayCardViewBase;->getCardType()I

    move-result v2

    aget-object v0, v1, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;->mDefaultCustomizer:Lcom/google/android/finsky/utils/PlayCardCustomizer;

    :cond_0
    return-object v0
.end method

.method public registerCardCustomizer(ILcom/google/android/finsky/utils/PlayCardCustomizer;)V
    .locals 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/finsky/utils/PlayCardCustomizer",
            "<+TT;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t pass a null card customizer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;->mCustomizers:[Lcom/google/android/finsky/utils/PlayCardCustomizer;

    aput-object p2, v0, p1

    return-void
.end method
