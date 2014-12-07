.class public Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;
.super Landroid/widget/FrameLayout;
.source "DrawerProfileInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/play/DrawerProfileInfoView$OnNavigationModeChangeListener;
    }
.end annotation


# instance fields
.field private mAccountListButtonDivider:Landroid/view/View;

.field private mAccountListEnabled:Z

.field private mAccountName:Landroid/widget/TextView;

.field private final mDefaultAvatarImage:Lcom/google/android/finsky/protos/Doc$Image;

.field private final mDefaultCoverImage:Lcom/google/android/finsky/protos/Doc$Image;

.field private mDisablePressHighlights:Z

.field private mDisplayName:Landroid/widget/TextView;

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mListener:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView$OnNavigationModeChangeListener;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mNavigationMode:I

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

.field private mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

.field private mToggleAccountListButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mNavigationMode:I

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->setWillNotDraw(Z)V

    new-instance v0, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/Doc$Image;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultCoverImage:Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultCoverImage:Lcom/google/android/finsky/protos/Doc$Image;

    const/16 v1, 0xf

    iput v1, v0, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultCoverImage:Lcom/google/android/finsky/protos/Doc$Image;

    sget-object v0, Lcom/google/android/finsky/config/G;->defaultProfileCoverImageUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultCoverImage:Lcom/google/android/finsky/protos/Doc$Image;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/Doc$Image;->hasImageType:Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultCoverImage:Lcom/google/android/finsky/protos/Doc$Image;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/Doc$Image;->hasImageUrl:Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultCoverImage:Lcom/google/android/finsky/protos/Doc$Image;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultCoverImage:Lcom/google/android/finsky/protos/Doc$Image;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/Doc$Image;->hasSupportsFifeUrlOptions:Z

    new-instance v0, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/Doc$Image;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultAvatarImage:Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultAvatarImage:Lcom/google/android/finsky/protos/Doc$Image;

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultAvatarImage:Lcom/google/android/finsky/protos/Doc$Image;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/Doc$Image;->hasImageType:Z

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultAvatarImage:Lcom/google/android/finsky/protos/Doc$Image;

    sget-object v0, Lcom/google/android/finsky/config/G;->defaultProfileAvatarImageUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultAvatarImage:Lcom/google/android/finsky/protos/Doc$Image;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/Doc$Image;->hasImageUrl:Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultAvatarImage:Lcom/google/android/finsky/protos/Doc$Image;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultAvatarImage:Lcom/google/android/finsky/protos/Doc$Image;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/Doc$Image;->hasSupportsFifeUrlOptions:Z

    return-void
.end method

.method private bindNavigationMode()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mNavigationMode:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mAccountListEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mAccountListButtonDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mToggleAccountListButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mToggleAccountListButton:Landroid/widget/ImageButton;

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mToggleAccountListButton:Landroid/widget/ImageButton;

    const v2, 0x7f0901d2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mToggleAccountListButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mAccountListButtonDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mToggleAccountListButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mAccountListButtonDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mToggleAccountListButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mToggleAccountListButton:Landroid/widget/ImageButton;

    const v2, 0x7f0200f1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mToggleAccountListButton:Landroid/widget/ImageButton;

    const v2, 0x7f0901d3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mToggleAccountListButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bindNavigationManager(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-void
.end method

.method public configure(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/protos/Doc$Image;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/FifeImageView;->clearCachedState()V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/FifeImageView;->clearCachedState()V

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultCoverImage:Lcom/google/android/finsky/protos/Doc$Image;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    :goto_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDefaultAvatarImage:Lcom/google/android/finsky/protos/Doc$Image;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mAccountName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v1, p2, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mAccountName:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mAccountName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->getHeight()I

    move-result v0

    iget-boolean v5, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDisablePressHighlights:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    :goto_2
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_6
    move v1, v4

    goto :goto_2
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->invalidate()V

    return-void
.end method

.method public getNavigationMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mNavigationMode:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mToggleAccountListButton:Landroid/widget/ImageButton;

    if-ne p1, v5, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->getNavigationMode()I

    move-result v5

    if-nez v5, :cond_1

    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->setNavigationMode(I)V

    if-eqz v3, :cond_3

    const/16 v1, 0x116

    :goto_2
    iget-object v4, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mListener:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView$OnNavigationModeChangeListener;

    invoke-interface {v4, p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView$OnNavigationModeChangeListener;->onNavigationModeChange(Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;)V

    :cond_0
    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    const/16 v1, 0x115

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDisplayName:Landroid/widget/TextView;

    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mAccountName:Landroid/widget/TextView;

    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mAccountListButtonDivider:Landroid/view/View;

    const v0, 0x7f08010f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mToggleAccountListButton:Landroid/widget/ImageButton;

    return-void
.end method

.method public setAccountListEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mAccountListEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mAccountListEnabled:Z

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->bindNavigationMode()V

    :cond_0
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported navigation mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mNavigationMode:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mNavigationMode:I

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->bindNavigationMode()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mListener:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView$OnNavigationModeChangeListener;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView$OnNavigationModeChangeListener;->onNavigationModeChange(Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;)V

    :cond_1
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDisablePressHighlights:Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mDisablePressHighlights:Z

    new-instance v0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView$1;-><init>(Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;)V

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setOnNavigationModeChangeListener(Lcom/google/android/finsky/layout/play/DrawerProfileInfoView$OnNavigationModeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->mListener:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView$OnNavigationModeChangeListener;

    return-void
.end method
