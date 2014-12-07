.class public Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DetailsBadgeContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/DetailsBadgeContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadgeContainerInfoDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerAdapter;,
        Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerRowHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static showInfo(Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;)V
    .locals 4
    .param p0    # Landroid/support/v4/app/FragmentManager;
    .param p1    # Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    const-string v2, "badge_container_dialog"

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "badge_container"

    new-instance v3, Lcom/google/android/finsky/layout/DetailsBadgeContainer$ParcelableBadgeContainerData;

    invoke-direct {v3, p1}, Lcom/google/android/finsky/layout/DetailsBadgeContainer$ParcelableBadgeContainerData;-><init>(Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog;->setArguments(Landroid/os/Bundle;)V

    const-string v2, "badge_container_dialog"

    invoke-virtual {v1, p0, v2}, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v6, 0x0

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0c0057

    invoke-direct {v2, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "badge_container"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/DetailsBadgeContainer$ParcelableBadgeContainerData;

    move-object v1, v4

    check-cast v1, Lcom/google/android/finsky/layout/DetailsBadgeContainer$ParcelableBadgeContainerData;

    new-instance v0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerAdapter;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/finsky/layout/DetailsBadgeContainer$ParcelableBadgeContainerData;->mBadgeContainer:Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    invoke-direct {v0, v2, v4, v5}, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, v1, Lcom/google/android/finsky/layout/DetailsBadgeContainer$ParcelableBadgeContainerData;->mBadgeContainer:Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    iget-object v5, v5, Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v3
.end method
