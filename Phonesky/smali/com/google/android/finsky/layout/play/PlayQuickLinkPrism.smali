.class public Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;
.super Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;
.source "PlayQuickLinkPrism.java"


# instance fields
.field private final mPrismPaintBlack:Landroid/graphics/Paint;

.field private final mPrismPaintWhite:Landroid/graphics/Paint;

.field private final mPrismPathBlack:Landroid/graphics/Path;

.field private final mPrismPathWhite:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPaintWhite:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPaintWhite:Landroid/graphics/Paint;

    const v2, 0x7f070051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPaintWhite:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPaintBlack:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPaintBlack:Landroid/graphics/Paint;

    const v2, 0x7f070052

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPaintBlack:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPathWhite:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPathBlack:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/protos/Browse$QuickLink;ILcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 1

    invoke-super/range {p0 .. p6}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->bind(Lcom/google/android/finsky/protos/Browse$QuickLink;ILcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget v0, p1, Lcom/google/android/finsky/protos/Browse$QuickLink;->backendId:I

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getQuickLinkPrismBackground(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->setBackgroundResource(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->getPaddingRight()I

    move-result v2

    sub-int v6, v0, v3

    sub-int v4, v6, v1

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPathWhite:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPathWhite:Landroid/graphics/Path;

    sub-int v7, v5, v2

    sub-int/2addr v7, v4

    int-to-float v7, v7

    int-to-float v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPathWhite:Landroid/graphics/Path;

    sub-int v7, v5, v2

    int-to-float v7, v7

    int-to-float v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPathWhite:Landroid/graphics/Path;

    sub-int v7, v5, v2

    int-to-float v7, v7

    sub-int v8, v0, v1

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPathWhite:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPathWhite:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPathBlack:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPathBlack:Landroid/graphics/Path;

    sub-int v7, v5, v2

    sub-int/2addr v7, v4

    int-to-float v7, v7

    sub-int v8, v0, v1

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPathBlack:Landroid/graphics/Path;

    sub-int v7, v5, v2

    int-to-float v7, v7

    sub-int v8, v0, v1

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPathBlack:Landroid/graphics/Path;

    sub-int v7, v5, v2

    int-to-float v7, v7

    int-to-float v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPathBlack:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPathBlack:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;->mPrismPaintBlack:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
