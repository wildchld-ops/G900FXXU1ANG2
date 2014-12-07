.class Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;
.super Ljava/lang/Object;
.source "PlayPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/layout/PlayPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopupAction"
.end annotation


# instance fields
.field private final mActionListener:Lcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;

.field private final mIsEnabled:Z

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ZLcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;->mTitle:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;->mIsEnabled:Z

    iput-object p3, p0, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;->mActionListener:Lcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;->mIsEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;)Lcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;->mActionListener:Lcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;

    return-object v0
.end method
