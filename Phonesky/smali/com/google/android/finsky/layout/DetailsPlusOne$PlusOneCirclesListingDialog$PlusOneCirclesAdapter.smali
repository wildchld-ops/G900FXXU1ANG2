.class Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailsPlusOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlusOneCirclesAdapter"
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private final mDialog:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private final mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p3    # Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;
    .param p4    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p5    # Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;
    .param p6    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iput-object p4, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p5, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mDialog:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;

    iput-object p6, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;)Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;)Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;)Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mDialog:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;

    return-object v0
.end method

.method private isShowingPartialList()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iget-wide v0, v0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlesTotal:J

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iget-object v2, v2, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v1, v0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->isShowingPartialList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v4, 0x4

    const/4 v7, 0x0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040102

    invoke-virtual {v2, v3, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$CircleRowHolder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$CircleRowHolder;

    invoke-direct {v0, p2}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$CircleRowHolder;-><init>(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->getItemViewType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iget-wide v2, v2, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlesTotal:J

    long-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iget-object v3, v3, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v3, v3

    sub-int v1, v2, v3

    iget-object v2, v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$CircleRowHolder;->avatarView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$CircleRowHolder;->nameView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0008

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p2

    :pswitch_0
    iget-object v2, v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$CircleRowHolder;->avatarView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v2, v7}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$CircleRowHolder;->avatarView:Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iget-object v3, v3, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v3, v3, p1

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/DocV2Utils;->getFirstImageOfType(Lcom/google/android/finsky/protos/DocumentV2$DocV2;I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    iget-object v2, v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$CircleRowHolder;->nameView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iget-object v3, v3, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter$1;-><init>(Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
