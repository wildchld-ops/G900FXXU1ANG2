.class public Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DcbDebugDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment$DetailFormatter;
    }
.end annotation


# instance fields
.field private final mDetailExtractor:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;->mDetailExtractor:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;->mTitle:Ljava/lang/String;

    return-void
.end method

.method private buildView(Landroid/app/AlertDialog;)Landroid/view/View;
    .locals 8

    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;->mDetailExtractor:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;

    invoke-interface {v5}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;->getDetails()Ljava/util/Collection;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;

    new-instance v5, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment$DetailFormatter;

    invoke-direct {v5, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment$DetailFormatter;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f040036

    invoke-direct {v5, v6, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v2
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090212

    new-instance v3, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;->buildView(Landroid/app/AlertDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-object v1
.end method
