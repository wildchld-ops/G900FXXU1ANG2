.class public abstract Lcom/google/android/finsky/fragments/DetailsViewBinder;
.super Ljava/lang/Object;
.source "DetailsViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field protected mDoc:Lcom/google/android/finsky/api/model/Document;

.field protected mHeaderLayoutId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayout:Landroid/view/View;

.field protected mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

.field protected mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # I

    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public bind(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->setupHeader(Ljava/lang/String;I)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/api/DfeApi;
    .param p3    # Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p3, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0800cf

    iput v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mHeaderLayoutId:I

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1    # Lcom/android/volley/VolleyError;

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setupHeader(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    iget v2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mHeaderLayoutId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
