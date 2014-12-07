.class public Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;
.super Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;
.source "PlayCardPersonFollowClusterViewContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCircles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation
.end field

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

.field private mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

.field private mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

.field private final mProfileFollowButtonBottomMargin:I

.field private mProfileSubtitle:Landroid/widget/TextView;

.field private mProfileTitle:Landroid/widget/TextView;

.field private final mShouldLayoutVertically:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mShouldLayoutVertically:Z

    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButtonBottomMargin:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mCircles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;
    .param p1    # Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mCircles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;)Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method


# virtual methods
.method public configurePersonProfile(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p3    # Lcom/google/android/finsky/api/model/Document;

    const/4 v6, 0x0

    const/4 v5, 0x0

    iput-object p3, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-virtual {v3, v2, p2}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1, v2, v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-virtual {v3, v2, p2}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileSubtitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mCircles:Ljava/util/List;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent$1;

    invoke-direct {v4, p0, v1}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent$1;-><init>(Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/GPlusUtils;->getCircles(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    invoke-virtual {v2, v1, v6, p0}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->configure(Ljava/lang/String;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mCircles:Ljava/util/List;

    invoke-virtual {v2, v1, v3, p0}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->configure(Ljava/lang/String;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected getIndexOfFirstCard()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    if-ne p1, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v4/app/FragmentActivity;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mCircles:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mCircles:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent$2;-><init>(Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;)V

    invoke-static {v0, v2, v1, v3}, Lcom/google/android/finsky/utils/GPlusUtils;->checkGPlusAndLaunchCirclePicker(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->onFinishInflate()V

    const v0, 0x7f0801cf

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    const v0, 0x7f0801ce

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0801d0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileTitle:Landroid/widget/TextView;

    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileSubtitle:Landroid/widget/TextView;

    const v0, 0x7f0801d2

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->onLayout(ZIIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileSubtitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getMeasuredWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mCardContentPaddingTop:I

    move/from16 v19, v0

    int-to-float v0, v4

    move/from16 v20, v0

    const/high16 v21, 0x3e800000

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v7, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredHeight()I

    move-result v21

    add-int v21, v21, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/google/android/finsky/layout/FifeImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mCardContentPaddingTop:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mShouldLayoutVertically:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    sub-int v19, v18, v6

    div-int/lit8 v5, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v19, v0

    add-int v20, v5, v6

    add-int v21, v13, v4

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v5, v13, v1, v2}, Lcom/google/android/finsky/layout/FifeImageView;->layout(IIII)V

    add-int/2addr v13, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    add-int v21, v13, v17

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    add-int v13, v13, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileSubtitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    add-int v21, v13, v16

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    add-int v13, v13, v16

    sub-int v19, v18, v9

    div-int/lit8 v8, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v19, v0

    add-int v20, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getMeasuredHeight()I

    move-result v21

    add-int v21, v21, v13

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v8, v13, v1, v2}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->layout(IIII)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->getLeadingGap(I)I

    move-result v12

    sub-int v19, v12, v6

    div-int/lit8 v10, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v19, v0

    add-int v20, v10, v6

    add-int v21, v13, v4

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v13, v1, v2}, Lcom/google/android/finsky/layout/FifeImageView;->layout(IIII)V

    add-int/2addr v13, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    add-int v21, v13, v17

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v13, v12, v2}, Landroid/widget/TextView;->layout(IIII)V

    add-int v13, v13, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileSubtitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    add-int v21, v13, v16

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v13, v12, v2}, Landroid/widget/TextView;->layout(IIII)V

    add-int v13, v13, v16

    sub-int v19, v12, v9

    div-int/lit8 v15, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getMeasuredHeight()I

    move-result v11

    add-int v19, v13, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/finsky/layout/FifeImageView;->getBottom()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButtonBottomMargin:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v19, v0

    sub-int v20, v14, v11

    add-int v21, v15, v9

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v15, v1, v2, v14}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->layout(IIII)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1    # I
    .param p2    # I

    invoke-super/range {p0 .. p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->getMeasuredHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mCardContentPaddingTop:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mCardContentPaddingBottom:I

    move/from16 v19, v0

    sub-int v3, v18, v19

    move v15, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/layout/FifeImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v18, v0

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    const/high16 v21, 0x40000000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/google/android/finsky/layout/FifeImageView;->measure(II)V

    const/high16 v18, 0x40000000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mShouldLayoutVertically:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileTitle:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileSubtitle:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v18, v0

    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileAvatarImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileSubtitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getMeasuredHeight()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mCardContentPaddingTop:I

    move/from16 v19, v0

    add-int v6, v18, v19

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3e800000

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v18, v6, v18

    int-to-float v0, v3

    move/from16 v19, v0

    const v20, 0x3f59999a

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v13, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v18, v0

    const/high16 v19, 0x40000000

    move/from16 v0, v19

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/google/android/finsky/layout/FifeImageView;->measure(II)V

    add-int/2addr v15, v6

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mCardContentPaddingTop:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mCardContentPaddingBottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int v15, v15, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->setMeasuredDimension(II)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->getLeadingGap(I)I

    move-result v11

    const/high16 v18, 0x40000000

    move/from16 v0, v18

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileTitle:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileSubtitle:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileTitle:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v18

    sub-int v18, v11, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v19

    sub-int v9, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v18, v0

    const/high16 v19, -0x80000000

    move/from16 v0, v19

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileCount()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mDocs:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mDocs:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getAspectRatio(I)F

    move-result v18

    const v19, 0x3fb872b0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_2

    const/4 v8, 0x1

    :cond_1
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f400000

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileSubtitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileFollowButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getMeasuredHeight()I

    move-result v19

    add-int v10, v18, v19

    if-eqz v8, :cond_3

    int-to-float v0, v3

    move/from16 v18, v0

    const v19, 0x3f59999a

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3e800000

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v4, v18, v19

    :goto_2
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->mProfileCoverImage:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v18, v0

    const/high16 v19, 0x40000000

    move/from16 v0, v19

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/google/android/finsky/layout/FifeImageView;->measure(II)V

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3e800000

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v18, v18, v13

    int-to-float v0, v3

    move/from16 v19, v0

    const v20, 0x3e199998

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v15, v18, v19

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_3
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3e800000

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    int-to-float v0, v3

    move/from16 v19, v0

    const v20, 0x3f59999a

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v4, v18, v19

    goto :goto_2
.end method
