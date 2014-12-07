.class public Lcom/google/android/play/layout/PlayPopupMenu;
.super Ljava/lang/Object;
.source "PlayPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;,
        Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;,
        Lcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;
    }
.end annotation


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mPopupActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/layout/PlayPopupMenu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/layout/PlayPopupMenu;->mAnchor:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/layout/PlayPopupMenu;->mPopupActions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMenuItem(Ljava/lang/CharSequence;ZLcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Z
    .param p3    # Lcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;

    iget-object v0, p0, Lcom/google/android/play/layout/PlayPopupMenu;->mPopupActions:Ljava/util/List;

    new-instance v1, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;-><init>(Ljava/lang/CharSequence;ZLcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public show()V
    .locals 6

    new-instance v0, Lcom/google/android/play/layout/PopupSelector;

    iget-object v1, p0, Lcom/google/android/play/layout/PlayPopupMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/play/layout/PlayPopupMenu;->mAnchor:Landroid/view/View;

    new-instance v3, Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;

    iget-object v4, p0, Lcom/google/android/play/layout/PlayPopupMenu;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/play/layout/PlayPopupMenu;->mPopupActions:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/play/layout/PopupSelector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;)V

    invoke-virtual {v0}, Lcom/google/android/play/layout/PopupSelector;->show()V

    return-void
.end method
