.class public Lcom/android/settings/grid/GridSettingsFragment;
.super Landroid/app/Fragment;
.source "GridSettingsFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Landroid/preference/PreferenceActivity;

.field private childList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field public mGridType:I

.field private mGridarea:Lcom/android/settings/grid/ExpandableGridView;

.field private mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

.field private root:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setLayoutTransition()V
    .locals 3

    const/4 v2, 0x4

    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method


# virtual methods
.method public addSections(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    if-nez v5, :cond_2

    if-nez v4, :cond_1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public clearFocus()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    :cond_0
    return-void
.end method

.method public collapseAll()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v0}, Lcom/android/settings/grid/ExpandableGridView;->collapseAll()V

    :cond_0
    return-void
.end method

.method public drawFrame()V
    .locals 12

    const-wide/16 v10, 0x1

    const/high16 v9, 0x3f800000

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v5, v4}, Lcom/android/settings/Utils;->getCategoryView(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v9, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridType:I

    iget-object v8, p0, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    invoke-static {v5, v4, v6, v7, v8}, Lcom/android/settings/Utils;->getGridView(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;ILcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)Lcom/android/settings/grid/GridContainer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;

    iget-boolean v4, v4, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    if-eqz v4, :cond_2

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v9, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    new-instance v4, Lcom/android/settings/grid/GridSettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/grid/GridSettingsFragment$1;-><init>(Lcom/android/settings/grid/GridSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->clearFocus()V

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public expandAll()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v0}, Lcom/android/settings/grid/ExpandableGridView;->expandAll()V

    :cond_0
    return-void
.end method

.method public initHeaderList(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "initHeaderList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/settings/grid/GridSettingsFragment;->addSections(Ljava/util/List;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    iget v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    iget-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->drawFrame()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/grid/GridSettingsFragment;->setLayoutTransition()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;

    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceActivity;

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    instance-of v0, p1, Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;

    invoke-interface {v0}, Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;->getGridType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridType:I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/grid/GridSettingsFragment;->initHeaderList(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    instance-of v0, p1, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void

    :cond_1
    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "activity is not OnSetListner"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "activity is not OnGridItemListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0400c9

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    const v1, 0x7f0b023a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/ExpandableGridView;

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->drawFrame()V

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    return-object v0
.end method
