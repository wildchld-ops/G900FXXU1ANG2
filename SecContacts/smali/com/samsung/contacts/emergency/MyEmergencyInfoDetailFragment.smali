.class public Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;
.super Landroid/app/Fragment;
.source "MyEmergencyInfoDetailFragment.java"


# instance fields
.field private mAllergiesView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentMedicationsView:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field private mEmptyView:Landroid/view/View;

.field private mFromEmergencyDialer:Z

.field private mHealthRecordView:Landroid/view/View;

.field private final mMyEmergencyInfoLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mNameView:Landroid/view/View;

.field private mOtherView:Landroid/view/View;

.field private mProfileDisplayName:Ljava/lang/String;

.field private final mProfileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileRawContactId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;-><init>(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mProfileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$2;-><init>(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mMyEmergencyInfoLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;Z)V
    .locals 0
    .param p0    # Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->showEmptyView(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)Z
    .locals 1
    .param p0    # Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    iget-boolean v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mFromEmergencyDialer:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)V
    .locals 0
    .param p0    # Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->startDetailEditor()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mProfileRawContactId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mProfileRawContactId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mProfileDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mProfileDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0    # Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mMyEmergencyInfoLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p0    # Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;
    .param p1    # Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->bindDetailData(Landroid/database/Cursor;)V

    return-void
.end method

.method private bindDetailData(Landroid/database/Cursor;)V
    .locals 9
    .param p1    # Landroid/database/Cursor;

    const v8, 0x7f08025e

    const/16 v6, 0x8

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mProfileDisplayName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    iget-object v5, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mNameView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mHealthRecordView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mAllergiesView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mCurrentMedicationsView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mOtherView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mNameView:Landroid/view/View;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mHealthRecordView:Landroid/view/View;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mAllergiesView:Landroid/view/View;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mCurrentMedicationsView:Landroid/view/View;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mOtherView:Landroid/view/View;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_2

    :cond_4
    move v5, v7

    goto :goto_3

    :cond_5
    move v6, v7

    goto :goto_4
.end method

.method private setupDetailView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    const v2, 0x7f0801ed

    const v0, 0x7f080259

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mNameView:Landroid/view/View;

    const v0, 0x7f08025a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mHealthRecordView:Landroid/view/View;

    const v0, 0x7f08025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mAllergiesView:Landroid/view/View;

    const v0, 0x7f08025c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mCurrentMedicationsView:Landroid/view/View;

    const v0, 0x7f08025d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mOtherView:Landroid/view/View;

    const v0, 0x7f08023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mNameView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e04a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mHealthRecordView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e04a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mAllergiesView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e04a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mCurrentMedicationsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e04a9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mOtherView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e04aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0801d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0801da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e04ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private showEmptyView(Z)V
    .locals 4
    .param p1    # Z

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method private startDetailEditor()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "profileRawContactId"

    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mProfileRawContactId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "profileDisplayName"

    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mProfileDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "noDetail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private startLoading()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mProfileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method


# virtual methods
.method public getProfileDispalyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mProfileDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileRawContactId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mProfileRawContactId:Ljava/lang/String;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v1, 0x7f0300e3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->setupDetailView(Landroid/view/View;)V

    return-object v0
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->startLoading()V

    return-void
.end method

.method public setFromEmergencyDialer(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mFromEmergencyDialer:Z

    return-void
.end method
