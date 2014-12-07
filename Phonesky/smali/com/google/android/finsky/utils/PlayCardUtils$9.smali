.class final Lcom/google/android/finsky/utils/PlayCardUtils$9;
.super Ljava/lang/Object;
.source "PlayCardUtils.java"

# interfaces
.implements Lcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PlayCardUtils;->configureActions(Lcom/google/android/play/layout/PlayPopupMenu;Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$purchaseOpenListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/PlayCardUtils$9;->val$purchaseOpenListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionSelected()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$9;->val$purchaseOpenListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
