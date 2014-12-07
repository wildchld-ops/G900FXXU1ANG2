.class public Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlayPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/layout/PlayPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopupListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPopupActions:Ljava/util/List;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;->mPopupActions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;->mPopupActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;->mPopupActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/google/android/play/R$layout;->play_popup_selector_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;->mPopupActions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;

    # getter for: Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;->access$000(Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # getter for: Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;->mIsEnabled:Z
    invoke-static {v0}, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;->access$100(Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;->mPopupActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;

    # getter for: Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;->mIsEnabled:Z
    invoke-static {v0}, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;->access$100(Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;)Z

    move-result v1

    return v1
.end method

.method public onSelect(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;->mPopupActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;

    # getter for: Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;->mActionListener:Lcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;
    invoke-static {v1}, Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;->access$200(Lcom/google/android/play/layout/PlayPopupMenu$PopupAction;)Lcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;->onActionSelected()V

    :cond_0
    return-void
.end method
