.class public Landroid/support/v4/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;,
        Landroid/support/v4/app/ActionBarDrawerToggle$SliderAnimationListener;,
        Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;,
        Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplHC;,
        Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplBase;,
        Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;,
        Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;,
        Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation


# static fields
.field private static final ID_HOME:I = 0x102002c

.field private static final IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;

.field private static final SLIDE_LEFT_ANIMATION_DURATION:I = 0xc8

.field private static final SLIDE_RIGHT_ANIMATION_DURATION:I = 0x12c

.field private static TAG:Ljava/lang/String; = null

.field private static final TOGGLE_DRAWABLE_OFFSET:F = 0.33333334f

.field private static sAccelDecelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private static sOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field private mDrawerImage:Landroid/graphics/drawable/Drawable;

.field private final mDrawerImageResource:I

.field private mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private final mOpenDrawerContentDescRes:I

.field private mSetIndicatorInfo:Ljava/lang/Object;

.field private mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

.field private mThemeImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplHC;

    invoke-direct {v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplHC;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle$1;)V

    sput-object v1, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    :goto_0
    const-class v1, Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/ActionBarDrawerToggle;->TAG:Ljava/lang/String;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40800000

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v1, Landroid/support/v4/app/ActionBarDrawerToggle;->sOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v1, Landroid/support/v4/app/ActionBarDrawerToggle;->sAccelDecelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-void

    :cond_0
    new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplBase;

    invoke-direct {v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplBase;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle$1;)V

    sput-object v1, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    instance-of v0, p1, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    :goto_0
    iput-object p2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iput p3, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageResource:I

    iput p4, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    iput p5, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mThemeImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;Landroid/support/v4/app/ActionBarDrawerToggle$1;)V

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    const v1, 0x3eaaaaab

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setOffset(F)V

    return-void

    :cond_0
    iput-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0
.end method

.method static synthetic access$300()Landroid/view/animation/OvershootInterpolator;
    .locals 1

    sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->sOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/app/ActionBarDrawerToggle;)Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v4/app/ActionBarDrawerToggle;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v4/app/ActionBarDrawerToggle;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public animateSlider()V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->getPosition()F

    move-result v2

    const/high16 v0, 0x3f800000

    cmpl-float v0, v2, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;

    const/high16 v3, -0x40800000

    sget-object v4, Landroid/support/v4/app/ActionBarDrawerToggle;->sAccelDecelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const/16 v5, 0xc8

    new-instance v6, Landroid/support/v4/app/ActionBarDrawerToggle$1;

    invoke-direct {v6, p0, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$1;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;F)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;FFLandroid/view/animation/Interpolator;ILandroid/support/v4/app/ActionBarDrawerToggle$SliderAnimationListener;)V

    goto :goto_0
.end method

.method getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mThemeImage:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 4

    const/high16 v3, 0x40000000

    const/high16 v2, 0x3f000000

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    invoke-virtual {v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->getPosition()F

    move-result v0

    cmpl-float v1, p2, v2

    if-lez v1, :cond_0

    const/4 v1, 0x0

    sub-float v2, p2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    return-void

    :cond_0
    mul-float v1, p2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const v2, 0x800003

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setActionBarDescription(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, p1}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;->setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    goto :goto_0
.end method

.method setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;->setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    :goto_1
    iput-boolean p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mThemeImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method public syncState()V
    .locals 3

    const v2, 0x800003

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_1
.end method
