.class public Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DetailsPlusOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/DetailsPlusOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlusOneCirclesListingDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;,
        Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$CircleRowHolder;
    }
.end annotation


# instance fields
.field private mNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/finsky/fragments/PageFragmentHost;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "Host activity is not PageFragmentHost"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method static showInfo(Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;)V
    .locals 4
    .param p0    # Landroid/support/v4/app/FragmentManager;
    .param p1    # Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    const-string v2, "plus_one_circles_dialog"

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "plus_one_info"

    new-instance v3, Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;

    invoke-direct {v3, p1}, Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;-><init>(Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;->setArguments(Landroid/os/Bundle;)V

    const-string v2, "plus_one_circles_dialog"

    invoke-virtual {v1, p0, v2}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1    # Landroid/os/Bundle;

    const/4 v9, 0x0

    new-instance v2, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v3, 0x13f

    invoke-direct {v2, v3, v9, v9, v9}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;->mNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;->mNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0055

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "plus_one_info"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;

    new-instance v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v2

    # getter for: Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;
    invoke-static {v7}, Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;->access$000(Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;)Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;->getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;->mNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0902bc

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v9}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v8
.end method
