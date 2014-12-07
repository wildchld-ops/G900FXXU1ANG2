.class public Lcom/google/android/finsky/layout/play/PlayCardViewSuggestionOverlay;
.super Landroid/view/View;
.source "PlayCardViewSuggestionOverlay.java"


# instance fields
.field private final mOverlayDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewSuggestionOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewSuggestionOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewSuggestionOverlay;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewSuggestionOverlay;->setBackgroundColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewSuggestionOverlay;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/high16 v9, 0x3f800000

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewSuggestionOverlay;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewSuggestionOverlay;->getHeight()I

    move-result v0

    iget-object v11, p0, Lcom/google/android/finsky/layout/play/PlayCardViewSuggestionOverlay;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v11, p0, Lcom/google/android/finsky/layout/play/PlayCardViewSuggestionOverlay;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-gt v3, v10, :cond_0

    move v8, v9

    :goto_0
    if-gt v2, v0, :cond_1

    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    int-to-float v11, v3

    mul-float/2addr v11, v7

    float-to-int v4, v11

    int-to-float v11, v2

    mul-float/2addr v11, v7

    float-to-int v1, v11

    sub-int v11, v10, v4

    div-int/lit8 v5, v11, 0x2

    sub-int v11, v0, v1

    div-int/lit8 v6, v11, 0x2

    iget-object v11, p0, Lcom/google/android/finsky/layout/play/PlayCardViewSuggestionOverlay;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    add-int v12, v5, v4

    add-int v13, v6, v1

    invoke-virtual {v11, v5, v6, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v11, p0, Lcom/google/android/finsky/layout/play/PlayCardViewSuggestionOverlay;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    int-to-float v11, v10

    int-to-float v12, v3

    div-float v8, v11, v12

    goto :goto_0

    :cond_1
    int-to-float v11, v0

    int-to-float v12, v2

    div-float v9, v11, v12

    goto :goto_1
.end method
