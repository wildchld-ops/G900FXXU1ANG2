.class public Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;
.super Lcom/google/android/finsky/layout/IdentifiableFrameLayout;
.source "PeopleDetailsProfileInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

.field private mCircles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayName:Landroid/widget/TextView;

.field private final mIdealHeight:I

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mPlusDoc:Lcom/google/android/finsky/api/model/Document;

.field private mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

.field private mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

.field private mViewProfilePack:Landroid/view/View;

.field private mViewProfileText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/IdentifiableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mIdealHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircles:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;)Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method private launchGPlusProfileView(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppViewItemIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->isConsumptionAppInstalled(Landroid/content/pm/PackageManager;I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showAppNeededDialog(I)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 11
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/16 v10, 0x8

    const/4 v9, 0x0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    iput-object p2, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/Doc$Image;

    if-nez v2, :cond_1

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v6, v10}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    :goto_0
    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v6, v0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircles:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;

    invoke-direct {v8, p0, v5}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$1;-><init>(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;Ljava/lang/String;)V

    invoke-static {v6, v7, v8}, Lcom/google/android/finsky/utils/GPlusUtils;->getCircles(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, p0}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->configure(Ljava/lang/String;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getPersonDetails()Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v6, v3, Lcom/google/android/finsky/protos/DocDetails$PersonDetails;->personIsRequester:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    invoke-virtual {v6, v10}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->setVisibility(I)V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mViewProfileText:Landroid/widget/TextView;

    const v7, 0x7f09035a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mViewProfilePack:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mViewProfilePack:Landroid/view/View;

    const v7, 0x7f09036f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v6, v9}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v6, v2, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v7, p0}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->configure(Ljava/lang/String;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    invoke-virtual {v6, v9}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->setVisibility(I)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/finsky/activities/MainActivity;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/MainActivity;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircles:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0x118

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircles:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView$2;-><init>(Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;)V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/utils/GPlusUtils;->checkGPlusAndLaunchCirclePicker(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mViewProfilePack:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0x119

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->launchGPlusProfileView(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/finsky/layout/IdentifiableFrameLayout;->onFinishInflate()V

    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mDisplayName:Landroid/widget/TextView;

    const v0, 0x7f0801bc

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    const v0, 0x7f0801bd

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mViewProfilePack:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mViewProfilePack:Landroid/view/View;

    const v1, 0x7f0801be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mViewProfileText:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->getWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/google/android/finsky/layout/FifeImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredWidth()I

    move-result v7

    int-to-float v0, v4

    move/from16 v17, v0

    const v18, 0x3f4ccccd

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v6, v12, v17

    sub-int v17, v16, v7

    div-int/lit8 v5, v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v17, v0

    add-int v18, v5, v7

    add-int v19, v6, v4

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/google/android/finsky/layout/FifeImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/layout/FifeImageView;->getBottom()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mDisplayName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mDisplayName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v19

    add-int v19, v19, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getVisibility()I

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getMeasuredWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mDisplayName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getBottom()I

    move-result v17

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v10, v17, v18

    sub-int v17, v16, v11

    div-int/lit8 v9, v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v17, v0

    add-int v18, v9, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getMeasuredHeight()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->layout(IIII)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mViewProfilePack:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mViewProfilePack:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mViewProfilePack:Landroid/view/View;

    move-object/from16 v17, v0

    sub-int v18, p4, v15

    sub-int v19, v12, v14

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1    # I
    .param p2    # I

    const/high16 v11, 0x40000000

    const/4 v10, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v7, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mIdealHeight:I

    div-int/lit8 v8, v4, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, p1, v8}, Lcom/google/android/finsky/layout/FifeImageView;->measure(II)V

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/FifeImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    iget v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/finsky/layout/FifeImageView;->measure(II)V

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v7, v10, v10}, Landroid/widget/TextView;->measure(II)V

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    invoke-virtual {v7, v10, v10}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->measure(II)V

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    div-int/lit8 v5, v7, 0x2

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mViewProfilePack:Landroid/view/View;

    const/high16 v8, -0x80000000

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v8, v10}, Landroid/view/View;->measure(II)V

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e4ccccc

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v7, v2

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int v3, v7, v8

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->mCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getMeasuredHeight()I

    move-result v7

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    :cond_0
    invoke-virtual {p0, v6, v3}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->setMeasuredDimension(II)V

    return-void
.end method
