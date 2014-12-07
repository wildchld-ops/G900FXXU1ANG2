.class public Lcom/android/launcher2/HomeMagazineSoftKey;
.super Landroid/widget/FrameLayout;
.source "HomeMagazineSoftKey.java"


# static fields
.field public static final TAG_APPS:Ljava/lang/String; = "Apps"

.field public static final TAG_SEARCH:Ljava/lang/String; = "Search"

.field public static final TAG_VOICE_SEARCH:Ljava/lang/String; = "VoiceSearch"


# instance fields
.field private mAppsBtn:Landroid/widget/ImageButton;

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mSearchBtn:Landroid/widget/ImageButton;

.field private mVoiceSearchBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/HomeMagazineSoftKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HomeMagazineSoftKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomeMagazineSoftKey;)Landroid/widget/ImageButton;
    .locals 1
    .param p0    # Lcom/android/launcher2/HomeMagazineSoftKey;

    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeMagazineSoftKey;)Lcom/android/launcher2/HomeView;
    .locals 1
    .param p0    # Lcom/android/launcher2/HomeMagazineSoftKey;

    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method


# virtual methods
.method public getFirstIcon()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextButton(Ljava/lang/String;I)Landroid/widget/ImageButton;
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v2, 0x1

    const/4 v1, -0x1

    const-string v0, "Search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mVoiceSearchBtn:Landroid/widget/ImageButton;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "VoiceSearch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p2, v2, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_1
    const-string v0, "Apps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mVoiceSearchBtn:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_2
    const-string v0, "VoiceSearch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, v1, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mSearchBtn:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher2/HomeView;)V
    .locals 4
    .param p1    # Lcom/android/launcher2/HomeView;

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mHomeView:Lcom/android/launcher2/HomeView;

    const v1, 0x7f080060

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    const v1, 0x7f08005f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/launcher2/HomeMagazineSoftKey$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeMagazineSoftKey$1;-><init>(Lcom/android/launcher2/HomeMagazineSoftKey;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/android/launcher2/HomeMagazineSoftKey$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeMagazineSoftKey$2;-><init>(Lcom/android/launcher2/HomeMagazineSoftKey;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/launcher2/HomeMagazineSoftKey$3;

    invoke-direct {v2, p0}, Lcom/android/launcher2/HomeMagazineSoftKey$3;-><init>(Lcom/android/launcher2/HomeMagazineSoftKey;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08005d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mSearchBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mSearchBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/launcher2/HomeMagazineSoftKey$4;

    invoke-direct {v2, p0}, Lcom/android/launcher2/HomeMagazineSoftKey$4;-><init>(Lcom/android/launcher2/HomeMagazineSoftKey;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08005e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mVoiceSearchBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mVoiceSearchBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/launcher2/HomeMagazineSoftKey$5;

    invoke-direct {v2, p0}, Lcom/android/launcher2/HomeMagazineSoftKey$5;-><init>(Lcom/android/launcher2/HomeMagazineSoftKey;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    const-string v2, "Apps"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mSearchBtn:Landroid/widget/ImageButton;

    const-string v2, "Search"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mSearchBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mVoiceSearchBtn:Landroid/widget/ImageButton;

    const-string v2, "VoiceSearch"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mVoiceSearchBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    sget-object v2, Lcom/android/launcher2/FocusHelper;->HOME_MAGAZINE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mSearchBtn:Landroid/widget/ImageButton;

    sget-object v2, Lcom/android/launcher2/FocusHelper;->HOME_MAGAZINE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mVoiceSearchBtn:Landroid/widget/ImageButton;

    sget-object v2, Lcom/android/launcher2/FocusHelper;->HOME_MAGAZINE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
