.class public Lcom/google/android/finsky/utils/PlayUtils;
.super Ljava/lang/Object;
.source "PlayUtils.java"


# static fields
.field private static sTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/PlayUtils;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static findHighestPriorityReason(Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;)Lcom/google/android/finsky/protos/DocumentV2$Reason;
    .locals 1
    .param p0    # Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/PlayUtils;->findHighestPriorityReason(Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;Lcom/google/android/finsky/protos/DocumentV2$Reason;)Lcom/google/android/finsky/protos/DocumentV2$Reason;

    move-result-object v0

    return-object v0
.end method

.method public static findHighestPriorityReason(Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;Lcom/google/android/finsky/protos/DocumentV2$Reason;)Lcom/google/android/finsky/protos/DocumentV2$Reason;
    .locals 4
    .param p0    # Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;
    .param p1    # Lcom/google/android/finsky/protos/DocumentV2$Reason;

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;->reason:[Lcom/google/android/finsky/protos/DocumentV2$Reason;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;->reason:[Lcom/google/android/finsky/protos/DocumentV2$Reason;

    aget-object v2, v3, v1

    if-ne v2, p1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, v2, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonReview:Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;

    if-eqz v3, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonPlusProfiles:Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

    if-eqz v3, :cond_5

    move-object v0, v2

    goto :goto_2

    :cond_5
    iget-object v3, v2, Lcom/google/android/finsky/protos/DocumentV2$Reason;->descriptionHtml:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz v0, :cond_6

    iget-object v3, v0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonPlusProfiles:Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

    if-nez v3, :cond_2

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

.method public static getFeaturedGridColumnCount(Landroid/content/res/Resources;D)I
    .locals 4
    .param p0    # Landroid/content/res/Resources;
    .param p1    # D

    const v2, 0x7f0a0007

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const v2, 0x7f0b005b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v2, v2

    div-int/2addr v2, v0

    const/4 v3, 0x6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const v2, 0x7f0d000b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_0
.end method

.method public static getFillColor(Lcom/google/android/finsky/protos/Doc$Image;I)I
    .locals 5
    .param p0    # Lcom/google/android/finsky/protos/Doc$Image;
    .param p1    # I

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Image;->fillColorRgb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->fillColorRgb:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    :cond_0
    return p1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/android/finsky/api/DfeApiConfig;->showStagingData:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad fill color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static getItalicSafeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegularGridColumnCount(Landroid/content/res/Resources;)I
    .locals 4
    .param p0    # Landroid/content/res/Resources;

    const v2, 0x7f0a0007

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const v2, 0x7f0b005b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int v2, v1, v0

    const/4 v3, 0x6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const v2, 0x7f0d000c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_0
.end method

.method public static getStreamQuickLinkColumnCount(Landroid/content/res/Resources;II)I
    .locals 10
    .param p0    # Landroid/content/res/Resources;
    .param p1    # I
    .param p2    # I

    const/4 v9, 0x2

    const/4 v8, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L

    invoke-static {p0, v6, v7}, Lcom/google/android/finsky/utils/PlayUtils;->getFeaturedGridColumnCount(Landroid/content/res/Resources;D)I

    move-result v0

    if-le p1, v0, :cond_2

    move v3, v0

    :goto_0
    rem-int v1, p1, v3

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return v3

    :cond_1
    sub-int v5, v3, v1

    if-le v5, v8, :cond_0

    if-le v3, v9, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    add-int v4, p1, p2

    if-ne v4, v8, :cond_3

    if-ne v0, v9, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    int-to-float v6, v0

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1
.end method

.method public static getTextColor(Lcom/google/android/finsky/protos/DocumentV2$NextBanner;I)I
    .locals 5
    .param p0    # Lcom/google/android/finsky/protos/DocumentV2$NextBanner;
    .param p1    # I

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$NextBanner;->colorTextArgb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$NextBanner;->colorTextArgb:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    :cond_0
    return p1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/android/finsky/api/DfeApiConfig;->showStagingData:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad text color: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static hasReasons(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/api/model/Document;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSuggestionReasons()Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSuggestionReasons()Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;->reason:[Lcom/google/android/finsky/protos/DocumentV2$Reason;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDismissable(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/api/model/Document;

    invoke-static {p0}, Lcom/google/android/finsky/utils/PlayUtils;->hasReasons(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasNeutralDismissal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVisibleOnScreen(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;

    sget-object v0, Lcom/google/android/finsky/utils/PlayUtils;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public static removeClusterFromStream(Lcom/google/android/finsky/layout/play/PlayCardClusterView;Lcom/google/android/finsky/adapters/OnCollapsedListener;)V
    .locals 4
    .param p0    # Lcom/google/android/finsky/layout/play/PlayCardClusterView;
    .param p1    # Lcom/google/android/finsky/adapters/OnCollapsedListener;

    sget-boolean v0, Lcom/google/android/finsky/layout/play/PlayListView;->ENABLE_ANIMATION:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/utils/PlayUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/utils/PlayUtils$1;-><init>(Lcom/google/android/finsky/layout/play/PlayCardClusterView;Lcom/google/android/finsky/adapters/OnCollapsedListener;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static sendAccessibilityEventWithText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/view/View;

    const-string v4, "accessibility"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    const/16 v2, 0x4000

    :goto_1
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    if-eqz p2, :cond_1

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public static setErrorOnTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0    # Landroid/widget/TextView;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090366

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lcom/google/android/finsky/utils/PlayUtils;->sendAccessibilityEventWithText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
